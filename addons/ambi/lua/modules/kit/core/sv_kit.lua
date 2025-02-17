local SQL, SND, C = Ambi.Packages.Out( 'sql, sounds, colors' )
local DB = SQL.CreateTable( 'ambi_kits', 'SteamID TEXT, Kit TEXT, Date NUMBER' )
local PLAYER = FindMetaTable( 'Player' )

-- --------------------------------------------------------------------------------------------------------------------------------------------
local function ShowError( ePly, sError, bShowError )
    if not bShowError then return end

    ePly:NotifySend( 4, { type = 1, color = C.AMBI_ERROR, sound = SND.ERROR, time = 8, text = sError or '' } )
end

-- --------------------------------------------------------------------------------------------------------------------------------------------
function PLAYER:CheckKit( sName, bShowError )
    sName = sName or ''

    local kit = Ambi.Kit.Get( sName )
    if not kit then ShowError( self, 'Набора '..sName..' не существует!', bShowError ) return false end

    local date = sql.QueryValue( 'SELECT Date FROM '..DB..' WHERE Kit = "'..sName..'" AND SteamID = "'..self:SteamID()..'"' )
    if not date then return true end
    date = tonumber( date )

    if kit.once then ShowError( self, 'Набор '..sName..' единоразовый!', bShowError ) return false end
    
    local delay = date + kit.delay
    if ( os.time() < delay ) then ShowError( self, 'Набор будет доступен '..os.date( '%x %X', delay ), bShowError ) return false end

    return true
end

function PLAYER:GiveKit( sName, bNoCheck )
    sName = sName or ''

    local kit = Ambi.Kit.Get( sName )
    if not kit then self:ChatSend( '~RED~ [Kits] ~WHITE~ Набора ~RED~ '..sName..' ~WHITE~ не существует!' ) return end
    if not bNoCheck and not self:CheckKit( sName, true ) then return end

    local result = kit.action( self )
    if ( result == false ) then return end

    self:ChatSend( '~RED~ [Kits] ~WHITE~ Вам выдан набор ~RED~ '..sName )

    local date = sql.QueryValue( 'SELECT Date FROM '..DB..' WHERE Kit = "'..sName..'" AND SteamID = "'..self:SteamID()..'"' )
    if date then
        SQL.UpdateDouble( DB, 'Date', os.time(), 'SteamID', self:SteamID(), 'Kit', sName )
    else
        SQL.Insert( DB, 'SteamID, Kit, Date', '%s, %s, %i', self:SteamID(), sName, os.time() )
    end
end