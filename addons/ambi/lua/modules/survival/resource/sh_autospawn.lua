local A = Ambi.General

Ambi.Survival.resource_chains = Ambi.Survival.resource_chains or {}

function Ambi.Survival.AddResourceChain( sName, sMap, sDescription, tPlaces, tTypes )
    if not tPlaces or not istable( tPlaces ) then A.Error( 'Survival', 'SetResourceChain: not selected tPlaces' ) return end
    if not tTypes or not istable( tTypes ) then A.Error( 'Survival', 'SetResourceChain: not selected tTypes' ) return end

    if ( sMap ~= game.GetMap() ) then return end

    Ambi.Survival.resource_chains[ sName or '' ] = {
        desc = sDescription or '',
        map = sMap,
        places = tPlaces,
        types = tTypes
    }
end

function Ambi.Survival.SetResourceTimer( sChain )
    local chain = Ambi.Survival.resource_chains[ sChain ]
    if not chain then return end

    local type, place = table.Random( chain.types ), table.Random( chain.places )
    timer.Create( 'AmbResourceSpawn:'..sChain..':'..tostring( math.random( 0, 9999 ) ), type.time or 60, 1, function()
        Ambi.Survival.SpawnResource( sChain, type, place )
    end )
end

function Ambi.Survival.SpawnResource( sChain, tType, tPlace )
    local chain = Ambi.Survival.resource_chains[ sChain or '' ]
    if not chain then return end

    local type = tType
    if not type.name or not Ambi.Survival.GetResource( type.name ) then return end

    local place = tPlace
    if not place then return end

    local pos, ang = place.vec or Vector( 0, 0, 0 ), place.ang or Angle( 0, 90, 0 )

    for _, ent in ipairs( ents.FindInSphere( pos, 48 ) ) do
        if ( ent:GetClass() == 'survival_resource' ) and ( ent:GetType() == type.name ) then Ambi.Survival.SetResourceTimer( sChain ) return end
        if ( ent:GetClass() == 'prop_physics' ) or ( ent:GetClass() == 'prop_custom' ) then Ambi.Survival.SetResourceTimer( sChain ) return end
        if ent:IsPlayer() or ent:IsNPC() or ent:IsVehicle() then Ambi.Survival.SetResourceTimer( sChain ) return end
    end

    local resource = ents.Create( 'survival_resource' )
    resource:SetType( type.name )
    resource:SetPos( pos )
    resource:SetAngles( ang )
    resource:Spawn()
    resource.resource_chain = sChain

    return resource
end

hook.Add( 'PostGamemodeLoaded', 'Ambi.Survival.SetResourceChain', function()
    if CLIENT then return end

    timer.Simple( 5, function()
        for name, chain in pairs( Ambi.Survival.resource_chains ) do
            for i = 1, #chain.places do
                local place, type = chain.places[ i ], table.Random( chain.types )

                local ent = Ambi.Survival.SpawnResource( name, type, place )
                print( '[Survival] AutoSpawn Resources: '..tostring( ent ) )
            end
        end
    end )
end )

local NOT_TRUE_REMOVE = false

hook.Add( 'PreCleanupMap', 'Ambi.Survival.AutoSpawnResourcesOnRespawn', function() NOT_TRUE_REMOVE = true end )
hook.Add( 'PostCleanupMap', 'Ambi.Survival.AutoSpawnResourcesOnRespawn', function()
    if CLIENT then return end
    NOT_TRUE_REMOVE = true

    timer.Simple( 0.1, function()
        NOT_TRUE_REMOVE = false

        for name, chain in pairs( Ambi.Survival.resource_chains ) do
            for i = 1, #chain.places do
                local place, type = chain.places[ i ], table.Random( chain.types )

                local ent = Ambi.Survival.SpawnResource( name, type, place )
            end
        end
    end )
end )

hook.Add( 'EntityRemoved', 'Ambi.Survival.SetResourceChain', function( eObj )
    if CLIENT then return end
    if NOT_TRUE_REMOVE then return end

    local chain = eObj.resource_chain
    if not chain then return end

    Ambi.Survival.SetResourceTimer( chain )
end )