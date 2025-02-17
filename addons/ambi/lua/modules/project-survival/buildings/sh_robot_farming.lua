local ITEMS_LEVEL_1 = {}
local ITEMS_LEVEL_2 = {}
local ITEMS_LEVEL_3 = {}
local ITEMS_LEVEL_4 = {}
local ITEMS_LEVEL_5 = {}

local UPDATE_LEVEL_1 = { -- To 2
    time = 60,
    hp = 2000,
    items = {
        [ 'iron' ] = 99999,
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

Ambi.Survival.buildings_crafts[ 'robot farming' ] = {
    ITEMS_LEVEL_1,
    ITEMS_LEVEL_2,
    ITEMS_LEVEL_3,
    ITEMS_LEVEL_4,
    ITEMS_LEVEL_5,
}

Ambi.Survival.buildings_updates[ 'robot farming' ] = {
    UPDATE_LEVEL_1,
    UPDATE_LEVEL_2,
    UPDATE_LEVEL_3,
    UPDATE_LEVEL_4,
    UPDATE_LEVEL_5
}