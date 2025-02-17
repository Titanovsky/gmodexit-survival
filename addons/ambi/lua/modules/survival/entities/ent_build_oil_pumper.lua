local Ents, NW, C = Ambi.RegEntity, Ambi.NW, Ambi.General.Global.Colors
local ENT = {}

ENT.Class       = 'survival_build_oil_pumper'
ENT.Type	    = 'anim'

ENT.PrintName	= '[Build] Oil Pumper'
ENT.Author		= 'Ambi'
ENT.Category	= 'Survival'
ENT.Spawnable   = true

ENT.Stats = {
    type = 'Entity',
    module = 'Survival',
    model = 'models/props_wasteland/horizontalcoolingtank04.mdl',
    date = '08.06.2021 09:50:21'
}

Ents.Register( ENT.Class, 'ents', ENT )

if CLIENT then
    local C, GUI, Draw, UI = Ambi.Packages.Out( '@d' )
    ENT.RenderGroup = Ambi.General.Global.RENDER

    function ENT:DrawTranslucent()
        self:DrawShadow( false )

        if ( LocalPlayer():GetPos():Distance( self:GetPos() ) > 800 ) then return end

        local rot = ( self:GetPos() - EyePos() ):Angle().yaw - 90
        local pos = self:GetPos()
        local ang = self:GetAngles()
	    ang:RotateAroundAxis( ang:Up(), 90 )
        local color = self:GetNWBool( 'Turned' ) and C.AMB_GREEN or C.AMB_RED

        cam.Start3D2D( pos + ang:Up() * 1 + ang:Right() * -15 + ang:Forward() * -48, ang + Angle( 0, -90, 90 ), 0.1 )
            draw.RoundedBox( 4, 0, 0, 400, 140, color )
            draw.RoundedBox( 4, 4, 4, 400 - 8, 140 - 8, C.AMB_BLACK )
            draw.SimpleTextOutlined( 'Нефтекачалка', UI.SafeFont( '48 Ambi' ), 200, 24, C.ABS_WHITE, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER, 1, C.ABS_BLACK )
            draw.SimpleTextOutlined( math.Round( self:GetNWFloat( 'Count' ), 2 )..'L', UI.SafeFont( '32 Ambi' ), 200, 80, C.ABS_WHITE, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER, 1, C.ABS_BLACK )
        cam.End3D2D()
    end
    
    return Ents.Register( ENT.Class, 'ents', ENT )
end 

function ENT:Initialize()
    Ents.Initialize( self, ENT.Stats.model )
    Ents.Physics( self )
    self:SetHealth( 4000 )
    self:SetCount( 0.00 )
    self:Turn( false )
    self:SetNWString( 'Building', 'oil pumper' )
    self:SetNWInt( 'Level', 1 )
end

function ENT:SetLevel( nLevel )
    if ( nLevel > 6 ) then return end

    self:SetNWInt( 'Level', nLevel )
    self.level = nLevel

    local type = Ambi.Survival.buildings_updates[ self:GetNWString( 'Building' ) ]
    if not type then return end

    local tier = type[ nLevel ]
    if not tier then return end

    if tier.hp then self:SetMaxHealth( tier.hp ) end
    if tier.model then self:SetModel( tier.model ) end
    if tier.color then self:SetColor( tier.color ) end
    if tier.mat then self:SetMaterial( tier.mat ) end
    
    Ents.Physics( self )
end

function ENT:MineOil()
    local lvl = self:GetNWInt( 'Level' )
    if ( lvl > 6 ) or ( lvl < 0 ) then return end

    local count = self:GetCount()
    self:SetCount( count + ( math.random( 0.05, 0.25 ) * lvl ) )

    self:SetHealth( self:Health() - math.random( 1, 4 ) )
    if ( self:Health() <= 0 ) then self:Remove() end
end

function ENT:MineLoop()
    if not self:GetNWBool( 'Turned' ) then return end

    timer.Create( 'AmbOilPumperMine'..self:EntIndex(), 55 - 5 * self:GetNWInt( 'Level' ), 1, function()
        if not IsValid( self ) then return end

        self:MineOil()
        self:MineLoop()
    end )
end

function ENT:UpdatingLoop()
    if not self:GetNWBool( 'Turned' ) then return end
    
    self:EmitSound( 'ambient/levels/canals/toxic_slime_gurgle'..math.random( 2, 8 )..'.wav' )

    local effectdata = EffectData()
    effectdata:SetOrigin( self:GetPos() )
    effectdata:SetNormal( Vector( 0, 0, 0 ))
    effectdata:SetScale( 10 )
    util.Effect( 'VortDispel', effectdata )

    timer.Create( 'AmbOilPumperUpdating'..self:EntIndex(), math.random( 2, 4 ), 1, function() 
        if not IsValid( self ) then return end

        self:UpdatingLoop() 
    end )
end

function ENT:Update()
    self:SetLevel( self:GetNWInt( 'Level' ) + 1 )
end

function ENT:Turn( bOn )
    self:SetNWBool( 'Turned', bOn )

    self:UpdatingLoop()
    self:MineLoop()
end

function ENT:SetCount( nCount )
    local count = math.Round( nCount or 1, 2 )
    NW.SetFloat( self, 'Count', count )
end

function ENT:GetCount()
    return NW.GetFloat( self, 'Count' )
end

function ENT:Use( ePly )
    if IsValid( ePly ) and ePly:IsPlayer() and ePly:Alive() then
        net.Start( 'ambi_survival_show_building' )
            net.WriteEntity( self )
        net.Send( ePly )
    end
end

function ENT:OnTakeDamage( damageInfo )
    self:SetHealth( self:Health() - damageInfo:GetDamage() )

    if ( self:Health() <= 0 ) then self:Remove() return end
end

Ents.Register( ENT.Class, 'ents', ENT )