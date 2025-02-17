local UPDATE_LEVEL_1 = { -- To 1
    time = 60,
    hp = 2000,
    items = {
        [ 'iron' ] = 25,
        [ 'copper' ] = 8
    }
}

local UPDATE_LEVEL_2 = {
    time = 60,
    hp = 4000,
    items = {
        [ 'iron' ] = 52,
        [ 'plastic' ] = 15,
        [ 'oil pumper additional shoulder' ] = 1,
    }
}

local UPDATE_LEVEL_3 = {
    time = 60,
    hp = 6000,
    items = {
        [ 'steel' ] = 5,
        [ 'steel fragments' ] = 1,
    }
}

local UPDATE_LEVEL_4 = {
    time = 120,
    hp = 8000,
    items = {
        [ 'steel' ] = 5,
        [ 'steel tube' ] = 2,
        [ 'steel fragments' ] = 4,
    }
}

local UPDATE_LEVEL_5 = { -- To 6
    time = 180,
    hp = 16000,
    items = {
        [ 'titan plate' ] = 4,
        [ 'oil pumper strong cables' ] = 1,
    }
}

Ambi.Survival.buildings_updates[ 'oil pumper' ] = {
    UPDATE_LEVEL_1,
    UPDATE_LEVEL_2,
    UPDATE_LEVEL_3,
    UPDATE_LEVEL_4,
    UPDATE_LEVEL_5
}
