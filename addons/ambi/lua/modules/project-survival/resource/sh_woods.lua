local AddRes, AddChain = Ambi.Survival.AddResource, Ambi.Survival.AddResourceChain

------------------------------------------------------------------------------------
local WOOD = {
    [ 'tfa_rustalpha_stone_hatchet' ]   = { min = 1, max = 2, chance = 10, damage = 1 },
    [ 'surv_axe_stone' ]            = { min = 1, max = 4, chance = 50, damage = 4 },
    [ 'surv_axe_copper' ]           = { min = 1, max = 8, chance = 65, damage = 8 },
    [ 'surv_axe_iron' ]             = { min = 2, max = 20, chance = 75, damage = 12 },
    [ 'surv_axe_steel' ]            = { min = 3, max = 35, chance = 90, damage = 24 },
    [ 'surv_axe_titan' ]            = { min = 4, max = 50, chance = 95, damage = 32 },

    [ 'surv_axe_uranium' ]            = { min = 5, max = 35, chance = 25, damage = 80 },
}

local ITEMS = {
    { class = 'wood', instruments = WOOD },
}

local MODELS = {
    { mdl = 'models/props_foliage/ah_ash_tree_small001.mdl', color = Color( 255, 255, 255, 255 ), material = '', dropfloor = true },
    { mdl = 'models/props_foliage/ah_ash_tree_small001.mdl', color = Color( 156, 214, 154, 255 ), material = '', dropfloor = true },

    { mdl = 'models/props_foliage/rd_appletree01.mdl', color = Color( 237, 214, 153, 255 ), material = '', dropfloor = true },
    { mdl = 'models/props_foliage/rd_appletree01.mdl', color = Color( 227, 178, 178, 255 ), material = '', dropfloor = true },
    { mdl = 'models/props_foliage/rd_appletree01.mdl', color = Color( 136, 139, 148, 255 ), material = '', dropfloor = true },

    { mdl = 'models/props_foliage/tree_deciduous_01a-lod.mdl', color = Color( 140, 154, 143, 255 ), material = '', dropfloor = true },
    
    { mdl = 'models/props_foliage/ac_appletree01.mdl', color = Color( 255, 255, 255, 255 ), material = '', dropfloor = true },
    { mdl = 'models/props_foliage/ac_appletree01.mdl', color = Color( 245, 201, 166, 255 ), material = '', dropfloor = true },

    { mdl = 'models/props_foliage/ah_ash_tree001.mdl', color = Color( 255, 255, 255, 255 ), material = '', dropfloor = true },
    { mdl = 'models/props_foliage/ah_ash_tree001.mdl', color = Color( 223, 235, 129, 255 ), material = '', dropfloor = true },
    { mdl = 'models/props_foliage/ah_ash_tree001.mdl', color = Color( 89, 135, 100, 255 ), material = '', dropfloor = true },

    { mdl = 'models/props_foliage/tree_deciduous_02a.mdl', color = Color( 255, 255, 255, 255 ), material = '', dropfloor = true },

    { mdl = 'models/props_foliage/tree_deciduous_03a.mdl', color = Color( 255, 255, 255, 255 ), material = '', dropfloor = true },

    { mdl = 'models/props_foliage/ah_ash_tree_med.mdl', color = Color( 255, 255, 255, 255 ), material = '', dropfloor = true },

    { mdl = 'models/props_foliage/ah_apple_tree_single001.mdl', color = Color( 255, 255, 255, 255 ), material = '', dropfloor = true },
    { mdl = 'models/props_foliage/ah_apple_tree_single001.mdl', color = Color( 230, 143, 143, 255 ), material = '', dropfloor = true },
}

AddRes( 'Wood', MODELS, ITEMS, 2000, 3600 )

local MODELS = {
    { mdl = 'models/props_foliage/ac_appletree02.mdl', color = Color( 150, 246, 131), material = '', dropfloor = true },
}

AddRes( 'Wood Simple', MODELS, ITEMS, 4000, 6400 )

local MODELS = {
    { mdl = 'models/props_foliage/tree_deciduous_03a.mdl', color = Color( 255, 255, 255, 255 ) }
}

AddRes( 'Wood Desert', MODELS, ITEMS, 600, 1600 )

-------------------------------------------------------------------------------------------------------------------------------------
local MAP = 'gm_amb_remeselnik_island'

AddChain( 'Woods: Island', MAP, 'Все деревья на острове', {
    { vec = Vector( 5452, -7006, -141 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( 3991, -4485, -57 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( 1330, -7758, -171 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( -1403, -6784, 307 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( -3349, -7683, 520 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( -5791, -6190, 232 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( -8287, -4629, -190 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( -6512, -2115, 162 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( -6042, 2888, -334 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( -9327, 4528, -427 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( -6598, 7203, -409 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( -8327, 7560, -419 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( -3482, 7766, -387 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( -1121, 9078, -317 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( 1152, 8964, -269 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( 2080, 7639, -205 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( 5077, 8003, 178 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( 7428, 7529, 330 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( 6635, 4737, -7 ), ang = Angle( 0, 0, 0 ) },
}, {
    { name = 'Wood', time = 60 * 10 },
} )

AddChain( 'Woods: Desert', MAP, 'Все деревья в пустыне', {
    { vec = Vector( 14190, -15073, -4840 ), ang = Angle( 8, -179, 1 ) },
    { vec = Vector( 11385, -14634, -4845 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( 10320, -13000, -4845 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( 8242, -14271, -4845 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( 7971, -11222, -4845 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( 10928, -8512, -4845 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( 14292, -6071, -4845 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( 5567, -3931, -4845 ), ang = Angle( 0, 0, 0 ) },
}, {
    { name = 'Wood Desert', time = 60 * 25 },
} )

-- ------------------------------------------------------------------------------------------------------------------------
local MAP = 'gm_rhine'

AddChain( 'Woods', MAP, 'Все деревья', {
    { vec = Vector( 10836, 11329, -15831 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( 8879, 13000, -15493 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( 6978, 12003, -15051 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( 4666, 11966, -15049 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( 4478, 13808, -15245 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( 1728, 13526, -15224 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( 94, 11580, -15364 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( -93, 6863, -15726 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( 2689, 8963, -15252 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( 6422, 7017, -15939 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( 8443, 9071, -15886 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( 8744, 11280, -15672 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( 10293, 11435, -15782 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( 12827, 11026, -15863 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( 12216, 13748, -15633 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( 15299, 14832, -15663 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( 15736, 13134, -15465 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( 15776, 8805, -15861 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( 14791, 5961, -15909 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( 15437, 3489, -15712 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( 14101, 541, -15544 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( 12057, -2488, -15621 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( 10368, -3891, -15382 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( 10412, -6088, -14815 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( 6687, -7409, -15432 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( 6069, -10121, -15476 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( 7549, -9875, -15408 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( 8623, -12210, -15364 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( 10694, -12043, -15280 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( 10889, -9606, -15252 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( 13093, -10465, -15169 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( 5823, 917, -15815 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( 2718, -749, -15828 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( 4208, -2111, -15658 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( 5183, -5600, -15529 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( 4680, -7500, -15479 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( 1096, -12408, -15417 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( -1599, -10261, -14977 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( -6105, -11319, -14527 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( -8067, -13323, -14831 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( -9619, -15467, -15198 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( -12856, -12320, -15512 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( -12713, -8603, -15764 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( -10273, -6959, -15621 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( -11286, -4465, -15910 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( -10566, -703, -15845 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( -11860, 1981, -15854 ), ang = Angle( 0, 0, 0 ) },
    { vec = Vector( -10193, 4956, -15865 ), ang = Angle( 0, 0, 0 ) },
}, {
    { name = 'Wood Simple', time = 60 * 10 },
} )