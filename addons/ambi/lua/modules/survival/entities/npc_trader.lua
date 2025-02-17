local C, Ents = Ambi.Packages.Out( 'colors, RegEntity' )

local ENT = {}

ENT.Class       = 'survival_trader'
ENT.Base	    = 'base_ai'
ENT.Type	    = 'ai'

ENT.PrintName	= 'NPC Trader'
ENT.Author		= 'Ambi'
ENT.Category	= 'Survival'
ENT.Spawnable   = true

ENT.Stats = {
    type = 'NPC',
    model = 'models/eli.mdl',
    module = 'Survival',
    date = '25.06.2022 04:57'
}

Ents.Register( ENT.Class, 'ents', ENT )

if CLIENT then
    local C, GUI, Draw, UI = Ambi.Packages.Out( '@d' )
    
    ENT.RenderGroup = RENDERGROUP_BOTH

    function ENT:DrawTranslucent()
        Ents.Draw( self, false )

        if ( LocalPlayer():GetPos():Distance( self:GetPos() ) > 800 ) then return end

        local rot = ( self:GetPos() - EyePos() ):Angle().yaw - 90
        local head_bone = self:LookupBone( 'ValveBiped.Bip01_Head1' )
        local head = self:GetBonePosition( head_bone )

        cam.Start3D2D( head + Vector( 0, 0, 12 ), Angle( 0, rot, 90 ), 0.1 )
            draw.SimpleTextOutlined( 'Продавец', UI.SafeFont( '26 Ambi' ), 4, 0, C.ABS_WHITE, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER, 1, C.ABS_BLACK )
        cam.End3D2D()
    end

    return Ents.Register( ENT.Class, 'ents', ENT )
end

function ENT:Initialize()
    Ents.Initialize( self, self.Stats.model )
    Ents.Hull( self )
    Ents.Physics( self, MOVETYPE_NONE, SOLID_BBOX, COLLISION_GROUP_PLAYER, false, false, true )
    Ents.Capability( self, CAP_ANIMATEDFACE )
    Ents.Capability( self, CAP_TURN_HEAD )
end

function ENT:Use( ePly )
    if not Ambi.Survival.traders[ self ] then ePly:ChatPrint( 'Данный продавец ничего не продаёт!' ) return end

    net.Start( 'ambi_survival_open_trader_menu' )
        net.WriteEntity( self )
    net.Send( ePly )
end