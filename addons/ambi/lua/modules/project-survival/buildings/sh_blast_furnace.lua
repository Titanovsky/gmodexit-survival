local function GetItems( nTier, tItems )
    local items = {}

    for _, item in ipairs( tItems ) do
        local craft = item..' t'..nTier
        --if not Ambi.SimpleInventory.GetCraft( craft ) then print( item ) continue end

        items[ #items + 1 ] = craft
    end

    return items
end

local ITEMS = {
    'titan', 'steel'
}

local ITEMS_LEVEL_1 = GetItems( 1, ITEMS )
local ITEMS_LEVEL_2 = GetItems( 2, ITEMS )
local ITEMS_LEVEL_3 = GetItems( 3, ITEMS )
local ITEMS_LEVEL_4 = GetItems( 4, ITEMS )
local ITEMS_LEVEL_5 = GetItems( 5, ITEMS )

local UPDATE_LEVEL_1 = { -- To 2
    time = 200,
    hp = 5000,
    items = {
        [ 'brick' ] = 25,
        [ 'copper' ] = 75,
    }
}

local UPDATE_LEVEL_2 = { -- 3
    time = 400,
    hp = 10000,
    items = {
        [ 'brick' ] = 25,
        [ 'iron' ] = 50,
        [ 'blast furnace spec1' ] = 1,
    }
}

local UPDATE_LEVEL_3 = { -- 4
    time = 600,
    hp = 15000,
    items = {
        [ 'brick' ] = 25,
        [ 'steel' ] = 25,
        [ 'titan' ] = 1,
    }
}

local UPDATE_LEVEL_4 = { -- 5
    time = 1600,
    hp = 25000,
    items = {
        [ 'brick' ] = 500,
        [ 'copper' ] = 50,
        [ 'iron' ] = 25,
        [ 'steel' ] = 10,
        [ 'titan' ] = 2,
        [ 'blast furnace spec2' ] = 1,
    }
}

Ambi.Survival.buildings_crafts[ 'blast furnace' ] = {
    ITEMS_LEVEL_1,
    ITEMS_LEVEL_2,
    ITEMS_LEVEL_3,
    ITEMS_LEVEL_4,
    ITEMS_LEVEL_5,
}

Ambi.Survival.buildings_updates[ 'blast furnace' ] = {
    UPDATE_LEVEL_1,
    UPDATE_LEVEL_2,
    UPDATE_LEVEL_3,
    UPDATE_LEVEL_4
}