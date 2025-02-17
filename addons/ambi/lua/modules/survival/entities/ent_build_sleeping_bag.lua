local Ents, NW, C = Ambi.RegEntity, Ambi.NW, Ambi.General.Global.Colors
local ENT = {}

ENT.Class       = 'survival_build_sleeping_bag'
ENT.Type	    = 'anim'

ENT.PrintName	= '[Build] Sleeping Bag'
ENT.Author		= 'Ambi'
ENT.Category	= 'Survival'
ENT.Spawnable   = true

ENT.Stats = {
    type = 'Entity',
    module = 'Survival',
    model = 'models/galaxy/rust/sleepingbag.mdl',
    date = '21.07.2021 18:50:32'
}

Ents.Register( ENT.Class, 'ents', ENT )

if CLIENT then
    local C, GUI, Draw, UI = Ambi.Packages.Out( '@d' )

    ENT.RenderGroup = Ambi.General.Global.RENDER

    function ENT:DrawTranslucent()
        self:DrawShadow( false )

        if ( self:GetNWString( 'SteamID' ) ~= LocalPlayer():SteamID() ) then return end
        if ( LocalPlayer():GetPos():Distance( self:GetPos() ) > 800 ) then return end

        local rot = ( self:GetPos() - EyePos() ):Angle().yaw - 90
        local pos = self:GetPos() + Vector( 0, 0, 15 )

        cam.Start3D2D( pos, Angle( 0, rot, 90 ), 0.1 )
            draw.SimpleTextOutlined( 'Спавн', UI.SafeFont( '44 Arial' ), 4, 0, C.ABS_WHITE, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER, 1, C.ABS_BLACK )
        cam.End3D2D()
    end
    
    return Ents.Register( ENT.Class, 'ents', ENT )
end 

function ENT:Initialize()
    Ents.Initialize( self, ENT.Stats.model )
    Ents.Physics( self )

    self.steamid = nil
end

Ambi.Survival.spawn_points_sleeping_bag = Ambi.Survival.spawn_points_sleeping_bag or {}

function ENT:SetSteamID( sSteamID )
    self:SetNWString( 'SteamID', sSteamID )
    self.steamid = sSteamID
    Ambi.Survival.spawn_points_sleeping_bag[ sSteamID ] = self -- если человек меняет спальник, нужно в старом удалять стим ид
end

function ENT:Use( ePly )
    if not self.steamid and IsValid( ePly ) and ePly:IsPlayer() then self:SetSteamID( ePly:SteamID() ) end
end

function ENT:OnTakeDamage( damageInfo )
    self:SetHealth( self:Health() - damageInfo:GetDamage() )

    if ( self:Health() <= 0 ) then self:Remove() return end
end

Ents.Register( ENT.Class, 'ents', ENT )

hook.Add( 'PlayerSpawn', 'Ambi.Survival.SpawnOnSleepingBag', function( ePly )
    timer.Simple( 0.35, function()
        local bag = Ambi.Survival.spawn_points_sleeping_bag[ ePly:SteamID() ]
        if bag then ePly:SetPos( bag:GetPos() + Vector( 0, 0, 72 ) ) end
    end )
end )

hook.Add( 'EntityRemoved', 'Ambi.Survival.RemoveSleepingBag', function( eObj )
    if ( eObj:GetClass() == ENT.Class ) and eObj.steamid then
        Ambi.Survival.spawn_points_sleeping_bag[ eObj.steamid ] = nil
    end
end )