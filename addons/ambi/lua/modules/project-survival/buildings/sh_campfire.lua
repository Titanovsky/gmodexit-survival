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
    'coal campfire',
    'fried pork', 'fried chicken', 'fried beef',
    'fried carp', 'fried ide', 'fried ram', 'fried bream', 'fried crucian carp', 'fried roach', 'fried catfish', 'fried pike', 'fried tuna',
}

local ITEMS_LEVEL_1 = GetItems( 1, ITEMS )
local ITEMS_LEVEL_2 = GetItems( 2, ITEMS )
local ITEMS_LEVEL_3 = GetItems( 3, ITEMS )
local ITEMS_LEVEL_4 = GetItems( 4, ITEMS )
local ITEMS_LEVEL_5 = GetItems( 5, ITEMS )

local UPDATE_LEVEL_1 = { -- To 1
    time = 5,
    hp = 200,
    items = {
        [ 'wood' ] = 50,
    }
}

local UPDATE_LEVEL_2 = {
    time = 30,
    hp = 300,
    items = {
        [ 'wood' ] = 75,
        [ 'stone' ] = 25,
    }
}

local UPDATE_LEVEL_3 = {
    time = 40,
    hp = 400,
    items = {
        [ 'wood' ] = 100,
        [ 'stone' ] = 50,
        [ 'brick' ] = 5,
    }
}

local UPDATE_LEVEL_4 = {
    time = 50,
    hp = 500,
    items = {
        [ 'wood' ] = 255,
        [ 'stone' ] = 125,
        [ 'brick' ] = 15,
    }
}

Ambi.Survival.buildings_crafts[ 'campfire' ] = {
    ITEMS_LEVEL_1,
    ITEMS_LEVEL_2,
    ITEMS_LEVEL_3,
    ITEMS_LEVEL_4,
    ITEMS_LEVEL_5
}

Ambi.Survival.buildings_updates[ 'campfire' ] = {
    UPDATE_LEVEL_1,
    UPDATE_LEVEL_2,
    UPDATE_LEVEL_3,
    UPDATE_LEVEL_4
}