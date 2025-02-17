local SQL, NW = Ambi.SQL, Ambi.NW
local Player = FindMetaTable( 'Player' )
local DB = 'surv_players'

function Player:SetClothSkin( sSkin )
    if not util.IsValidModel( sSkin ) then return end

    self:SetModel( sSkin )
    SQL.Update( DB, 'Skin', sSkin, 'SteamID', self:SteamID() )
end