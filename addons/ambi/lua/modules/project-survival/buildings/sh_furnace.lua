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
    'coal', 'plastic', 'glass', 'copper', 'iron', 'brick'
}

local ITEMS_LEVEL_1 = GetItems( 1, ITEMS )
local ITEMS_LEVEL_2 = GetItems( 2, ITEMS )
local ITEMS_LEVEL_3 = GetItems( 3, ITEMS )
local ITEMS_LEVEL_4 = GetItems( 4, ITEMS )
local ITEMS_LEVEL_5 = GetItems( 5, ITEMS )

local UPDATE_LEVEL_1 = { -- To 1
    time = 25,
    hp = 2000,
    items = {
        [ 'stone' ] = 50,
    }
}

local UPDATE_LEVEL_2 = {
    time = 120,
    hp = 2500,
    items = {
        [ 'stone' ] = 100,
        [ 'coal' ] = 25,
    }
}

local UPDATE_LEVEL_3 = {
    time = 180,
    hp = 3500,
    items = {
        [ 'stone' ] = 300,
        [ 'coal' ] = 50,
    }
}

local UPDATE_LEVEL_4 = {
    time = 240,
    hp = 5500,
    model = 'models/props_c17/FurnitureFireplace001a.mdl',
    items = {
        [ 'stone' ] = 500,
        [ 'coal' ] = 75,
        [ 'brick' ] = 50,
    }
}

Ambi.Survival.buildings_crafts[ 'furnace' ] = {
    ITEMS_LEVEL_1,
    ITEMS_LEVEL_2,
    ITEMS_LEVEL_3,
    ITEMS_LEVEL_4,
    ITEMS_LEVEL_5
}

Ambi.Survival.buildings_updates[ 'furnace' ] = {
    UPDATE_LEVEL_1,
    UPDATE_LEVEL_2,
    UPDATE_LEVEL_3,
    UPDATE_LEVEL_4
}