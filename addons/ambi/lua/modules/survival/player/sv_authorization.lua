local SQL, NW, C = Ambi.SQL, Ambi.NW, Ambi.General.Global.Colors
local DB = SQL.CreateTable( 'surv_players', 'SteamID, Name, Level, XP, Skin' )

local cache_stats = {}
local function GetCache( ePly )
    if not cache_stats[ ePly:SteamID() ] then return end

    return cache_stats[ ePly:SteamID() ]
end

local function SetCache( ePly )
    cache_stats[ ePly:SteamID() ] = {
        hp = ePly:Health(),
        armor = ePly:Armor(),
        hunger = ePly:GetHunger(),
        thirst = ePly:GetThirst(),
    }
end

local RAND_SKINS = {
    'models/player/Group01/female_01.mdl',
    'models/player/Group01/female_02.mdl',
    'models/player/Group01/female_03.mdl',
    'models/player/Group01/female_04.mdl',
    'models/player/Group01/female_05.mdl',
    'models/player/Group01/female_06.mdl',
    'models/player/Group01/male_01.mdl',
    'models/player/Group01/male_02.mdl',
    'models/player/Group01/male_03.mdl',
    'models/player/Group01/male_04.mdl',
    'models/player/Group01/male_05.mdl',
    'models/player/Group01/male_06.mdl',
    'models/player/Group01/male_07.mdl',
    'models/player/Group01/male_08.mdl',
    'models/player/Group01/male_09.mdl',
    'models/player/Group02/male_02.mdl',
    'models/player/Group02/male_04.mdl',
    'models/player/Group02/male_06.mdl',
    'models/player/Group02/male_08.mdl'
}

local COLOR_PLAYER = Color( 237, 178, 50):ToVector()
hook.Add( 'PlayerSpawn', 'Ambi.Survival.SetSkin', function( ePly )
    if not ePly.ready_for_skin then return end

    timer.Simple( 0.25, function()
        local sid = ePly:SteamID()

        ePly:SetModel( SQL.Select( DB, 'Skin', 'SteamID', sid ) )
        ePly:SetPlayerColor( COLOR_PLAYER )
        ePly:SetHunger( Ambi.Survival.Config.start_hunger )
        ePly:SetThirst( Ambi.Survival.Config.start_thirst )
        ePly:Give( 'tfa_rustalpha_stone_hatchet' )
    end )
end )

hook.Add( 'PlayerInitialSpawn', 'Ambi.Survival.SetBeginCrafts', function( ePly )
    timer.Simple( 1, function()
        if not IsValid( ePly ) then return end
        
        ePly:SetCrafts( { 
            'physgun player', 'gravgun player', 'rope player', 'urine from water',
            'arrow player', 'stone ammo player', 'bandage player', 'hunting bow player'
        } )
    end )
end )

gameevent.Listen( 'player_activate' )
hook.Add( 'player_activate', 'Ambi.Survival.PlayerLoadData', function( tData ) 
	local ePly = Player( tData.userid )
    local sid = ePly:SteamID() 

    local bNewPlayer = false

    SQL.Get( DB, 'Name', 'SteamID', sid, function()
        local level = SQL.Select( DB, 'Level', 'SteamID', sid )
        local xp = SQL.Select( DB, 'XP', 'SteamID', sid )

        NW.SetInt( ePly, 'Level', tonumber( level ) )
        NW.SetInt( ePly, 'XP', tonumber( xp ) )
        ePly:SetModel( SQL.Select( DB, 'Skin', 'SteamID', sid ) )
    end, function()
        local skin = table.Random( RAND_SKINS )

        ePly:ChatSend( C.FLAT_BLUE, '[•] ', C.ABS_WHITE, 'Вам попался скин: '..skin )
        ePly:SetModel( skin )
        NW.SetInt( ePly, 'Level', 1 )
        NW.SetInt( ePly, 'XP', 0 )

        SQL.Insert( DB, 'SteamID, Name, Level, XP, Skin', '%s, %s, %i, %i, %s', sid, ePly:Nick(), 1, 0, skin )

        bNewPlayer = true
    end )

    ePly.ready_for_skin = true

    timer.Simple( 20, function() 
        if IsValid( ePly ) then 
            ePly:RunCommand( 'ambi_surv_refresh_menu' ) 
            ePly:RunCommand( 'ambi_surv_refresh_menu' ) -- cuz spawnmenu is shit
        end
    end )

    if bNewPlayer then 
        timer.Simple( 2, function()
            if not IsValid( ePly ) then return end

            -- ePly:SendLua( 'Ambi.Business.Promocode.Show()' ) -- TODO

            ePly:RunCommand( 'ambi_hud_surv 2' )
            ePly:RunCommand( 'ambi_territory_render 1' )
            ePly:RunCommand( 'ambi_infohud 1' )
            ePly:NotifySend( 4, { text = 'Чат и Микрофон работают в пределах 1.300 units!', time = 45, color = C.FLAT_BLUE } )
        end )

        ePly:StartQuest( 'q1', true )
    end

    ePly:SetPlayerColor( COLOR_PLAYER )

    local cache = GetCache( ePly )

    ePly:SetHealth( cache and cache.hp or 75 )
    ePly:SetArmor( cache and cache.armor or 0 )
    ePly:SetHunger( cache and cache.hunger or 500 )
    ePly:SetThirst( cache and cache.thirst or 500 )
    
    local lvl = ePly:GetLevel()
    ePly:SetWalkSpeed( 160 + 10 * lvl )
    ePly:SetRunSpeed( 300 + 10 * lvl )
    ePly:SetJumpPower( 150 + lvl )

    local text = bNewPlayer and ' авторизовался впервые' or ' авторизовался'
    for _, ply in ipairs( player.GetHumans() ) do
        ply:ChatSend( C.AMBI_GREEN, '[•] ', C.ABS_WHITE, 'Игрок ', C.FLAT_BLUE, ePly:Nick(), C.ABS_WHITE, text )
    end
end )

hook.Add( 'PlayerDisconnected', 'Ambi.Survival.PlayeCacheStats', SetCache )

hook.Add( 'GetFallDamage', 'RealisticDamage', function( ePly, nSpeed )
    if not Ambi.Survival.Config.enable_realistic_fall_damage then return end
    
    return math.random( 2, 8 )
end )

hook.Add( 'PlayerLoadout', 'Ambi.Survival.BlockWeapons', function( ePly )
    return false
end )

hook.Add( 'PlayerNoClip', 'Ambi.Survival.BlockNoClip', function( ePly )
    if not ePly:IsSuperAdmin() then return false end
end )

hook.Add( 'Ambi.Survival.SetLevel', 'Ambi.Survival.PromocodeActivate', function( ePly, nLevel )
    if not ePly.promocode then return end

    if ( nLevel == 5 ) then
        ePly:ChatSend( C.AMBI_PURPLE, '[•] ', C.ABS_WHITE, 'Промокод актирован, вы получаете бонус, через 15 секунд, бонус получит тот, кто дал промокод, если он на сервере' )
        ePly:AddXP( 1000 )
        ePly:Give( 'surv_pickaxe_copper' )
        ePly:Give( 'surv_axe_copper' )
        ePly:Give( 'weapon_physgun' )
        ePly:Give( 'weapon_physcannon' )
        ePly:Give( 'gmod_tool' )

        timer.Simple( 15, function()
            for _, v in ipairs( Ambi.Business.Promocode.promocodes ) do
                if ( v.code == ePly.promocode ) then
                    local ply = player.GetBySteamID( v.steamid )
                    if not IsValid( ply ) then return end

                    ply:ChatSend( C.AMBI_PURPLE, '[•] ', C.ABS_WHITE, 'Игрок ', C.FLAT_GREEN, ePly:Nick(), C.ABS_WHITE, ' активировал Ваш промокод! Вы получаете бонус' )
                    ply:AddXP( 500 )
                    ply:Give( 'gmod_tool' )
                end
            end
        end )
    end
end )

timer.Create( 'AmbSurvivalNotifyServer', 600, 0, function()
    for _, ply in ipairs( player.GetAll() ) do
        ply:ChatSend( C.AMBI, '[•] ', C.ABS_WHITE, 'Спасибо, что играете на Выживашке :)' )
    end
end )