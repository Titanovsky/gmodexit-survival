local ITEMS_LEVEL_1 = {}
local ITEMS_LEVEL_2 = {}
local ITEMS_LEVEL_3 = {}
local ITEMS_LEVEL_4 = {}
local ITEMS_LEVEL_5 = {}

local UPDATE_LEVEL_1 = { -- To 2
    time = 200,
    hp = 5000,
    items = {
        [ 'iron' ] = 100,
    }
}

local UPDATE_LEVEL_2 = { -- 3
    time = 400,
    hp = 10000,
    items = {
        [ 'iron' ] = 255,
        [ 'steel' ] = 60,
        [ 'factory spec1' ] = 1,
    }
}

local UPDATE_LEVEL_3 = { -- 4
    time = 600,
    hp = 15000,
    items = {
        [ 'iron' ] = 400,
        [ 'steel' ] = 120,
        [ 'titan' ] = 15,
    }
}

local UPDATE_LEVEL_4 = { -- 5
    time = 1600,
    hp = 25000,
     items = {
        [ 'brick' ] = 1200,
        [ 'glass' ] = 200,
        [ 'copper' ] = 300,
        [ 'copper wire' ] = 15,
        [ 'copper tube' ] = 4,
        [ 'iron' ] = 500,
        [ 'iron pieces' ] = 50,
        [ 'iron bolt' ] = 25,
        [ 'steel' ] = 255,
        [ 'steel fragments' ] = 5,
        [ 'titan' ] = 25,
        [ 'factory spec2' ] = 1,
    }
}

Ambi.Survival.buildings_crafts[ 'factory' ] = {
    ITEMS_LEVEL_1,
    ITEMS_LEVEL_2,
    ITEMS_LEVEL_3,
    ITEMS_LEVEL_4,
    ITEMS_LEVEL_5,
}

Ambi.Survival.buildings_updates[ 'factory' ] = {
    UPDATE_LEVEL_1,
    UPDATE_LEVEL_2,
    UPDATE_LEVEL_3,
    UPDATE_LEVEL_4
}