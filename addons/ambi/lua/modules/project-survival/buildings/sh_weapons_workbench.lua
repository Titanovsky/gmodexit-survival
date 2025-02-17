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
    '9mm', 'shell', 'smg ammo', 'rifle ammo', 'sniper rifle ammo', 
    'revolver', '9mm pistol', 'p250', 'shotgun', 'f1', 'mosin', 'mosin bayonet', 'mosin scoped', 'ppsh', 'ptrs', 'mosinka ammo', 'ppsh ammo', 'ptrs ammo'
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
        [ 'iron' ] = 15,
        [ 'copper' ] = 25,
    }
}

local UPDATE_LEVEL_2 = { -- 3
    time = 120,
    hp = 1800,
    items = {
        [ 'iron' ] = 25,
        [ 'plastic' ] = 90,
        [ 'copper' ] = 75,
        [ 'weapons workbench spec1' ] = 1
    }
}

local UPDATE_LEVEL_3 = { -- 4
    time = 180,
    hp = 2400,
    items = {
        [ 'iron' ] = 50,
        [ 'steel' ] = 5,
        [ 'steel tube' ] = 2,
        [ 'copper' ] = 250
    }
}

local UPDATE_LEVEL_4 = { -- 5
    time = 300,
    hp = 3000,
    items = {
        [ 'iron' ] = 100,
        [ 'steel' ] = 25,
        [ 'steel tube' ] = 4,
        [ 'steel fragments' ] = 4,
        [ 'copper' ] = 300,
        [ 'weapons workbench spec1' ] = 2,
    }
}

Ambi.Survival.buildings_crafts[ 'weapons workbench' ] = {
    ITEMS_LEVEL_1,
    ITEMS_LEVEL_2,
    ITEMS_LEVEL_3,
    ITEMS_LEVEL_4,
    ITEMS_LEVEL_5,
    ITEMS_LEVEL_6
}

Ambi.Survival.buildings_updates[ 'weapons workbench' ] = {
    UPDATE_LEVEL_1,
    UPDATE_LEVEL_2,
    UPDATE_LEVEL_3,
    UPDATE_LEVEL_4,
    UPDATE_LEVEL_5
}