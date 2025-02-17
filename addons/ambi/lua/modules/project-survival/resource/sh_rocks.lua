local AddRes, AddChain = Ambi.Survival.AddResource, Ambi.Survival.AddResourceChain

------------------------------------------------------------------------------------
local COAL = {
    [ 'tfa_rustalpha_stone_hatchet' ]   = { min = 1, max = 2, chance = 10, damage = 1 },
    [ 'surv_pickaxe_stone' ]            = { min = 1, max = 8, chance = 55, damage = 2 },
    [ 'surv_pickaxe_copper' ]           = { min = 5, max = 20, chance = 70, damage = 4 },
    [ 'surv_pickaxe_iron' ]             = { min = 10, max = 30, chance = 85, damage = 8 },
    [ 'surv_pickaxe_steel' ]            = { min = 15, max = 40, chance = 90, damage = 12 },
    [ 'surv_pickaxe_titan' ]            = { min = 30, max = 50, chance = 95, damage = 25 },

    [ 'surv_pickaxe_uranium' ]            = { min = 1, max = 200, chance = 8, damage = 25 },
}

local STONE = {
    [ 'tfa_rustalpha_stone_hatchet' ]   = { min = 1, max = 2, chance = 20, damage = 1 },
    [ 'surv_pickaxe_stone' ]            = { min = 1, max = 5, chance = 55, damage = 5 },
    [ 'surv_pickaxe_copper' ]           = { min = 1, max = 8, chance = 65, damage = 10 },
    [ 'surv_pickaxe_iron' ]             = { min = 1, max = 16, chance = 70, damage = 20 },
    [ 'surv_pickaxe_steel' ]            = { min = 2, max = 24, chance = 85, damage = 30 },
    [ 'surv_pickaxe_titan' ]            = { min = 3, max = 48, chance = 90, damage = 40 },

    [ 'surv_pickaxe_uranium' ]            = { min = 1, max = 200, chance = 8, damage = 25 },
}

local SULFUR = {
    [ 'surv_pickaxe_stone' ]            = { min = 1, max = 2, chance = 10, damage = 2 },
    [ 'surv_pickaxe_copper' ]           = { min = 1, max = 4, chance = 25, damage = 4 },
    [ 'surv_pickaxe_iron' ]             = { min = 1, max = 8, chance = 40, damage = 8 },
    [ 'surv_pickaxe_steel' ]            = { min = 1, max = 12, chance = 55, damage = 12 },
    [ 'surv_pickaxe_titan' ]            = { min = 1, max = 24, chance = 75, damage = 25 },

    [ 'surv_pickaxe_uranium' ]            = { min = 1, max = 100, chance = 8, damage = 25 },
}

local COPPER = {
    [ 'surv_pickaxe_stone' ]            = { min = 1, max = 2, chance = 40, damage = 2 },
    [ 'surv_pickaxe_copper' ]           = { min = 1, max = 4, chance = 75, damage = 5 },
    [ 'surv_pickaxe_iron' ]             = { min = 1, max = 8, chance = 85, damage = 10 },
    [ 'surv_pickaxe_steel' ]            = { min = 2, max = 12, chance = 90, damage = 15 },
    [ 'surv_pickaxe_titan' ]            = { min = 3, max = 24, chance = 95, damage = 25 },

    [ 'surv_pickaxe_uranium' ]            = { min = 1, max = 100, chance = 8, damage = 25 },
}

local COPPER_ADV = {
    [ 'surv_pickaxe_stone' ]            = { min = 1, max = 2, chance = 50, damage = 2 },
    [ 'surv_pickaxe_copper' ]           = { min = 1, max = 2, chance = 80, damage = 5 },
    [ 'surv_pickaxe_iron' ]             = { min = 1, max = 4, chance = 90, damage = 10 },
    [ 'surv_pickaxe_steel' ]            = { min = 1, max = 8, chance = 95, damage = 15 },
    [ 'surv_pickaxe_titan' ]            = { min = 1, max = 14, chance = 99, damage = 25 },

    [ 'surv_pickaxe_uranium' ]            = { min = 1, max = 200, chance = 8, damage = 25 },
}

local IRON = {
    [ 'surv_pickaxe_copper' ]           = { min = 1, max = 4, chance = 75, damage = 5 },
    [ 'surv_pickaxe_iron' ]             = { min = 1, max = 8, chance = 85, damage = 10 },
    [ 'surv_pickaxe_steel' ]            = { min = 2, max = 12, chance = 90, damage = 15 },
    [ 'surv_pickaxe_titan' ]            = { min = 3, max = 24, chance = 95, damage = 25 },

    [ 'surv_pickaxe_uranium' ]            = { min = 1, max = 55, chance = 8, damage = 25 },
}

local IRON_ADV = {
    [ 'surv_pickaxe_copper' ]           = { min = 1, max = 2, chance = 85, damage = 5 },
    [ 'surv_pickaxe_iron' ]             = { min = 1, max = 4, chance = 90, damage = 10 },
    [ 'surv_pickaxe_steel' ]            = { min = 1, max = 8, chance = 95, damage = 15 },
    [ 'surv_pickaxe_titan' ]            = { min = 1, max = 12, chance = 99, damage = 25 },

    [ 'surv_pickaxe_uranium' ]            = { min = 1, max = 55, chance = 8, damage = 25 },
}

local TITAN = {
    [ 'surv_pickaxe_steel' ]            = { min = 1, max = 2, chance = 40, damage = 20 },
    [ 'surv_pickaxe_titan' ]            = { min = 1, max = 4, chance = 75, damage = 40 },

    [ 'surv_pickaxe_uranium' ]            = { min = 1, max = 10, chance = 8, damage = 55 },
}

local ITEMS = {
    { class = 'coal', instruments = COAL },
    { class = 'coal', instruments = COAL },    
    { class = 'coal', instruments = COAL },
    { class = 'stone', instruments = STONE },
    { class = 'stone', instruments = STONE },
    { class = 'stone', instruments = STONE },
    { class = 'stone', instruments = STONE },
    { class = 'sulfur', instruments = SULFUR },
    { class = 'copper ore', instruments = COPPER },
    { class = 'copper ore', instruments = COPPER },
    { class = 'iron ore', instruments = IRON },
    { class = 'iron ore', instruments = IRON },
    { class = 'titan ore', instruments = TITAN },
}

local ITEMS_COPPER = {
    { class = 'coal', instruments = COAL },
    { class = 'coal', instruments = COAL },
    { class = 'stone', instruments = STONE },
    { class = 'stone', instruments = STONE },
    { class = 'copper ore', instruments = COPPER_ADV },
    { class = 'copper ore', instruments = COPPER_ADV },
    { class = 'copper ore', instruments = COPPER_ADV },
    { class = 'copper ore', instruments = COPPER_ADV },
    { class = 'copper ore', instruments = COPPER_ADV },
    { class = 'iron ore', instruments = IRON },
    { class = 'titan ore', instruments = TITAN },
}

local ITEMS_IRON = {
    { class = 'coal', instruments = COAL },
    { class = 'coal', instruments = COAL },
    { class = 'stone', instruments = STONE },
    { class = 'stone', instruments = STONE },
    { class = 'copper ore', instruments = COPPER },
    { class = 'copper ore', instruments = COPPER },
    { class = 'iron ore', instruments = IRON_ADV },
    { class = 'iron ore', instruments = IRON_ADV },
    { class = 'iron ore', instruments = IRON_ADV },
    { class = 'iron ore', instruments = IRON_ADV },
    { class = 'titan ore', instruments = TITAN },
}

local ITEMS_SULFUR = {
    { class = 'coal', instruments = COAL },
    { class = 'coal', instruments = COAL },
    { class = 'stone', instruments = STONE },
    { class = 'stone', instruments = STONE },
    { class = 'sulfur', instruments = SULFUR },
    { class = 'sulfur', instruments = SULFUR },
    { class = 'sulfur', instruments = SULFUR },
    { class = 'copper ore', instruments = COPPER },
    { class = 'iron ore', instruments = IRON },
    { class = 'titan ore', instruments = TITAN },
}

local ITEMS_COMMON = {
    { class = 'coal', instruments = COAL },
    { class = 'coal', instruments = COAL },
    { class = 'coal', instruments = COAL },
    { class = 'stone', instruments = STONE },
    { class = 'stone', instruments = STONE },
    { class = 'stone', instruments = STONE },
    { class = 'copper ore', instruments = COPPER },
    { class = 'iron ore', instruments = IRON },
    { class = 'titan ore', instruments = TITAN },
}

local MODELS_ROCK = {
    { mdl = 'models/galaxy/rust/rockore1.mdl', color = Color( 255, 255, 255 ) } -- TODO: material = 'phoenix_storms/gear', color = '255, 255, 255, 255'
}

local MODELS_ROCK2 = {
    { mdl = 'models/galaxy/rust/rockore1.mdl', color = Color( 255, 255, 255 ), skin = 0 }
}

local MODELS_ROCK3 = {
    { mdl = 'models/galaxy/rust/rockore1.mdl', color = Color( 255, 255, 255 ), skin = 2 }
}

local MODELS_ROCK_COPPER = {
    { mdl = 'models/galaxy/rust/rockore1.mdl', color = Color( 232, 144, 94, 255 ), skin = 1 }
}

local MODELS_ROCK_IRON = {
    { mdl = 'models/galaxy/rust/rockore1.mdl', color = Color( 163, 146, 93, 255 ), skin = 1 }
}

local MODELS_ROCK_SULFUR = {
    { mdl = 'models/galaxy/rust/rockore1.mdl', color = Color( 193, 204, 103, 255 ), skin = 2 }
}
AddRes( 'Stone +Sulfur', MODELS_ROCK_SULFUR, ITEMS_SULFUR, 1000, 3200 )

local MODELS_ROCK_COMMON = {
    { mdl = 'models/props_wasteland/rockcliff05b.mdl', color = Color( 130, 167, 188, 255 ), material = 'models/props_c17/FurnitureMetal001a' }
}
AddRes( 'Rock Common', MODELS_ROCK_COMMON, ITEMS_COMMON, 20000, 29222 )

-------------------------------------------------------------------------------------------------------------------------------------
local MODELS = {
    { mdl = 'models/galaxy/rust/rockore1.mdl', color = Color( 72, 72, 72, 255 ) }
}

local ITEMS = {
    { class = 'coal', instruments = COAL },
    { class = 'coal', instruments = COAL },
    { class = 'coal', instruments = COAL },
    { class = 'coal', instruments = COAL },
    { class = 'stone', instruments = STONE },
    { class = 'stone', instruments = STONE },
    { class = 'stone', instruments = STONE },
    { class = 'sulfur', instruments = SULFUR },
    { class = 'copper ore', instruments = COPPER },
    { class = 'iron ore', instruments = IRON },
}

AddRes( 'Rock Coal', MODELS, ITEMS, 1200, 2400 )

-------------------------------------------------------------------------------------------------------------------------------------
local MODELS = {
    { mdl = 'models/galaxy/rust/rockore1.mdl', color = Color( 255, 255, 255, 255 ) }
}

local ITEMS = {
    { class = 'stone', instruments = STONE },
    { class = 'stone', instruments = STONE },
    { class = 'stone', instruments = STONE },
    { class = 'stone', instruments = STONE },
    { class = 'stone', instruments = STONE },
    { class = 'coal', instruments = COAL },
    { class = 'coal', instruments = COAL },
    { class = 'sulfur', instruments = SULFUR },
    { class = 'copper ore', instruments = COPPER },
    { class = 'iron ore', instruments = IRON },
}

AddRes( 'Rock Stone', MODELS, ITEMS, 1200, 2400 )

-------------------------------------------------------------------------------------------------------------------------------------
local MODELS = {
    { mdl = 'models/galaxy/rust/rockore1.mdl', color = Color( 192, 112, 72, 255 ) }
}

local ITEMS = {
    { class = 'copper ore', instruments = COPPER },
    { class = 'copper ore', instruments = COPPER },
    { class = 'copper ore', instruments = COPPER },
    { class = 'copper ore', instruments = COPPER },
    { class = 'stone', instruments = STONE },
    { class = 'stone', instruments = STONE },
    { class = 'coal', instruments = COAL },
    { class = 'coal', instruments = COAL },
    { class = 'sulfur', instruments = SULFUR },
    { class = 'iron ore', instruments = IRON },
}

AddRes( 'Rock Copper', MODELS, ITEMS, 1200, 2400 )

-------------------------------------------------------------------------------------------------------------------------------------
local MODELS = {
    { mdl = 'models/galaxy/rust/rockore1.mdl', skin = 1, color = Color( 187, 224, 224, 255 ) }
}

local ITEMS = {
    { class = 'iron ore', instruments = IRON },
    { class = 'iron ore', instruments = IRON },
    { class = 'iron ore', instruments = IRON },
    { class = 'iron ore', instruments = IRON },
    { class = 'copper ore', instruments = COPPER },
    { class = 'stone', instruments = STONE },
    { class = 'coal', instruments = COAL },
    { class = 'coal', instruments = COAL },
    { class = 'sulfur', instruments = SULFUR },
}

AddRes( 'Rock Iron', MODELS, ITEMS, 1200, 2400 )

-------------------------------------------------------------------------------------------------------------------------------------
local INST = {
    [ 'surv_pickaxe_stone' ]            = { min = 1, max = 2, chance = 10, damage = 2 },
    [ 'surv_pickaxe_copper' ]           = { min = 1, max = 3, chance = 25, damage = 4 },
    [ 'surv_pickaxe_iron' ]             = { min = 1, max = 4, chance = 40, damage = 8 },
    [ 'surv_pickaxe_steel' ]            = { min = 1, max = 5, chance = 55, damage = 12 },
    [ 'surv_pickaxe_titan' ]            = { min = 1, max = 6, chance = 75, damage = 25 },
}

local MODELS = {
    { mdl = 'models/galaxy/rust/rockore1.mdl', material = 'phoenix_storms/wire/pcb_red', color = Color( 255, 0, 0, 255 ) }
}

local ITEMS = {
    { class = 'red stone', instruments = INST },
    { class = 'red stone', instruments = INST },
    { class = 'red stone', instruments = INST },
    { class = 'red stone', instruments = INST },
    { class = 'stone', instruments = STONE },
}

AddRes( 'Rock Red Stone', MODELS, ITEMS, 1200, 2400 )

-------------------------------------------------------------------------------------------------------------------------------------
local MAP = 'gm_amb_remeselnik_island'

AddChain( 'Rocks: Common', MAP, 'Камни Общие', {
    { vec = Vector( 1751, -8458, -88 ), ang = Angle( 11, -94, -3 ) },
    { vec = Vector( 423, 9349, -194 ), ang = Angle( 6, 48, -8 ) },

    { vec = Vector( 13797, -15038, -4594 ), ang = Angle( 0, 145, 0 ) },
}, {
    { name = 'Rock Common', time = 60 * 35 },
} )

AddChain( 'Rocks: Остров', MAP, 'Камни Общие', {
    { vec = Vector( 449, 5702, 394 ), ang = Angle( 44, 40, 10 ) },
    { vec = Vector( -718, 5524, 569 ), ang = Angle( 32, 108, -18 ) },
    { vec = Vector( -1467, 4997, 921 ), ang = Angle( 24, 141, -5 ) },
    { vec = Vector( -2474, 533, 665 ), ang = Angle( 1, 131, 15 ) },
    { vec = Vector( 952, -1076, 552 ), ang = Angle( -14, 170, 23 ) },
    { vec = Vector( 5690, -2835, 161 ), ang = Angle( 14, -158, 5 ) },
    { vec = Vector( 2463, -5500, -104 ), ang = Angle( -2, 57, 14 ) },
    { vec = Vector( 2740, -7652, -242 ), ang = Angle( -4, 96, 0 ) },
    { vec = Vector( 7921, -8622, -512 ), ang = Angle( -7, -147, -14 ) },
    { vec = Vector( 7858, -4644, -88 ), ang = Angle( 20, -49, -8 ) },
    { vec = Vector( -9012, 2235, -480 ), ang = Angle( 3, -168, 20 ) },
    { vec = Vector( -6815, 9443, -452 ), ang = Angle( -3, 170, 6 ) },
}, {
    { name = 'Rock Stone', time = 60 * 10 },
    { name = 'Rock Stone', time = 60 * 10 },
    { name = 'Rock Coal', time = 60 * 10 },
    { name = 'Rock Copper', time = 60 * 10 },
    { name = 'Rock Iron', time = 60 * 10 },
} )

AddChain( 'Rocks: Пустыня', MAP, 'Камни на предгорке', {
    { vec = Vector( 13893, -14937, -4845 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( 13784, -14913, -4845 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( 13705, -14902, -4845 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( 13744, -14814, -4845 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( 13829, -14807, -4845 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( 13908, -14839, -4845 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( 13673, -14755, -4845 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( 13737, -14686, -4845 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( 13827, -14691, -4845 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( 13908, -14727, -4845 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( 13894, -14632, -4845 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( 13794, -14599, -4845 ), ang = Angle( 0, 0, 0 ) },

    { vec = Vector( 10613, -14063, -4845 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( 9417, -13121, -4845 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( 10234, -12219, -4845 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( 11228, -10836, -4845 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( 8943, -10792, -4845 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( 6706, -11697, -4845 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( 4868, -12483, -4845 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( 5125, -10057, -4845 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( 6305, -7949, -4845 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( 7803, -7554, -4845 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( 8514, -5011, -4845 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( 13668, -8236, -4845 ), ang = Angle( 0, 0, 0 ) },
}, {
    { name = 'Rock Coal', time = 60 * 10 },
    { name = 'Rock Stone', time = 60 * 10 },
    { name = 'Rock Copper', time = 60 * 10 },
    { name = 'Rock Iron', time = 60 * 10 },
    { name = 'Rock Red Stone', time = 60 * 5 },
} )

AddChain( 'Rocks: Пустыня +Sulfur', MAP, 'Камни Сульфурные', {
    { vec = Vector( 14617, -10410, -4845 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( 14629, -10834, -4845 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( 14653, -12563, -4845 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( 13965, -14687, -4845 ), ang = Angle( 0, 0, 0 ) },
}, {
    { name = 'Stone +Sulfur', time = 60 * 5 },
    { name = 'Stone +Sulfur', time = 60 * 5 },
    { name = 'Rock Red Stone', time = 60 * 5 },
} )

AddChain( 'Rocks: Остров +Sulfur', MAP, 'Камни Сульфурные', {
    { vec = Vector( -1729, -5145, 1009 ), ang = Angle( 13, -140, -30 ) },
    { vec = Vector( 1847, -3287, 792 ), ang = Angle( 0, 56, 49 ) },
    { vec = Vector( -10958, -1440, 195 ), ang = Angle( 52, -156, 10 ) },
}, {
    { name = 'Stone +Sulfur', time = 60 * 10 },
} )


AddChain( 'Rocks: Зима', MAP, 'Камни', {
    { vec = Vector( 8813, -10888, -6552 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( 4727, -10221, -6547 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( 6032, -7618, -7007 ), ang = Angle( 23, 75, 5 ) },
    { vec = Vector( 6320, -6299, -6465 ), ang = Angle( 28, 67, 46 ) },
}, {
    { name = 'Rock Coal', time = 60 * 10 },
    { name = 'Rock Stone', time = 60 * 10 },
    { name = 'Rock Copper', time = 60 * 10 },
    { name = 'Rock Iron', time = 60 * 10 },
    { name = 'Rock Red Stone', time = 60 * 5 },
} )

-- ------------------------------------------------------------------------------------------------------------------------------------------------------
local MAP = 'gm_rhine'

AddChain( 'Rocks: Common', MAP, 'Камни Общие', {
    { vec = Vector( -12335, 7300, -15690 ), ang = Angle( 1, 127, 0 ) },
    { vec = Vector( -11173, 265, -15699 ), ang = Angle( 0, 106, 0 ) },
    { vec = Vector( 6239, 1764, -15770 ), ang = Angle( -2, -133, 13 ) },
}, {
    { name = 'Rock Common', time = 60 * 35 },
} )

AddChain( 'Rocks: Остров', MAP, 'Камни Общие', {
    { vec = Vector( 4484, -1301, -15754 ), ang = Angle( 0, 180, 0 ) },
    { vec = Vector( 6562, -1156, -15760 ), ang = Angle( 0, 180, 0 ) },
    { vec = Vector( 10361, -5512, -15035 ), ang = Angle( 0, 180, 0 ) },
    { vec = Vector( 14337, -5391, -15188 ), ang = Angle( 0, 180, 0 ) },
    { vec = Vector( 14836, -11382, -15220 ), ang = Angle( 0, 180, 0 ) },
    { vec = Vector( 9670, -12630, -15355 ), ang = Angle( 0, 180, 0 ) },
    { vec = Vector( 7518, -14411, -15416 ), ang = Angle( 0, 180, 0 ) },
    { vec = Vector( -663, -13938, -15388 ), ang = Angle( 0, 180, 0 ) },
    { vec = Vector( -4497, -11337, -15004 ), ang = Angle( 0, 180, 0 ) },
    { vec = Vector( -7496, -13545, -14888 ), ang = Angle( 0, 180, 0 ) },
    { vec = Vector( -9711, -15399, -15247 ), ang = Angle( 0, 180, 0 ) },
    { vec = Vector( -13188, -11577, -15703 ), ang = Angle( 0, 180, 0 ) },
    { vec = Vector( -13008, -14037, -15140 ), ang = Angle( 0, 180, 0 ) },
    { vec = Vector( -14013, -15077, -15249 ), ang = Angle( 0, 180, 0 ) },
    { vec = Vector( -14670, -15860, -15019 ), ang = Angle( 0, 180, 0 ) },
    { vec = Vector( -15809, -14376, -15794 ), ang = Angle( 0, 180, 0 ) },
    { vec = Vector( -15793, -13111, -15839 ), ang = Angle( 0, 180, 0 ) },
    { vec = Vector( -15782, -10972, -15869 ), ang = Angle( 0, 180, 0 ) },
    { vec = Vector( -14209, -10015, -15826 ), ang = Angle( 0, 180, 0 ) },
    { vec = Vector( -12635, -9451, -15817 ), ang = Angle( 0, 180, 0 ) },
    { vec = Vector( -12835, -6885, -15900 ), ang = Angle( 0, 180, 0 ) },
    { vec = Vector( -10291, -6656, -15698 ), ang = Angle( 0, 180, 0 ) },
    { vec = Vector( -10398, -4568, -15901 ), ang = Angle( 0, 180, 0 ) },
    { vec = Vector( -5844, -5407, -14896 ), ang = Angle( 0, 180, 0 ) },
    { vec = Vector( -4871, -8066, -14658 ), ang = Angle( 0, 180, 0 ) },
    { vec = Vector( -3288, -8063, -14889 ), ang = Angle( 0, 180, 0 ) },
    { vec = Vector( -1287, -6698, -15305 ), ang = Angle( 0, 180, 0 ) },
    { vec = Vector( 643, -6284, -15240 ), ang = Angle( 0, 180, 0 ) },
    { vec = Vector( 259, -3267, -15324 ), ang = Angle( 0, 180, 0 ) },
    { vec = Vector( 2677, -266, -15908 ), ang = Angle( 0, 180, 0 ) },
    { vec = Vector( 6573, 1405, -15894 ), ang = Angle( 0, 180, 0 ) },
    { vec = Vector( 9951, 4309, -15911 ), ang = Angle( 0, 180, 0 ) },
    { vec = Vector( 13541, 2541, -15700 ), ang = Angle( 0, 180, 0 ) },
    { vec = Vector( 14859, 6403, -16048 ), ang = Angle( 0, 180, 0 ) },
    { vec = Vector( 10460, 13544, -15511 ), ang = Angle( 0, 180, 0 ) },
    { vec = Vector( 14634, 11371, -15823 ), ang = Angle( 0, 180, 0 ) },
    { vec = Vector( 9750, 10016, -15936 ), ang = Angle( 0, 180, 0 ) },
    { vec = Vector( 5684, 11877, -15116 ), ang = Angle( 0, 180, 0 ) },
    { vec = Vector( 3908, 9409, -15238 ), ang = Angle( 0, 180, 0 ) },
    { vec = Vector( -652, 5392, -15941 ), ang = Angle( 0, 180, 0 ) },
    { vec = Vector( -2960, 11840, -15425 ), ang = Angle( 0, 180, 0 ) },
    { vec = Vector( -9318, 14238, -15427 ), ang = Angle( 0, 180, 0 ) },
    { vec = Vector( -9142, 11899, -15254 ), ang = Angle( 0, 180, 0 ) },
}, {
    { name = 'Rock Stone', time = 60 * 10 },
    { name = 'Rock Stone', time = 60 * 10 },
    { name = 'Rock Coal', time = 60 * 10 },
    { name = 'Rock Copper', time = 60 * 10 },
    { name = 'Rock Copper', time = 60 * 10 },
    { name = 'Rock Iron', time = 60 * 10 },
    { name = 'Rock Iron', time = 60 * 10 },
    { name = 'Rock Red Stone', time = 60 * 5 },
} )

AddChain( 'Rocks: Пустыня +Sulfur', MAP, 'Камни Сульфурные', {
    { vec = Vector( -14866, 6661, -15717 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( -12954, 7749, -15935 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( -15030, 10068, -15732 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( -14073, 12006, -15582 ), ang = Angle( 0, 0, 0 ) },
}, {
    { name = 'Stone +Sulfur', time = 60 * 5 },
    { name = 'Stone +Sulfur', time = 60 * 5 },
    { name = 'Rock Red Stone', time = 60 * 5 },
} )