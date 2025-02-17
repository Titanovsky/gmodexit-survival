local Ents, NW, C = Ambi.RegEntity, Ambi.NW, Ambi.General.Global.Colors
local ENT = {}

ENT.Class       = 'survival_lair'
ENT.Type	    = 'anim'

ENT.PrintName	= 'Lair'
ENT.Author		= 'Ambi'
ENT.Category	= 'Survival'
ENT.Spawnable   = true

ENT.Stats = {
    type = 'Entity',
    module = 'Survival',
    model = 'models/props_canal/winch02.mdl',
    date = '29.06.2021 10:52:44'
}

Ents.Register( ENT.Class, 'ents', ENT )

if CLIENT then
    ENT.RenderGroup = AMB.Ambition.Global.RENDER

    function ENT:DrawTranslucent()
        self:DrawShadow( false )
    end
    
    return Ents.Register( ENT.Class, 'ents', ENT )
end 

function ENT:Initialize()
    Ents.Initialize( self, ENT.Stats.model )
    Ents.Physics( self )

    self.npcs = 0
    self.npcs_max = 0
end


Ents.Register( ENT.Class, 'ents', ENT )