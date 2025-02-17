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
    'fried pork', 'fried chicken', 'fried beef' 
}

local ITEMS_LEVEL_1 = GetItems( 1, ITEMS )
local ITEMS_LEVEL_2 = GetItems( 2, ITEMS )
local ITEMS_LEVEL_3 = GetItems( 3, ITEMS )
local ITEMS_LEVEL_4 = GetItems( 4, ITEMS )
local ITEMS_LEVEL_5 = GetItems( 5, ITEMS )


local UPDATE_LEVEL_1 = { -- To 2
    time = 60,
    hp = 2000,
    items = {
        [ 'iron' ] = 25,
        [ 'iron pieces' ] = 10,
        [ 'iron gear' ] = 4,
    }
}

local UPDATE_LEVEL_2 = { -- 3
    time = 120,
    hp = 4000,
    items = {
        [ 'iron' ] = 75,
        [ 'stove spec1' ] = 1
    }
}

local UPDATE_LEVEL_3 = { -- 4
    time = 180,
    hp = 6000,
    items = {
        [ 'iron' ] = 100,
        [ 'steel' ] = 5,
    }
}

local UPDATE_LEVEL_4 = { -- 5
    time = 300,
    hp = 8000,
    items = {
        [ 'iron' ] = 125,
        [ 'steel' ] = 10,
        [ 'steel tube' ] = 2,
        [ 'steel fragments' ] = 15,
        [ 'stove spec1' ] = 2,
    }
}

Ambi.Survival.buildings_crafts[ 'stove' ] = {
    ITEMS_LEVEL_1,
    ITEMS_LEVEL_2,
    ITEMS_LEVEL_3,
    ITEMS_LEVEL_4,
    ITEMS_LEVEL_5,
}

Ambi.Survival.buildings_updates[ 'stove' ] = {
    UPDATE_LEVEL_1,
    UPDATE_LEVEL_2,
    UPDATE_LEVEL_3,
    UPDATE_LEVEL_4,
    UPDATE_LEVEL_5
}