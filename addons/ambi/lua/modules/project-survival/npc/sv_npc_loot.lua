local C = Ambi.General.Global.Colors

local LOOTS = {}
LOOTS[ 'antilop_berserk' ] = {
    [ 1 ] = {
        { class = 'raw pork', chance = 50, max = 1 },
        { class = 'coin', chance = 50, max = 2 },
    },

    [ 2 ] = {
        { class = 'raw pork', chance = 65, max = 2 },
        { class = 'coin', chance = 75, max = 4 },
    },

    [ 3 ] = {
        { class = 'raw pork', chance = 75, max = 3 },
        { class = 'cloth', chance = 35, max = 1 },
        { class = 'coin', chance = 75, max = 8 },
    },

    [ 4 ] = {
        { class = 'raw pork', chance = 75, max = 4 },
        { class = 'bait simple', chance = 45, max = 2 },
        { class = 'bait advanced', chance = 15, max = 2 },
        { class = 'cloth', chance = 50, max = 6 },

        { class = 'copper', chance = 35, max = 4 },
        { class = 'coal', chance = 45, max = 24 },
        { class = 'workbench rotor', chance = 75, max = 1 },
        { class = 'workbench tool box', chance = 75, max = 1 },
        { class = 'oil pumper additional shoulder', chance = 75, max = 1 },
        { class = 'oil pumper strong cables', chance = 75, max = 1 },
        { class = 'coin', chance = 90, max = 12 },
    },

    [ 5 ] = {
        { class = 'raw pork', chance = 85, max = 5 },
        { class = 'bait simple', chance = 45, max = 12 },
        { class = 'bait advanced', chance = 25, max = 4 },
        { class = 'bait extra', chance = 4, max = 1 },
        { class = 'cloth', chance = 45, max = 4 },

        { class = 'copper', chance = 45, max = 5 },
        { class = 'coal', chance = 50, max = 32 },
        { class = 'workbench rotor', chance = 75, max = 1 },
        { class = 'workbench tool box', chance = 75, max = 1 },
        { class = 'oil pumper additional shoulder', chance = 75, max = 1 },
        { class = 'oil pumper strong cables', chance = 75, max = 1 },
        { class = 'pistol ammo', chance = 35, max = 12 },
        { class = 'shell', chance = 25, max = 16 },
        { class = 'smg ammo', chance = 10, max = 20 },

        { class = 'coin', chance = 95, max = 15 },
    },

    [ 6 ] = {
        { class = 'raw chicken', chance = 75, max = 4 },
        { class = 'raw pork', chance = 55, max = 3 },
        { class = 'raw beef', chance = 25, max = 2 },
        
        { class = 'copper', chance = 45, max = 5 },
        { class = 'coal', chance = 50, max = 32 },
        { class = 'workbench rotor', chance = 75, max = 1 },
        { class = 'workbench tool box', chance = 75, max = 1 },
        { class = 'oil pumper additional shoulder', chance = 75, max = 1 },
        { class = 'oil pumper strong cables', chance = 75, max = 1 },
        { class = 'blast furnace spec1', chance = 50, max = 1 },
        { class = 'blast furnace spec2', chance = 50, max = 1 },
        { class = 'pistol ammo', chance = 45, max = 8 },
        { class = 'shell', chance = 30, max = 12 },
        { class = 'smg ammo', chance = 15, max = 10 },
        { class = 'pistol parts', chance = 50, max = 2 },
        { class = 'shotgun parts', chance = 50, max = 2 },
        { class = 'semi auto parts', chance = 50, max = 2 },
        { class = 'rifle parts', chance = 25, max = 1 },
        { class = 'sniper rifle parts', chance = 25, max = 1 },
        { class = 'factory spec1', chance = 15, max = 1 },
        { class = 'factory spec2', chance = 15, max = 1 },

        { class = 'p250', chance = 10, max = 1 },

        { class = 'coin', chance = 95, max = 25 },
    },
}

LOOTS[ 'zombie_x18_fried' ] = {
    [ 1 ] = {
        { class = 'water', chance = 50, max = 40 },

        { class = 'shell', chance = 25, max = 16 },
        { class = 'pistol ammo', chance = 25, max = 44 },
        { class = 'smg ammo', chance = 25, max = 44 },
        { class = 'rifle ammo', chance = 25, max = 55 },

        { class = 'pistol parts', chance = 65, max = 1 },
        { class = 'shotgun parts', chance = 65, max = 1 },
        { class = 'semi auto parts', chance = 65, max = 1 },
        { class = 'rifle parts', chance = 65, max = 1 },

        { class = 'turret parts', chance = 5, max = 1 },

        { class = 'coin', chance = 95, max = 25 },
    },
}

LOOTS[ 'antilop_queen' ] = {
    [ 1 ] = {
        { class = 'crossbow', chance = 50, max = 1 },
        { class = 'iron arrow', chance = 75, max = 15 },
    },
}

LOOTS[ 'zombie_x18_toxic' ] = {
    [ 1 ] = {
        { class = 'water', chance = 50, max = 40 },

        { class = 'shell', chance = 45, max = 6 },
        { class = 'pistol ammo', chance = 35, max = 25 },
        { class = 'smg ammo', chance = 30, max = 25 },
        { class = 'rifle ammo', chance = 25, max = 25 },

        { class = 'pistol parts', chance = 65, max = 1 },
        { class = 'shotgun parts', chance = 65, max = 1 },
        { class = 'semi auto parts', chance = 65, max = 1 },
        { class = 'rifle parts', chance = 65, max = 1 },

        { class = 'coin', chance = 95, max = 25 },
    },
}

-- TODO: Эту фигню в Survival засунуть
hook.Add( 'OnNPCKilled', 'Ambi.Survival.LootAfterDeathNPC', function( eNPC, eAttacker )
    if not IsValid( eAttacker ) or not eAttacker:IsPlayer() then return end
    if not eNPC.type_animal or not LOOTS[ eNPC.type_animal ] then return end
    local lvl = eNPC:GetNWInt( 'Level' )

    eAttacker:AddXP( math.random( 20, 50 ) )
    eAttacker:AddSkillXP( 'hunting', 45 )

    local items = {}
    for _, v in pairs( LOOTS[ eNPC.type_animal ][ lvl ] ) do
        local chance = math.random( 1, 100 )
        if ( chance > v.chance ) then continue end

        items[ #items + 1 ] = { class = v.class, count = math.random( 1, v.max ) }
    end
    if ( #items == 0 ) then return end
    
    local loot = ents.Create( 'sinv_loot' )
    loot:Spawn()
    loot:SetOptions( eNPC.type_animal, '', 'models/items/item_item_crate.mdl', C.AMB_BLOOD, items )
    loot:SetPos( eNPC:GetPos() )
    loot:SetHealth( 9999 )
end )