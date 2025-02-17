local Ents, NW, C = Ambi.RegEntity, Ambi.NW, Ambi.General.Global.Colors
local ENT = {}

ENT.Class       = 'survival_build_workbench'
ENT.Type	    = 'anim'

ENT.PrintName	= '[Build] Workbench'
ENT.Author		= 'Ambi'
ENT.Category	= 'Survival'
ENT.Spawnable   = true

ENT.Stats = {
    type = 'Entity',
    module = 'Survival',
    model = 'models/props_canal/winch02.mdl',
    date = '28.06.2021 13:36:44'
}

Ents.Register( ENT.Class, 'ents', ENT )

if CLIENT then
    local C, GUI, Draw, UI = Ambi.Packages.Out( '@d' )

    ENT.RenderGroup = Ambi.General.Global.RENDER

    function ENT:DrawTranslucent()
        self:DrawShadow( false )

        if not self:GetNWBool( 'IsUpdating' ) then return end
        if ( LocalPlayer():GetPos():Distance( self:GetPos() ) > 800 ) then return end

        local rot = ( self:GetPos() - EyePos() ):Angle().yaw - 90
        local pos = self:GetPos() + Vector( 0, 0, self:GetModelRadius() )

        cam.Start3D2D( pos + Vector( 0, 0, 6 ), Angle( 0, rot, 90 ), 0.1 )
            draw.SimpleTextOutlined( 'Обновляем...', UI.SafeFont( '64 Nexa Script Light' ), 4, 0, C.AMBI, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER, 1, C.ABS_BLACK )
        cam.End3D2D()
    end
    
    return Ents.Register( ENT.Class, 'ents', ENT )
end 

function ENT:Initialize()
    Ents.Initialize( self, ENT.Stats.model )
    Ents.Physics( self )

    self:SetNWInt( 'Level', 1 )
    self.level = 1

    self:SetNWString( 'Building', 'workbench' )
end

function ENT:Use( ePly )
    if IsValid( ePly ) and ePly:IsPlayer() and ePly:Alive() and not self:GetNWBool( 'IsUpdating' ) then
        net.Start( 'amb_survival_show_building' )
            net.WriteEntity( self )
        net.Send( ePly )
    end
end

function ENT:SetLevel( nLevel )
    if ( nLevel > 6 ) then return end

    self:SetNWInt( 'Level', nLevel )
    self.level = nLevel

    local type = AMB.Survival.buildings_updates[ self:GetNWString( 'Building' ) ]
    if not type then return end

    local tier = type[ nLevel ]
    if not tier then return end

    if tier.hp then self:SetMaxHealth( tier.hp ) end
    if tier.model then self:SetModel( tier.model ) end
    if tier.color then self:SetColor( tier.color ) end
    if tier.mat then self:SetMaterial( tier.mat ) end

    Ents.Physics( self )
end

local RAND_SOUNDS = {
    'plats/tram_motor_start.wav',
    'ambient/materials/wood_creak1.wav',
    'ambient/materials/wood_creak2.wav',
    'ambient/materials/wood_creak3.wav',
    'doors/door_locked2.wav',
    'physics/metal/metal_barrel_impact_hard1.wav',
    'physics/metal/metal_barrel_impact_hard2.wav',
    'physics/metal/metal_barrel_impact_soft1.wav',
    'physics/metal/metal_barrel_impact_soft2.wav',
    'physics/metal/metal_box_break2.wav'
}

function ENT:UpdatingLoop()
    if not self:GetNWBool( 'IsUpdating' ) then return end
    
    self.col = not self.col

    local col = self.col and C.AMBI_GREEN or C.AMBI_RED
    self:SetColor( col )
    self:EmitSound( table.Random( RAND_SOUNDS ), 75, 100, 0.75, CHAN_AUTO )

    local effectdata = EffectData()
    effectdata:SetOrigin( self:GetPos() )
    util.Effect( 'ManhackSparks', effectdata )

    timer.Simple( math.random( 2, 8 ), function() self:UpdatingLoop() end )
end

function ENT:Update()
    local type = Ambi.Survival.buildings_updates[ self:GetNWString( 'Building' ) ]
    if not type then return end

    local lvl = self:GetNWInt( 'Level' )
    if ( lvl >= 6 ) then return end

    self:SetNWInt( 'Level', lvl + 1 )
    self.level = lvl + 1

    local return_hp, return_color = self:Health(), self:GetColor()
    
    self:SetHealth( 9000 )
    self:SetNWBool( 'IsUpdating', true )
    self:EmitSound( 'UI/buttonclickrelease.wav' )
    self:UpdatingLoop()

    timer.Simple( type[ lvl ].time or 0, function()
        if not IsValid( self ) then return end

        self:SetNWBool( 'IsUpdating', false )
        self:EmitSound( 'UI/buttonclick.wav' )
        self:SetHealth( return_hp )
        if type[ lvl ].hp then self:SetMaxHealth( type[ lvl ].hp ) end
        if type[ lvl ].model then self:SetModel( type[ lvl ].model ) end
        if type[ lvl ].color then self:SetColor( type[ lvl ].color ) else self:SetColor( return_color ) end
        if type[ lvl ].mat then self:SetMaterial( type[ lvl ].mat ) end
        Ents.Physics( self )
    end )
end

function ENT:OnTakeDamage( damageInfo )
    self:SetHealth( self:Health() - damageInfo:GetDamage() )

    if ( self:Health() <= 0 ) then self:Remove() return end
end

Ents.Register( ENT.Class, 'ents', ENT )