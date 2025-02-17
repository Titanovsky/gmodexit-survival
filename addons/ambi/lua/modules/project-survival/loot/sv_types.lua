local C = Ambi.General.Global.Colors
local Add = Ambi.Survival.AddLootType
local S, M, H = 1, 60, 3600

local MODEL = 'models/Items/item_item_crate.mdl'

-- -------------------------------------------------------------------------------------------------------

Add( 'fishing', 'Рыболовство', M * 2, MODEL, C.FLAT_GREEN, {
    { class = 'bait simple', chance = 75, min = 1, max = 5 },
    { class = 'bait advanced', chance = 45, min = 1, max = 3 },
    { class = 'bait extra', chance = 15, min = 1, max = 2 },
    { class = 'fishing rod', chance = 5, min = 1, max = 1 },
} )

-- -------------------------------------------------------------------------------------------------------
local MODEL_MED = 'models/items/healthkit.mdl'

Add( 'med1', 'Маленький Медицинский набор', M * 3.25, MODEL_MED, Color( 151, 238, 63, 255 ), {
    { class = 'medkit', chance = 12, min = 1, max = 2 },
    { class = 'antirad', chance = 23, min = 2, max = 6 },
    { class = 'antirad suit', chance = 20, min = 1, max = 1 },
    { class = 'painkiller', chance = 46, min = 1, max = 3 },
    { class = 'bandage', chance = 50, min = 1, max = 5 },
    { class = 'coin', chance = 25, min = 1, max = 2 },
} )

Add( 'med2', 'Средний Медицинский набор', M * 5.55, MODEL_MED, Color( 151, 238, 63, 255 ), {
    { class = 'medkit', chance = 25, min = 1, max = 3 },
    { class = 'antirad', chance = 40, min = 1, max = 4 },
    { class = 'antirad suit', chance = 35, min = 1, max = 1 },
    { class = 'antirad suit heavy', chance = 10, min = 1, max = 1 },
    { class = 'painkiller', chance = 55, min = 1, max = 2 },
    { class = 'coin', chance = 25, min = 1, max = 2 },
} )

Add( 'med3', 'Большой Медицинский набор', M * 9.75, MODEL_MED, Color( 151, 238, 63, 255 ), {
    { class = 'painkiller', chance = 75, min = 1, max = 4 },
    { class = 'medkit', chance = 40, min = 1, max = 1 },
    { class = 'antirad suit heavy', chance = 25, min = 1, max = 1 },
    { class = 'coin', chance = 25, min = 1, max = 2 },
} )

-- -------------------------------------------------------------------------------------------------------

Add( 'res1', 'Ресурсы #1', M * 2, MODEL, Color( 0, 20, 20 ), {
    { class = 'cloth', chance = 50, min = 1, max = 4 },
    { class = 'sulfur', chance = 30, min = 1, max = 4 },
    { class = 'wood', chance = 45, min = 1, max = 4 },
    { class = 'stone', chance = 25, min = 4, max = 8 },
    { class = 'bait simple', chance = 10, min = 1, max = 3 },
    { class = 'coin', chance = 25, min = 1, max = 2 },
} )

Add( 'res2', 'Ресурсы #2', M * 4.25, MODEL, Color( 0, 20, 20 ), {
    { class = 'cannabis', chance = 75, min = 2, max = 15 },
    { class = 'sulfur', chance = 35, min = 1, max = 12 },
    { class = 'pickaxe copper', chance = 25, min = 1, max = 1 },
    { class = 'copper', chance = 25, min = 1, max = 3 },
    { class = 'iron', chance = 20, min = 1, max = 3 },
    { class = 'pickaxe iron', chance = 8, min = 1, max = 1 },
    { class = 'steel', chance = 8, min = 1, max = 2 },
    { class = 'coin', chance = 25, min = 1, max = 2 },
} )

Add( 'res3', 'Ресурсы #3', M * 8.55, MODEL, Color( 0, 20, 20 ), {
    { class = 'sulfur', chance = 50, min = 1, max = 12 },
    { class = 'pickaxe iron', chance = 25, min = 1, max = 1 },
    { class = 'copper', chance = 40, min = 1, max = 3 },
    { class = 'iron', chance = 35, min = 1, max = 3 },
    { class = 'steel', chance = 8, min = 1, max = 3 },
    { class = 'titan', chance = 8, min = 1, max = 1 },
    { class = 'pickaxe steel', chance = 8, min = 1, max = 1 },
    { class = 'minicopter parts', chance = 40, min = 1, max = 2 },
    { class = 'coin', chance = 25, min = 1, max = 2 },
} )

-- -------------------------------------------------------------------------------------------------------

Add( 'spec1', 'Специальные #1', M * 3, MODEL, C.AMB_PURPLE, {
    { class = 'flask', chance = 35, min = 1, max = 3 },
    { class = 'repair kit', chance = 35, min = 1, max = 4 },
    { class = 'workbench rotor', chance = 25, min = 1, max = 2 },
    { class = 'workbench tool box', chance = 25, min = 1, max = 2 },
    { class = 'chemical station spec1', chance = 25, min = 1, max = 1 },
    { class = 'chemical station spec2', chance = 25, min = 1, max = 1 },
    { class = 'oil pumper additional shoulder', chance = 25, min = 1, max = 2 },
    { class = 'oil pumper strong cables', chance = 25, min = 1, max = 2 },
    { class = 'oil refinery fortified legs', chance = 25, min = 1, max = 2 },
    { class = 'oil refinery big tank', chance = 25, min = 1, max = 2 },
    { class = 'paints red', chance = 15, min = 1, max = 6 },
    { class = 'paints green', chance = 15, min = 1, max = 6 },
    { class = 'paints blue', chance = 15, min = 1, max = 6 },
    { class = 'antirad suit', chance = 5, min = 1, max = 1 },
    { class = 'coin', chance = 25, min = 1, max = 2 },
} )

Add( 'spec2', 'Специальные #2', M * 6, MODEL, C.AMB_PURPLE, {
    { class = 'flask', chance = 50, min = 1, max = 3 },
    { class = 'oil pumper additional shoulder', chance = 25, min = 1, max = 2 },
    { class = 'oil pumper strong cables', chance = 25, min = 1, max = 2 },
    { class = 'workbench rotor', chance = 35, min = 1, max = 2 },
    { class = 'workbench tool box', chance = 35, min = 1, max = 2 },
    { class = 'weapons workbench spec1', chance = 15, min = 1, max = 3 },
    { class = 'weapons workbench spec2', chance = 15, min = 1, max = 3 },
    { class = 'chemical station spec1', chance = 35, min = 1, max = 1 },
    { class = 'chemical station spec2', chance = 35, min = 1, max = 1 },
    { class = 'oil refinery fortified legs', chance = 35, min = 1, max = 2 },
    { class = 'oil refinery big tank', chance = 2355, min = 1, max = 2 },
    { class = 'paints red', chance = 45, min = 1, max = 6 },
    { class = 'paints green', chance = 45, min = 1, max = 6 },
    { class = 'paints blue', chance = 45, min = 1, max = 6 },
    { class = 'antirad suit', chance = 5, min = 1, max = 1 },
    
    { class = 'rocket space spec1', chance = 45, min = 1, max = 1 },
    { class = 'rocket space spec2', chance = 45, min = 1, max = 1 },
    { class = 'coin', chance = 25, min = 1, max = 2 },
} )

-- -------------------------------------------------------------------------------------------------------

Add( 'wep1', 'Оруженый Ящик #1', M * 3.75, MODEL, Color( 0, 20, 20 ), {
    { class = 'arrow', chance = 55, min = 1, max = 6 },
    { class = 'stone ammo', chance = 40, min = 1, max = 8 },
    { class = 'pistol ammo', chance = 35, min = 1, max = 4 },
    { class = 'pistol parts', chance = 25, min = 1, max = 1 },
    { class = 'rust bow', chance = 15, min = 1, max = 1 },
    { class = 'rust compound bow', chance = 5, min = 1, max = 1 },
    { class = 'coin', chance = 25, min = 1, max = 2 },
} )

Add( 'wep2', 'Оруженый Ящик #2', M * 8, MODEL, Color( 0, 20, 20 ), {
    { class = 'arrow', chance = 75, min = 1, max = 3 },
    { class = 'pistol ammo', chance = 45, min = 1, max = 8 },
    { class = 'shell', chance = 45, min = 1, max = 4 },
    { class = 'smg ammo', chance = 35, min = 1, max = 8 },
    { class = 'pistol parts', chance = 50, min = 1, max = 2 },
    { class = 'shotgun parts', chance = 45, min = 1, max = 2 },
    { class = 'semi auto parts', chance = 45, min = 1, max = 2 },
    { class = 'rifle parts', chance = 10, min = 1, max = 1 },
    { class = 'rust revolver', chance = 25, min = 1, max = 2 },
    { class = 'rust waterpipe', chance = 10, min = 1, max = 1 },
    { class = 'rust m92', chance = 10, min = 1, max = 1 },
    { class = 'coin', chance = 25, min = 1, max = 2 },
} )

Add( 'wep3', 'Оруженый Ящик #3', M * 12, MODEL, Color( 0, 20, 20 ), {
    { class = 'pistol ammo', chance = 50, min = 1, max = 8 },
    { class = 'shell', chance = 50, min = 1, max = 4 },
    { class = 'smg ammo', chance = 45, min = 1, max = 8 },
    { class = 'rifle ammo', chance = 25, min = 1, max = 12 },
    { class = 'sniper ammo', chance = 10, min = 1, max = 3 },

    { class = 'rust m92', chance = 30, min = 1, max = 1 },
    { class = 'rust spas12', chance = 20, min = 1, max = 1 },
    { class = 'rust mp5', chance = 10, min = 1, max = 1 },
    { class = 'rust lr300', chance = 5, min = 1, max = 1 },
    { class = 'rust l96', chance = 4, min = 1, max = 1 },

    { class = 'rocket space spec3', chance = 75, min = 1, max = 1 },
    { class = 'rocket space spec4', chance = 75, min = 1, max = 1 },
    { class = 'coin', chance = 25, min = 1, max = 2 },
} )

Add( 'explosive', 'Взрывной Ящик', M * 12, MODEL, Color( 0, 20, 20 ), {
    { class = 'explosive', chance = 50, min = 1, max = 4 },
    { class = 'f1', chance = 35, min = 1, max = 2 },
    { class = 'rpg ammo', chance = 25, min = 1, max = 2 },
    { class = 'rpg', chance = 10, min = 1, max = 1 },
    { class = 'coin', chance = 25, min = 1, max = 2 },
} )

Add( 'lab_wep', 'Спец. Оружейный Ящик', M * 5, MODEL, Color( 0, 20, 20 ), {
    { class = 'pistol ammo', chance = 75, min = 1, max = 50 },
    { class = 'shell', chance = 75, min = 1, max = 50 },
    { class = 'smg ammo', chance = 75, min = 1, max = 25 },
    { class = 'rifle ammo', chance = 50, min = 1, max = 35 },
    { class = 'sniper ammo', chance = 35, min = 1, max = 2 },

    { class = 'rust m92', chance = 50, min = 1, max = 1 },
    { class = 'rust spas12', chance = 50, min = 1, max = 1 },
    { class = 'rust mp5', chance = 50, min = 1, max = 1 },
    { class = 'rust lr300', chance = 50, min = 1, max = 1 },
    { class = 'rust l96', chance = 25, min = 1, max = 1 },
    { class = 'rust m249', chance = 4, min = 1, max = 1 },

    { class = 'space suit', chance = 85, min = 1, max = 2 },
    { class = 'coin', chance = 25, min = 1, max = 2 },
} )

-- -------------------------------------------------------------------------------------------------------

Add( 'food1', 'Малая Провизия', M * 2, MODEL, C.AMB_GREEN, {
    { class = 'apple', chance = 75, min = 1, max = 6 },
    { class = 'water', chance = 55, min = 1, max = 3 },
    { class = 'aqua', chance = 45, min = 1, max = 4 },
    { class = 'painkiller', chance = 15, min = 1, max = 2 },
    { class = 'coin', chance = 25, min = 1, max = 2 },
} )

-- -------------------------------------------------------------------------------------------------------

Add( 'food common', 'Набор Общественной Еды', M * 4, MODEL, C.ABS_WHITE, {
    { class = 'aqua', chance = 45, min = 1, max = 2 },
    { class = 'emelya', chance = 5, min = 1, max = 2 },
    { class = 'xrysteam', chance = 5, min = 1, max = 2 },
    { class = '3korochki', chance = 5, min = 1, max = 2 },
    { class = 'mre', chance = 5, min = 1, max = 2 },
    { class = 'snickers', chance = 5, min = 1, max = 2 },
    { class = 'iskra', chance = 5, min = 1, max = 2 },
    { class = 'peas', chance = 5, min = 1, max = 2 },
    { class = 'alenka', chance = 5, min = 1, max = 2 },
    { class = 'galets', chance = 5, min = 1, max = 2 },
    { class = 'frenchfries', chance = 5, min = 1, max = 2 },
    { class = 'hamburger', chance = 5, min = 1, max = 2 },
    { class = 'pizza', chance = 5, min = 1, max = 2 },
    { class = 'lolipop', chance = 5, min = 1, max = 2 },
    { class = 'meat minced', chance = 2, min = 1, max = 1 },
    { class = 'coin', chance = 25, min = 1, max = 2 },
} )

-- -------------------------------------------------------------------------------------------------------

Add( 'farming1', 'Фермерский Набор #1', M * 2, MODEL, C.FLAT_GREEN, {
    { class = 'cannabis seed', chance = 50, min = 1, max = 3 },
    { class = 'apple seed', chance = 40, min = 1, max = 2 },
    { class = 'lemon seed', chance = 35, min = 1, max = 2 },
} )

-- -------------------------------------------------------------------------------------------------------
local MODEL_CLOTHES = 'models/Items/item_item_crate.mdl'

Add( 'clothes1', 'Одежда #1', M * 3.75, MODEL_CLOTHES, Color( 127, 0, 0, 255 ), {
    { class = 'cloth', chance = 15, min = 1, max = 4 },
    { class = 'skin male01', chance = 25, min = 1, max = 1 },
    { class = 'skin male02', chance = 25, min = 1, max = 1 },
    { class = 'skin male03', chance = 25, min = 1, max = 1 },
    { class = 'skin male04', chance = 25, min = 1, max = 1 },
    { class = 'skin male05', chance = 25, min = 1, max = 1 },
    { class = 'skin male06', chance = 25, min = 1, max = 1 },
    { class = 'skin male07', chance = 25, min = 1, max = 1 },
    { class = 'skin male08', chance = 25, min = 1, max = 1 },
    { class = 'skin male09', chance = 25, min = 1, max = 1 },
    { class = 'coin', chance = 25, min = 1, max = 2 },
} )

Add( 'clothes2', 'Одежда #2', M * 3.75, MODEL_CLOTHES, Color( 127, 255, 0, 255 ), {
    { class = 'cloth', chance = 15, min = 1, max = 8 },
    { class = 'skin female01', chance = 25, min = 1, max = 1 },
    { class = 'skin female02', chance = 25, min = 1, max = 1 },
    { class = 'skin female03', chance = 25, min = 1, max = 1 },
    { class = 'skin female04', chance = 25, min = 1, max = 1 },
    { class = 'skin female05', chance = 25, min = 1, max = 1 },
    { class = 'skin female06', chance = 25, min = 1, max = 1 },
} )

Add( 'clothes3', 'Одежда #3', M * 3.75, MODEL_CLOTHES, Color( 0, 161, 255, 255 ), {
    { class = 'cloth', chance = 15, min = 1, max = 12 },
    { class = 'skin male02 group 2', chance = 25, min = 1, max = 1 },
    { class = 'skin male04 group 2', chance = 25, min = 1, max = 1 },
    { class = 'skin male06 group 2', chance = 25, min = 1, max = 1 },
    { class = 'skin male08 group 2', chance = 25, min = 1, max = 1 },
} )

Add( 'clothes4', 'Одежда #4', M * 3.75, MODEL_CLOTHES, Color( 127, 0, 255, 255 ), {
    { class = 'cloth', chance = 15, min = 1, max = 14 },
    { class = 'skin male02 group 2', chance = 50, min = 1, max = 1 },
    { class = 'skin female01', chance = 50, min = 1, max = 1 },
    { class = 'skin male07', chance = 50, min = 1, max = 1 },
    { class = 'skin alyx', chance = 10, min = 1, max = 1 },
    { class = 'skin breen', chance = 10, min = 1, max = 1 },
    { class = 'skin eli', chance = 10, min = 1, max = 1 },
    { class = 'skin odessa', chance = 10, min = 1, max = 1 },
    { class = 'skin mossman', chance = 10, min = 1, max = 1 },
    { class = 'coin', chance = 25, min = 1, max = 2 },
} )