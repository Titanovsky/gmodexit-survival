local C = Ambi.General.Global.Colors

Ambi.Survival.npcs_types = Ambi.Survival.npcs_types or {}
Ambi.Survival.npcs_points = Ambi.Survival.npcs_points or {}
Ambi.Survival.npcs = Ambi.Survival.npcs or {}

function Ambi.Survival.AddNPCType( sType, sClass, fPostAction )
    Ambi.Survival.npcs_types[ tostring( sType ) ] = {
        class = sClass or '',
        post = fPostAction
    }
end

-- ----------------------------------------------------------------------------------------------------------------

local function SpawnNPC( sPoint )
    local point = Ambi.Survival.npcs_points[ tostring( sPoint ) ]
    if not point or not point.types then return end

    local info = table.Random( point.types )
    local delay, type = info.delay, Ambi.Survival.npcs_types[ info.type ]
    if not type then return end

    local pos = point.pos + Vector( math.random( 5, 75 ), math.random( 5, 75 ), 30 )
    local npc = ents.Create( type.class ) 
    npc:Spawn()
    npc:SetPos( point.pos + Vector( math.random( 5, 75 ), math.random( 5, 75 ), 30 ) )
    npc.point = sPoint
    npc.point_delay = delay

    if type.post then type.post( npc ) end -- for garbage collector

    Ambi.Survival.npcs[ sPoint ] = npc

    print( '[Survival] NPC Spawned: '..sPoint..' | '..tostring( npc ) )
end

function Ambi.Survival.AddNPCPoint( sPoint, sMap, vPos, tTypes )
    if ( sMap != game.GetMap() ) then return end
    
    Ambi.Survival.npcs_points[ tostring( sPoint ) ] = {
        map = sMap,
        pos = vPos or Vector( 0, 0, 0 ),
        types = tTypes
    }

    local npc = Ambi.Survival.npcs[ sPoint ]
    if npc and IsValid( npc ) then npc:Remove() end -- for garbage collector

    timer.Simple( 1, function()
        SpawnNPC( sPoint )
    end )
end

function Ambi.Survival.EvolutionNPC( eNPC )
    if not eNPC.evolution then return end
    if ( eNPC:GetNWInt( 'Level' ) >= 6 ) then return end

    eNPC:SetNWInt( 'Level', eNPC:GetNWInt( 'Level' ) + 1 )
    eNPC:SetModelScale( eNPC:GetModelScale() * 1.2, 1.5 )
    eNPC:SetMaxHealth( eNPC:GetMaxHealth() + 1500 )
    eNPC:SetHealth( eNPC:Health() + 600 )
    eNPC.multiply_damage = eNPC.multiply_damage + 0.2
    eNPC:EmitSound( 'ambi/csz/zombie/die'..math.random( 1, 12 )..'.ogg', 75, nil, 1 )

    local lvl = eNPC:GetNWInt( 'Level' ) 
    if ( lvl == 1 ) or ( lvl == 2 ) or ( lvl == 3 ) or ( lvl == 4 ) or ( lvl == 5 ) then
        eNPC:SetMaterial( 'phoenix_storms/gear' )
    else
        eNPC:SetMaterial()
    end
end

hook.Add( 'OnNPCKilled', 'Ambi.Survival.RemoveEvolution', function( eNPC, eAttacker )
    if eNPC.evolution then timer.Remove( 'AmbSurvivalNPCEvolution:'..eNPC:EntIndex() ) end
end )

hook.Add( 'EntityRemoved', 'Ambi.Survival.RemoveEvolution', function( eNPC )
    local point = eNPC.point

    if eNPC:IsNPC() and point then
        timer.Remove( 'AmbSurvivalNPCAutoSpawn:'..point )

        timer.Create( 'AmbSurvivalNPCAutoSpawn:'..point, eNPC.point_delay, 1, function()
            SpawnNPC( point )
        end )
    end
end )