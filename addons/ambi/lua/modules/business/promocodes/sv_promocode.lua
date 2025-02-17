Ambi.Business.Promocode = Ambi.Business.Promocode or {}
Ambi.Business.Promocode.promocodes = Ambi.Business.Promocode.promocodes or {}

local SQL, NW, C, SND = Ambi.SQL, Ambi.NW, Ambi.General.Global.Colors, Ambi.General.Global.Sounds

local DB_PROMOCODES = SQL.CreateTable( 'ambi_business_promocodes', 'Promocode, SteamID, Players' )
local DB_PLAYERS = SQL.CreateTable( 'ambi_business_promocodes_players', 'SteamID, Nick, Promocode, IsActivated' )

-- --------------------------------------------------------------------------------------------------------------------------------------------
function Ambi.Business.Promocode.Add( sCode, sSteamID )
    sCode = tostring( string.lower( sCode ) )

    for k, v in ipairs( Ambi.Business.Promocode.promocodes ) do
        if ( v.code == sCode ) then return end
    end

    Ambi.Business.Promocode.promocodes[ #Ambi.Business.Promocode.promocodes + 1 ] = {
        code = sCode,
        steamid = sSteamID or '',
        players = 0
    }

    SQL.Insert( DB_PROMOCODES, 'Promocode, SteamID, Players', '%s, %s, %i', sCode, sSteamID, 0 )

    print( '[Bussines] Added Promocode: '..sCode )
end

-- --------------------------------------------------------------------------------------------------------------------------------------------
local PLAYER = FindMetaTable( 'Player' ) 

function PLAYER:SetPromocode( sCode )
    for k, v in ipairs( Ambi.Business.Promocode.promocodes ) do
        if ( string.lower( v.code ) == string.lower( sCode ) ) then
            if ( self:SteamID() == v.steamid ) then self:ChatSend( '~RED~ [•] ~WHITE~ Нельзя использовать собственный промокод!' ) return end
            
            self.promocode = sCode
            self:ChatSend( '~BLUE~ [•] ~WHITE~ Вы ввели  ~GREEN~ действительный ~WHITE~ промокод!' )
            self:ChatSend( '~BLUE~ [•] ~WHITE~ Вы и тот человек, кто дал Вам промокод получите бонус на 5 уровне' )
            self:ChatSend( '~BLUE~ [•] ~WHITE~ На 15 уровне также будет бонус!' )

            local ply = player.GetBySteamID( v.steamid )
            if IsValid( ply ) then 
                ply:ChatSend( '~BLUE~ [•] ~WHITE~ Ваш промокод ввёл ~BLUE~ '..self:Nick() ) 
                ply:ChatSend( '~BLUE~ [•] ~WHITE~ Вы получите бонус если будете в онлайне, когда человек получит 5 уровень!' )
            end

            local players = SQL.Select( DB_PROMOCODES, 'Players', 'Promocode', v.code ) or 0
            SQL.Update( DB_PROMOCODES, 'Players', tonumber( players ) + 1, 'Promocode', v.code )
            SQL.Insert( DB_PLAYERS, 'SteamID, Nick, Promocode, IsActivated', '%s, %s, %s, %s', self:SteamID(), self:Nick(), string.lower( sCode ), '-' )

            return
        end
    end

    self:ChatSend( C.AMBI_RED, '[•] ', C.ABS_WHITE, 'Промокод не сработал' )
end

function PLAYER:ActivatePromocode()
    if self.is_activate_promocode then return end

    local code = self.promocode
    if not code then return end

    self.is_activate_promocode = true
    SQL.Update( DB_PLAYERS, 'IsActivated', '+', 'SteamID', self:SteamID() )

    hook.Call( 'Ambi.Business.Promocode.Activate', nil, self, code )
end

function PLAYER:GetPromocode()
    return self.promocode
end

function PLAYER:GetActivatedPromocode()
    return self.is_activate_promocode
end

-- --------------------------------------------------------------------------------------------------------------------------------------------
hook.Add( 'PostGamemodeLoaded', 'Ambi.Business.Promocode.SetPromocodes', function()
    local db = SQL.SelectAll( DB_PROMOCODES )
    if not db or ( #db == 0 ) then return end
    
    for k, v in pairs( db ) do
        Ambi.Business.Promocode.promocodes[ #Ambi.Business.Promocode.promocodes + 1 ] = {
            code = v.Promocode,
            steamid = v.SteamID,
            players = tonumber( v.Players )
        }
    end
end )

hook.Add( 'PlayerInitialSpawn', 'Ambi.Business.Promocode.SetPromocode', function( ePly )
    local db = SQL.SelectAll( DB_PLAYERS )
    if not db or ( #db == 0 ) then return end

    for k, v in pairs( db ) do
        if ( tonumber( v.SteamID ) == ePly:SteamID() ) then ePly.promocode = v.Promocode end

        if ( v.IsActivated == '+' ) then ePly.is_activate_promocode = true end
    end
end )

-- --------------------------------------------------------------------------------------------------------------------------------------------
net.AddString( 'ambi_business_promocode' )
net.Receive( 'ambi_business_promocode', function( _, ePly )
    local promocode = net.ReadString()
    if ePly.promocode then return end

    ePly:SetPromocode( promocode )
end )