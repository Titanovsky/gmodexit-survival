local UPDATE_LEVEL_1 = { -- To 1
    time = 200,
    hp = 3500,
    items = {
        [ 'iron' ] = 10,
        [ 'plastic' ] = 5
    }
}

local UPDATE_LEVEL_2 = {
    time = 250,
    hp = 5000,
    items = {
        [ 'iron' ] = 35,
        [ 'plastic' ] = 25,
        [ 'oil refinery fortified legs' ] = 1,
    }
}

local UPDATE_LEVEL_3 = {
    time = 300,
    hp = 7500,
    items = {
        [ 'iron' ] = 60,
        [ 'iron gear' ] = 2,
        [ 'plastic' ] = 50,
    }
}

local UPDATE_LEVEL_4 = {
    time = 400,
    hp = 9000,
    items = {
        [ 'steel' ] = 15,
        [ 'iron' ] = 128,
        [ 'iron bolt' ] = 5,
        [ 'plastic' ] = 16,
    }
}

local UPDATE_LEVEL_5 = { -- To 6
    time = 600,
    hp = 11200,
    color = Color( 232, 221, 125 ),
    items = {
        [ 'steel' ] = 30,
        [ 'iron pieces' ] = 50,
        [ 'iron bolt' ] = 5,
        [ 'iron gear' ] = 10,
        [ 'oil refinery big tank' ] = 1,
    }
}

local ITEMS_LEVEL_1 = { 'oil 1' }
local ITEMS_LEVEL_2 = { 'oil 2' }
local ITEMS_LEVEL_3 = { 'oil 3' }
local ITEMS_LEVEL_4 = { 'oil 4' }
local ITEMS_LEVEL_5 = { 'oil 5' }

Ambi.Survival.buildings_updates[ 'oil refinery' ] = {
    UPDATE_LEVEL_1,
    UPDATE_LEVEL_2,
    UPDATE_LEVEL_3,
    UPDATE_LEVEL_4,
    UPDATE_LEVEL_5
}

Ambi.Survival.buildings_crafts[ 'oil refinery' ] = {
    ITEMS_LEVEL_1,
    ITEMS_LEVEL_2,
    ITEMS_LEVEL_3,
    ITEMS_LEVEL_4,
    ITEMS_LEVEL_5
}