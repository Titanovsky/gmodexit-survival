local C, SQL, UT = Ambi.General.Global.Colors, Ambi.SQL, Ambi.General.Utility

local db = SQL.CreateTable( 'surv_player_storages', 'SteamID TEXT, Name TEXT, Weapons TEXT, Ammo TEXT' )

function Ambi.Survival.SaveWeapons( ePly )
    if not IsValid( ePly ) or not ePly:IsPlayer() then return end

    local weapons = ePly:GetWeapons()
    if not weapons or ( #weapons == 0 ) then weapons = {} end

    local ammo = ePly:GetAmmo()
    if not ammo then ammo = {} end

    local SteamID, Nick, Weapons, Ammo = ePly:SteamID(), ePly:Nick(), Ambi.Survival.ConvertWeaponsInStringData( weapons ), Ambi.Survival.ConvertAmmoInStringData( ammo )

    SQL.Get( db, 'Weapons', 'SteamID', SteamID, function()
        Ambi.SQL.Update( db, 'Name', Nick, 'SteamID', SteamID )
        Ambi.SQL.Update( db, 'Weapons', Weapons, 'SteamID', SteamID )
        Ambi.SQL.Update( db, 'Ammo', Ammo, 'SteamID', SteamID )
    end, function() 
        SQL.Insert( db, 'SteamID, Name, Weapons, Ammo', '%s, %s, %s, %s', SteamID, Nick, Weapons, Ammo )
    end )
end

function Ambi.Survival.SaveAmmo( ePly )
    if not IsValid( ePly ) or not ePly:IsPlayer() then return end

    local ammo = ePly:GetAmmo()
    if not ammo then ammo = {} end

    local SteamID, Nick, Ammo = ePly:SteamID(), ePly:Nick(), Ambi.Survival.ConvertAmmoInStringData( ammo )

    SQL.Get( db, 'Weapons', 'SteamID', SteamID, function()
        AMB.SQL.Update( db, 'Name', Nick, 'SteamID', SteamID )
        AMB.SQL.Update( db, 'Ammo', Ammo, 'SteamID', SteamID )
    end, function() 
        SQL.Insert( db, 'SteamID, Name, Weapons, Ammo', '%s, %s, %s, %s', SteamID, Nick, '', Ammo )
    end )
end

function Ambi.Survival.ConvertWeaponsInStringData( tWeapons )
    local str = ''
    for i, wep in ipairs( tWeapons ) do
        local class = wep:GetClass()

        local end_mark = ( i == #tWeapons ) and '' or ', '
        str = str..class..end_mark
    end

    return str
end

function Ambi.Survival.ConvertAmmoInStringData( tAmmo )
    local limit = 0
    for _, v in pairs( tAmmo ) do limit = limit + 1 end

    local j = 0
    local str = ''
    for i, count in pairs( tAmmo ) do
        j = j + 1

        local end_mark = ( j == limit ) and '' or ', '
        str = str..i..':'..count..end_mark
    end

    return str
end

function Ambi.Survival.ConvertStringDataInWeapons( sWeapons )
    return string.Explode( ', ', sWeapons )
end

function Ambi.Survival.ConvertStringDataInAmmo( sAmmo )
    local ammo = {}
    sAmmo = string.Explode( ', ', sAmmo )

    for k, v in pairs( sAmmo ) do
        local str = string.Explode( ':', v )
        ammo[ str[ 1 ] ] = str[ 2 ]
    end

    return ammo
end

function Ambi.Survival.RemoveSaveWeapons( ePly )
    if not IsValid( ePly ) or not ePly:IsPlayer() then return end

    if SQL.IsSelect( db, 'Weapons', 'SteamID', ePly:SteamID() ) then SQL.Delete( db, 'SteamID', ePly:SteamID() ) end
end

function Ambi.Survival.GiveSaveWeapons( ePly )
    if not IsValid( ePly ) or not ePly:IsPlayer() then return end
    if not SQL.IsSelect( db, 'Weapons', 'SteamID', ePly:SteamID() ) then return end

    local weapons = Ambi.Survival.ConvertStringDataInWeapons( SQL.Select( db, 'Weapons', 'SteamID', ePly:SteamID() ) )
    for _, class in ipairs( weapons ) do ePly:Give( class, true ) end

    local ammo = Ambi.Survival.ConvertStringDataInAmmo( SQL.Select( db, 'Ammo', 'SteamID', ePly:SteamID() ) ) 
    for i, count in pairs( ammo ) do ePly:SetAmmo( count, tonumber( i ) ) end

    Ambi.Survival.RemoveSaveWeapons( ePly )
    Ambi.Survival.SaveWeapons( ePly )
    Ambi.Survival.SaveAmmo( ePly )
end

hook.Add( 'PlayerInitialSpawn', 'Ambi.Survival.GiveSaveWeapons', function( ePly )
    timer.Simple( 1, function()
        if IsValid( ePly ) then
            Ambi.Survival.GiveSaveWeapons( ePly ) 
            ePly.ready_for_save_weapons = true
        end
    end )
end )

hook.Add( 'WeaponEquip', 'Ambi.Survival.SaveWeapons', function( swepGun, ePly )
    if not ePly.ready_for_save_weapons then return end

    Ambi.Survival.SaveWeapons( ePly )
end )

hook.Add( 'PlayerDisconnected', 'Ambi.Surivval.SaveAmmo', function( ePly ) 
    ePly.ready_for_save_weapons = false
end )

hook.Add( 'PlayerAmmoChanged', 'Ambi.Survival.SaveWeapons', function( ePly )
    if not ePly.ready_for_save_weapons then return end

    Ambi.Survival.SaveAmmo( ePly )
end )

hook.Add( 'PlayerSwitchWeapon', 'Ambi.Survival.SaveWeapons', function( ePly )
    if not ePly.ready_for_save_weapons then return end

    Ambi.Survival.SaveWeapons( ePly )
end )

hook.Add( 'PostPlayerDeath', 'Ambi.Survival.RemoveWeapons', function( ePly )
    if not ePly.ready_for_save_weapons then return end

    Ambi.Survival.RemoveSaveWeapons( ePly )
end )