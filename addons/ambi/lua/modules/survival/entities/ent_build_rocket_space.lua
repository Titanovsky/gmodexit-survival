local Ents, NW, C = Ambi.RegEntity, Ambi.NW, Ambi.General.Global.Colors
local ENT = {}

ENT.Class       = 'survival_build_rocket_space'
ENT.Type	    = 'anim'

ENT.PrintName	= '[Build] Rocket Space'
ENT.Author		= 'Ambi'
ENT.Category	= 'Survival'
ENT.Spawnable   = true

ENT.Stats = {
    type = 'Entity',
    module = 'Survival',
    model = 'models/props_phx/rocket1.mdl',
    date = '02.08.2021 17:14:46'
}

Ents.Register( ENT.Class, 'ents', ENT )

if CLIENT then
    local C, GUI, Draw, UI = Ambi.Packages.Out( '@d' )

    ENT.RenderGroup = Ambi.General.Global.RENDER

    function ENT:DrawTranslucent()
        self:DrawShadow( false )
    end
    
    return Ents.Register( ENT.Class, 'ents', ENT )
end 

function ENT:Initialize()
    Ents.Initialize( self, ENT.Stats.model )
    Ents.Physics( self )
end

local POS = Vector( 1525, -11201, -6367 )
function ENT:Use( ePly )
    if IsValid( ePly ) and ePly:IsPlayer() and ePly:Alive() and ePly:GetNWBool( 'HasSuitSpace' ) then
        ePly:ChatPrint(1)
        ePly.return_space_rocket_pos = ePly:GetPos()
        ePly:SetPos( POS )
    end
end

function ENT:OnTakeDamage( damageInfo )
    self:SetHealth( self:Health() - damageInfo:GetDamage() )

    if ( self:Health() <= 0 ) then self:Remove() return end
end

Ents.Register( ENT.Class, 'ents', ENT )