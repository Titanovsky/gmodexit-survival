local function GetItems( nTier, tItems )
    local items = {}

    for _, item in ipairs( tItems ) do
        local craft = item..' t'..nTier
        --if not AMB.SimpleInventory.GetCraft( craft ) then continue end

        items[ #items + 1 ] = craft
    end

    return items
end

local ITEMS = {
    'cloth', 'rope', 'bandage', 'splitter', 'physgun', 'physcannon', 'toolgun', 'fishing rod',
    'axe grip', 'shovel', 'axe stone', 'axe copper', 'axe iron', 'axe steel', 'axe titan',
    'pickaxe grip', 'pickaxe stone', 'pickaxe copper', 'pickaxe iron', 'pickaxe steel', 'pickaxe titan',
    'hunting bow', 'hand cannon', 'pipe shotgun', 'arrow', 'stone ammo', 'simple dimple', 'food wrap',
    'copper tube', 'copper wire', 'iron pieces', 'iron bolt',
    'iron gear', 'steel tube', 'steel fragments', 'titan plate'
}

local ITEMS_LEVEL_1 = GetItems( 1, ITEMS )
local ITEMS_LEVEL_2 = GetItems( 2, ITEMS )
local ITEMS_LEVEL_3 = GetItems( 3, ITEMS )
local ITEMS_LEVEL_4 = GetItems( 4, ITEMS )
local ITEMS_LEVEL_5 = GetItems( 5, ITEMS )

local UPDATE_LEVEL_1 = { -- To 2
    time = 60,
    hp = 1200,
    items = {
        [ 'wood' ] = 50,
        [ 'stone' ] = 25,
    }
}

local UPDATE_LEVEL_2 = { -- 3
    time = 120,
    hp = 1800,
    items = {
        [ 'wood' ] = 75,
        [ 'stone' ] = 50,
        [ 'plastic' ] = 25,
        [ 'copper' ] = 15,
        [ 'workbench rotor' ] = 1
    }
}

local UPDATE_LEVEL_3 = { -- 4
    time = 180,
    hp = 2400,
    items = {
        [ 'plastic' ] = 125,
        [ 'copper' ] = 30,
        [ 'glass' ] = 15,
        [ 'iron' ] = 40,
    }
}

local UPDATE_LEVEL_4 = { -- 5
    time = 300,
    hp = 3000,
    items = {
        [ 'plastic' ] = 255,
        [ 'copper' ] = 75,
        [ 'iron' ] = 50,
        [ 'steel' ]  = 15,
        [ 'workbench tool box' ] = 1,
    }
}

Ambi.Survival.buildings_crafts[ 'workbench' ] = {
    ITEMS_LEVEL_1,
    ITEMS_LEVEL_2,
    ITEMS_LEVEL_3,
    ITEMS_LEVEL_4,
    ITEMS_LEVEL_5,
    ITEMS_LEVEL_6
}

Ambi.Survival.buildings_updates[ 'workbench' ] = {
    UPDATE_LEVEL_1,
    UPDATE_LEVEL_2,
    UPDATE_LEVEL_3,
    UPDATE_LEVEL_4,
    UPDATE_LEVEL_5
}