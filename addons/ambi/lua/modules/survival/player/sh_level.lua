local SQL, NW, C = Ambi.SQL, Ambi.NW, Ambi.General.Global.Colors
local Player = FindMetaTable( 'Player' )
local DB = SQL.CreateTable( 'surv_players', 'SteamID, Name, Level, XP, Skin' )

function Player:SetLevel( nLevel )
    if not self.ready_for_skin then return end

    nLevel = nLevel or 1

    NW.SetInt( self, 'Level', nLevel )
    SQL.Update( DB, 'Level', nLevel, 'SteamID', self:SteamID() )

    self:SetXP( 0 )

    hook.Call( '[Ambi.Survival.SetLevel]', nil, self, nLevel )
end

function Player:AddLevel( nLevel )
    nLevel = nLevel or 0

    self:SetLevel( self:GetLevel() + nLevel )
    self:NotifySend( 4, { time = 5, text = '+Level '..nLevel, color = C.AMBI } )
end

function Player:GetLevel()
    return NW.GetInt( self, 'Level' )
end