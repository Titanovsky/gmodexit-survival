local Ents, NW, C = Ambi.RegEntity, Ambi.NW, Ambi.General.Global.Colors
local ENT = {}

ENT.Class       = 'farming_plant'
ENT.Type	    = 'anim'

ENT.PrintName	= 'Растение'
ENT.Author		= 'Ambi'
ENT.Category	= 'Farming'
ENT.Spawnable   = false

ENT.Stats = {
    type = 'Entity',
    module = 'Farming',
    material = 'models/props_foliage/tree_deciduous_01a_trunk',
    color = Color( 127, 95, 0, 255 ),
    model = 'models/hunter/misc/sphere025x025.mdl',
    date = '10.03.2021 10:03:18'
}

Ents.Register( ENT.Class, 'ents', ENT )

if CLIENT then
    local C, GUI, Draw, UI = Ambi.Packages.Out( '@d' )
    
    ENT.RenderGroup = RENDERGROUP_BOTH

    function ENT:DrawTranslucent()
        self:DrawShadow( false )

        if ( LocalPlayer():GetPos():Distance( self:GetPos() ) > 800 ) then return end

        local rot = ( self:GetPos() - EyePos() ):Angle().yaw - 90
        local pos = self:GetPos() + Vector( 0, 0, self:GetModelRadius() )

        cam.Start3D2D( pos + Vector( 0, 0, 4 ), Angle( 0, rot, 90 ), 0.1 )
            draw.SimpleTextOutlined( self:GetNWString( 'Header' ), UI.SafeFont( '46 Ambi' ), 4, 0, self:GetColor(), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER, 1, C.ABS_BLACK )
        cam.End3D2D()
    end
    
    return Ents.Register( ENT.Class, 'ents', ENT )
end 

function ENT:Initialize()
    Ents.Initialize( self, ENT.Stats.model, ENT.Stats.material, ENT.Stats.color )
    Ents.Physics( self )
end

function ENT:SetCount( nCount )
    NW.SetInt( self, 'Count', nCount or 1 )
end

function ENT:SetLevel( nLevel )
end

function ENT:GetCount()
    return NW.GetInt( self, 'Count' )
end

function ENT:OnTakeDamage( damageInfo )
    self:SetHealth( self:Health() - damageInfo:GetDamage() )

    if ( self:Health() <= 0 ) then self:Remove() return end
end

function ENT:Use( ePly )
    if not self.use then return end

    self.use( ePly, self )
    self:Remove()
end

Ents.Register( ENT.Class, 'ents', ENT )