Ambi.Survival.loot_types = Ambi.Survival.loot_types or {}
Ambi.Survival.loot_points = Ambi.Survival.loot_points or {}

function Ambi.Survival.AddLootPoint( sPoint, sMap, vPoint, tTypes )
    if not vPoint or not isvector( vPoint ) then return end
    if not tTypes or not istable( tTypes ) then return end

    if ( sMap ~= game.GetMap() ) then return end

    Ambi.Survival.loot_points[ sPoint or '' ] = {
        point = vPoint or Vector( 0, 0, 0 ),
        types = tTypes
    }

    timer.Simple( 1, function() Ambi.Survival.InitLoot( sPoint ) end )
end

function Ambi.Survival.AddLootType( sType, sHeader, nDelay, sModel, cColor, tItems )
    if not sType or not isstring( sType ) then return end
    if not tItems or not istable( tItems ) then return end

    Ambi.Survival.loot_types[ sType ] = {
        delay = nDelay or 0,
        header = sHeader or '',
        model = sModel or '',
        color = cColor or Color( 0, 0, 0 ),
        items = tItems
    }
end

function Ambi.Survival.InitLoot( sPoint )
    local info = Ambi.Survival.loot_points[ sPoint or '' ] 
    if not info then return end

    local rand_type = table.Random( info.types )
    local type = Ambi.Survival.loot_types[ rand_type ]
    if not type then return end

    timer.Create( 'AmbSurvivalLootSpawn:'..sPoint, type.delay, 1, function()
        for _, obj in ipairs( ents.FindInSphere( info.point, 54 ) ) do
            if obj:IsPlayer() or ( obj:GetClass() == 'sinv_loot' ) then Ambi.Survival.InitLoot( sPoint ) return end
        end

        local loot = Ambi.Survival.SpawnLoot( info.point, rand_type )
        if not IsValid( loot ) then return end

        loot.loot_point = sPoint
    end )
end

function Ambi.Survival.SpawnLoot( vPos, sType )
    local type = Ambi.Survival.loot_types[ sType ]
    if not type then return end

    local loot = {}
    for _, item in ipairs( type.items ) do
        local chance = math.random( 1, 100 )
        if ( chance > item.chance ) then continue end

        loot[ #loot + 1 ] = { class = item.class, count = math.random( item.min, item.max ) }
    end
    if ( #loot == 0 ) then return Ambi.Survival.SpawnLoot( vPos, sType ) end

    local ent = ents.Create( 'sinv_loot' )
    ent:SetPos( vPos or Vector( 0, 0, 0 ) )
    ent:Spawn()
    ent:SetOptions( type.header, sType, type.model, type.color, loot )

    return ent
end

hook.Add( 'EntityRemoved', 'Ambi.Survival.AutoSpawnLoots', function( eObj )
    if not eObj.loot_point then return end

    Ambi.Survival.InitLoot( eObj.loot_point )
end )