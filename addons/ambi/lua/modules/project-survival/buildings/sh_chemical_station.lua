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
    'plastic chemical', 'glass chemical', 'polyethylene', 'phosphorus',
    'phosphorus red', 'explosive', 'gunpowder'
}

local ITEMS_LEVEL_1 = GetItems( 1, ITEMS )
local ITEMS_LEVEL_2 = GetItems( 2, ITEMS )
local ITEMS_LEVEL_3 = GetItems( 3, ITEMS )
local ITEMS_LEVEL_4 = GetItems( 4, ITEMS )
local ITEMS_LEVEL_5 = GetItems( 5, ITEMS )

local UPDATE_LEVEL_1 = { -- To 2
    time = 60,
    hp = 1000,
    items = {
        [ 'copper' ] = 5,
        [ 'flask' ] = 4,
    }
}

local UPDATE_LEVEL_2 = { -- 3
    time = 60,
    hp = 2000,
    items = {
        [ 'copper' ] = 25,
        [ 'iron' ] = 10,
        [ 'flask' ] = 3,
        [ 'glass' ] = 50,
    }
}

local UPDATE_LEVEL_3 = { -- 4
    time = 120,
    hp = 3000,
    items = {
        [ 'copper' ] = 50,
        [ 'iron' ] = 25,
        [ 'steel' ] = 5,
        [ 'flask' ] = 2,
        [ 'glass' ] = 150,
    }
}

local UPDATE_LEVEL_4 = { -- 5
    time = 300,
    hp = 4000,
    items = {
        [ 'titan' ] = 4,
        [ 'flask' ] = 2,
        [ 'glass' ] = 350,
    }
}

Ambi.Survival.buildings_crafts[ 'chemical station' ] = {
    ITEMS_LEVEL_1,
    ITEMS_LEVEL_2,
    ITEMS_LEVEL_3,
    ITEMS_LEVEL_4,
    ITEMS_LEVEL_5,
}

Ambi.Survival.buildings_updates[ 'chemical station' ] = {
    UPDATE_LEVEL_1,
    UPDATE_LEVEL_2,
    UPDATE_LEVEL_3,
    UPDATE_LEVEL_4
}