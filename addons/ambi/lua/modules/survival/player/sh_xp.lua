local SQL, NW, C = Ambi.SQL, Ambi.NW, Ambi.General.Global.Colors
local Player = FindMetaTable( 'Player' )
local DB = 'surv_players'

function Player:SetXP( nXP )
    nXP = nXP or 0
    if ( nXP < 0 ) then return end

    NW.SetInt( self, 'XP', nXP )
    SQL.Update( DB, 'XP', nXP, 'SteamID', self:SteamID() )

    if ( self:GetXP() >= self:GetNextXP() ) then
        local remains = self:GetXP() - self:GetNextXP()

        self:AddLevel( 1 )
        self:AddXP( remains )
    end
end

function Player:AddXP( nXP )
    nXP = nXP or 0

    self:SetXP( self:GetXP() + nXP )
    self:NotifySend( 4, { time = 2, text = '+XP '..nXP, color = C.AMBI_PURPLE } )
end

function Player:GetXP()
    return NW.GetInt( self, 'XP' )
end

function Player:GetNextXP()
    return self:GetLevel() * 1000
end