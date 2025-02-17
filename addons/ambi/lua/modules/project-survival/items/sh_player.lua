local Add, Craft = Ambi.SimpleInventory.AddClass, Ambi.SimpleInventory.AddCraft
local CATEGORY = 'Начальный Крафт'

Craft( 'physgun player', 'PhysGun', CATEGORY, 'Начальный Крафт', 15.25, {
   [ 'wood' ] = 25,
   [ 'stone' ] = 50,
}, {
   [ 'physgun' ] = 1
} )

Craft( 'gravgun player', 'GravGun', CATEGORY, 'Начальный Крафт', 10.25, {
   [ 'wood' ] = 50,
   [ 'stone' ] = 25,
}, {
   [ 'physcannon' ] = 1
} )

Craft( 'rope player', 'Верёвка', CATEGORY, 'Начальный Крафт', 3, {
   [ 'cloth' ] = 8,
}, {
   [ 'rope' ] = 1
} )

Craft( 'arrow player', 'Стрела', CATEGORY, 'Начальный Крафт', 4.75, {
   [ 'wood' ] = 5,
   [ 'stone' ] = 15,
}, {
   [ 'arrow' ] = 1
} )

Craft( 'bandage player', 'Бинт', CATEGORY, 'Начальный Крафт', 4.25, {
   [ 'cloth' ] = 15,
}, {
   [ 'bandage' ] = 1
} )

Craft( 'hunting bow player', 'Лук', CATEGORY, '', 35.75, {
    [ 'rope' ] = 8,
    [ 'wood' ] = 100,
}, {
   [ 'hunting bow' ] = 1,
} )

Craft( 'stone ammo player', 'Каменный Патрон', CATEGORY, 'Начальный Крафт', 6.55, {
   [ 'gunpowder' ] = 10,
   [ 'stone' ] = 5,
}, {
   [ 'stone ammo' ] = 1
} )

Craft( 'urine from water', 'Моча', CATEGORY, 'Продукт необходимый для промышленности и медицины', 0.55, {
    [ 'water' ] = 4,
}, {
    [ 'urine' ] = 1
} )