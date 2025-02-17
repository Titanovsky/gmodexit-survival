local Add, Craft = Ambi.SimpleInventory.AddClass, Ambi.SimpleInventory.AddCraft
local CATEGORY = ''

-- ======================================================================================================================== --
local LVL = 't1'
Craft( 'cloth '..LVL, 'Ткань', CATEGORY, 'Ткань', 2, {
   [ 'cannabis' ] = 6
}, {
   [ 'cloth' ] = 1,
} )

local LVL = 't2'
Craft( 'cloth '..LVL, 'Ткань', CATEGORY, 'Ткань', 1.25, {
   [ 'cannabis' ] = 4
}, {
   [ 'cloth' ] = 1,
} )

local LVL = 't3'
Craft( 'cloth '..LVL, 'Ткань', CATEGORY, 'Ткань', 0.95, {
   [ 'cannabis' ] = 3
}, {
   [ 'cloth' ] = 1,
} )

local LVL = 't4'
Craft( 'cloth '..LVL, 'Ткань', CATEGORY, 'Ткань', 0.55, {
   [ 'cannabis' ] = 2
}, {
   [ 'cloth' ] = 1,
} )

local LVL = 't5'
Craft( 'cloth '..LVL, 'Ткань', CATEGORY, 'Ткань', 0.15, {
   [ 'cannabis' ] = 2
}, {
   [ 'cloth' ] = 1,
} )

-- ======================================================================================================================== --
local LVL = 't1'
Craft( 'rope '..LVL, 'Верёвка', CATEGORY, '', 2, {
   [ 'cloth' ] = 6
}, {
   [ 'rope' ] = 1,
} )

local LVL = 't2'
Craft( 'rope '..LVL, 'Верёвка', CATEGORY, 'Ткань', 1.75, {
   [ 'cloth' ] = 5
}, {
   [ 'rope' ] = 1,
} )

local LVL = 't3'
Craft( 'rope '..LVL, 'Верёвка', CATEGORY, 'Ткань', 1.25, {
   [ 'cloth' ] = 5
}, {
   [ 'rope' ] = 1,
} )

local LVL = 't4'
Craft( 'rope '..LVL, 'Верёвка', CATEGORY, 'Ткань', 1, {
   [ 'cloth' ] = 4
}, {
   [ 'rope' ] = 1,
} )

local LVL = 't5'
Craft( 'rope '..LVL, 'Верёвка', CATEGORY, 'Ткань', 0.05, {
   [ 'cloth' ] = 4
}, {
   [ 'rope' ] = 1,
} )

-- ======================================================================================================================== --
for i = 1, 5 do
   Craft( 'bandage t'..i, 'Бинт', CATEGORY, 'Медицина', 4.95 - ( 0.55 * i ), {
      [ 'cloth' ] = 10 - i
   }, {
      [ 'bandage' ] = 1,
   } )
end

-- ======================================================================================================================== --
for i = 2, 5 do
   Craft( 'splitter t'..i, 'Шина', CATEGORY, 'Медицина', 8.95 - ( 1 * i ), {
      [ 'copper' ] = 6 - i,
      [ 'cloth' ] = 10 - i,
      [ 'bandage' ] = 10 - i,
   }, {
      [ 'splitter' ] = 1,
   } )
end

-- ======================================================================================================================== --
for i = 2, 5 do
   Craft( 'medkit t'..i, 'Шина', CATEGORY, 'Медицина', 25 - ( 3 * i ), {
      [ 'plastic' ] = 5,
      [ 'splitter' ] = 2,
      [ 'bandage' ] = 4,
      [ 'painkiller' ] = 1,
   }, {
      [ 'medkit' ] = 1,
   } )
end

-- ======================================================================================================================== --
local LVL = 't1'
Craft( 'axe grip '..LVL, 'Рукоятка от Топора', CATEGORY, '', 5, {
   [ 'wood' ] = 50,
   [ 'stone' ] = 25,
}, {
   [ 'axe grip' ] = 1,
} )

local LVL = 't2'
Craft( 'axe grip '..LVL, 'Рукоятка от Топора', CATEGORY, '', 3.25, {
   [ 'wood' ] = 35,
   [ 'stone' ] = 15,
}, {
   [ 'axe grip' ] = 1,
} )

local LVL = 't3'
Craft( 'axe grip '..LVL, 'Рукоятка от Топора', CATEGORY, '', 1, {
   [ 'wood' ] = 25,
   [ 'stone' ] = 10,
}, {
   [ 'axe grip' ] = 1,
} )

local LVL = 't4'
Craft( 'axe grip '..LVL, 'Рукоятка от Топора', CATEGORY, '', 0.55, {
   [ 'wood' ] = 20,
   [ 'stone' ] = 10,
}, {
   [ 'axe grip' ] = 1,
} )

local LVL = 't5'
Craft( 'axe grip '..LVL, 'Рукоятка от Топора', CATEGORY, '', 0.25, {
   [ 'wood' ] = 25,
   [ 'stone' ] = 10,
}, {
   [ 'axe grip' ] = 1,
} )

-- ======================================================================================================================== --
local LVL = 't1'
Craft( 'pickaxe grip '..LVL, 'Рукоятка от Кирки', CATEGORY, '', 7, {
   [ 'stone' ] = 50,
   [ 'wood' ] = 25,
}, {
   [ 'pickaxe grip' ] = 1,
} )

local LVL = 't2'
Craft( 'pickaxe grip '..LVL, 'Рукоятка от Кирки', CATEGORY, '', 4.55, {
   [ 'stone' ] = 35,
   [ 'wood' ] = 15,
}, {
   [ 'pickaxe grip' ] = 1,
} )

local LVL = 't3'
Craft( 'pickaxe grip '..LVL, 'Рукоятка от Кирки', CATEGORY, '', 2.25, {
   [ 'stone' ] = 25,
   [ 'wood' ] = 10,
}, {
   [ 'pickaxe grip' ] = 1,
} )

local LVL = 't4'
Craft( 'pickaxe grip '..LVL, 'Рукоятка от Кирки', CATEGORY, '', 0.75, {
   [ 'stone' ] = 25,
   [ 'wood' ] = 10,
}, {
   [ 'pickaxe grip' ] = 1,
} )

local LVL = 't5'
Craft( 'pickaxe grip '..LVL, 'Рукоятка от Кирки', CATEGORY, '', 0.15, {
   [ 'stone' ] = 25,
   [ 'wood' ] = 5,
}, {
   [ 'pickaxe grip' ] = 1,
} )

-- ======================================================================================================================== --
for i = 3, 5 do
   Craft( 'shovel t'..i, 'Лопата', CATEGORY, 'Инструмент', 10 - i, {
      [ 'plastic' ] = 6 - i,
      [ 'wood' ] = 25 - i,
      [ 'iron' ] = 10
   }, {
      [ 'shovel' ] = 1,
   } )
end

-- ======================================================================================================================== --

for i = 1, 5  do
   Craft( 'axe stone t'..i, 'Топор: Каменный', CATEGORY, '', 35 - 5 * i, {
      [ 'stone' ] = 47 - 2 * i,
      [ 'wood' ] = 22 - 1 * i,
      [ 'axe grip' ] = 1
   }, {
      [ 'axe stone' ] = 1,
   } )
end

for i = 1, 5  do
   Craft( 'axe copper t'..i, 'Топор: Медный', CATEGORY, '', 40 - 5 * i, {
      [ 'copper' ] = 25 - 1 * i,
      [ 'wood' ] = 22 - 1 * i,
      [ 'axe grip' ] = 1
   }, {
      [ 'axe copper' ] = 1,
   } )
end

for i = 2, 5  do
   Craft( 'axe iron t'..i, 'Топор: Железный', CATEGORY, '', 45 - 5 * i, {
      [ 'iron' ] = 15 - 1 * i,
      [ 'wood' ] = 22 - 1 * i,
      [ 'axe grip' ] = 1
   }, {
      [ 'axe iron' ] = 1,
   } )
end

for i = 3, 5  do
   Craft( 'axe steel t'..i, 'Топор: Стальной', CATEGORY, '', 50 - 5 * i, {
      [ 'steel' ] = 25 - 2 * i,
      [ 'wood' ] = 35 - 2 * i,
      [ 'axe grip' ] = 1
   }, {
      [ 'axe steel' ] = 1,
   } )
end

Craft( 'axe titan t5', 'Топор: Титановый', CATEGORY, '', 45, {
   [ 'titan' ] = 10,
   [ 'steel fragments' ] = 10,
   [ 'wood' ] = 125,
   [ 'axe grip' ] = 1
}, {
   [ 'axe titan' ] = 1,
} )

-- ======================================================================================================================== --
for i = 1, 5  do
   Craft( 'pickaxe stone t'..i, 'Кирка: Каменная', CATEGORY, '', 80 - 5 * i, {
      [ 'stone' ] = 35 - 2 * i,
      [ 'wood' ] = 15 - i,
      [ 'pickaxe grip' ] = 1
   }, {
      [ 'pickaxe stone' ] = 1,
   } )
end

for i = 1, 5  do
   Craft( 'pickaxe copper t'..i, 'Кирка: Медная', CATEGORY, '', 100 - 5 * i, {
      [ 'copper' ] = 12 - i,
      [ 'wood' ] = 25 - i,
      [ 'pickaxe grip' ] = 1
   }, {
      [ 'pickaxe copper' ] = 1,
   } )
end

for i = 2, 5  do
   Craft( 'pickaxe iron t'..i, 'Кирка: Железная', CATEGORY, '', 50 - 5 * i, {
      [ 'iron' ] = 25 - 1 * i,
      [ 'wood' ] = 35 - 1 * i,
      [ 'pickaxe grip' ] = 1
   }, {
      [ 'pickaxe iron' ] = 1,
   } )
end

for i = 3, 5  do
   Craft( 'pickaxe steel t'..i, 'Кирка: Стальная', CATEGORY, '', 55 - 5 * i, {
      [ 'steel' ] = 55 - 2 * i,
      [ 'wood' ] = 35 - 2 * i,
      [ 'pickaxe grip' ] = 1
   }, {
      [ 'pickaxe steel' ] = 1,
   } )
end

Craft( 'pickaxe titan t5', 'Кирка: Титановая', CATEGORY, '', 60, {
   [ 'titan' ] = 5,
   [ 'steel fragments' ] = 20,
   [ 'wood' ] = 175,
   [ 'pickaxe grip' ] = 1
}, {
   [ 'pickaxe titan' ] = 1,
} )

-- ======================================================================================================================== --
local LVL = 't1'
Craft( 'physgun '..LVL, 'PhysGun', CATEGORY, '', 10, {
   [ 'plastic' ] = 50
}, {
   [ 'physgun' ] = 1,
} )

local LVL = 't2'
Craft( 'physgun '..LVL, 'PhysGun', CATEGORY, '', 8, {
   [ 'plastic' ] = 45
}, {
   [ 'physgun' ] = 1,
} )

local LVL = 't3'
Craft( 'physgun '..LVL, 'PhysGun', CATEGORY, '', 6, {
   [ 'plastic' ] = 35
}, {
   [ 'physgun' ] = 1,
} )

local LVL = 't4'
Craft( 'physgun '..LVL, 'PhysGun', CATEGORY, '', 4, {
   [ 'plastic' ] = 25
}, {
   [ 'physgun' ] = 1,
} )

local LVL = 't5'
Craft( 'physgun '..LVL, 'PhysGun', CATEGORY, '', 2, {
   [ 'plastic' ] = 25
}, {
   [ 'physgun' ] = 1,
} )

-- ======================================================================================================================== --
local LVL = 't1'
Craft( 'physcannon '..LVL, 'GravGun', CATEGORY, '', 10, {
   [ 'plastic' ] = 50
}, {
   [ 'physcannon' ] = 1,
} )

local LVL = 't2'
Craft( 'physcannon '..LVL, 'GravGun', CATEGORY, '', 8, {
   [ 'plastic' ] = 45
}, {
   [ 'physcannon' ] = 1,
} )

local LVL = 't3'
Craft( 'physcannon '..LVL, 'GravGun', CATEGORY, '', 6, {
   [ 'plastic' ] = 35
}, {
   [ 'physcannon' ] = 1,
} )

local LVL = 't4'
Craft( 'physcannon '..LVL, 'GravGun', CATEGORY, '', 4, {
   [ 'plastic' ] = 25
}, {
   [ 'physcannon' ] = 1,
} )

local LVL = 't5'
Craft( 'physcannon '..LVL, 'GravGun', CATEGORY, '', 2, {
   [ 'plastic' ] = 25
}, {
   [ 'physcannon' ] = 1,
} )

-- ======================================================================================================================== --
for i = 2, 5  do
   Craft( 'toolgun t'..i, 'ToolGun', CATEGORY, '', 100 - 5 * i, {
      [ 'plastic' ] = 25 - ( 2 * i ),
      [ 'glass' ] = 75 - ( 5 * i ),
      [ 'iron' ] = 4,
      [ 'copper wire' ] = 15,
   }, {
      [ 'toolgun' ] = 1,
   } )
end

-- ======================================================================================================================== --
for i = 1, 5 do
   Craft( 'fishing rod t'..i, 'Удочка', CATEGORY, '', 8 - ( 0.35 * i ), {
      [ 'wood' ] = 25 - i,
      [ 'cloth' ] = 10 - i,
      [ 'copper' ] = 5,
      [ 'rope' ] = 2
   }, {
      [ 'fishing rod' ] = 1,
   } )
end

-- ======================================================================================================================== --
local LVL = 't2'
Craft( 'hunting bow '..LVL, 'Лук', CATEGORY, '', 25, {
   [ 'rope' ] = 8,
   [ 'wood' ] = 50,
}, {
   [ 'hunting bow' ] = 1
} )

local LVL = 't3'
Craft( 'hunting bow '..LVL, 'Лук', CATEGORY, '', 15, {
   [ 'rope' ] = 6,
   [ 'wood' ] = 50,
}, {
   [ 'hunting bow' ] = 1
} )

local LVL = 't4'
Craft( 'hunting bow '..LVL, 'Лук', CATEGORY, '', 5, {
   [ 'rope' ] = 4,
   [ 'wood' ] = 25,
}, {
   [ 'hunting bow' ] = 1
} )

local LVL = 't5'
Craft( 'hunting bow '..LVL, 'Лук', CATEGORY, '', 1.55, {
   [ 'rope' ] = 4,
   [ 'wood' ] = 25,
}, {
   [ 'hunting bow' ] = 1
} )

-- ======================================================================================================================== --
local LVL = 't2'
Craft( 'hand cannon '..LVL, 'Черкаш', CATEGORY, '', 45, {
   [ 'stone' ] = 5,
   [ 'wood' ] = 75,
   [ 'rope' ] = 4,
}, {
   [ 'hand cannon' ] = 1
} )

local LVL = 't3'
Craft( 'hand cannon '..LVL, 'Черкаш', CATEGORY, '', 35, {
   [ 'stone' ] = 5,
   [ 'wood' ] = 55,
   [ 'rope' ] = 4,
}, {
   [ 'hand cannon' ] = 1
} )

local LVL = 't4'
Craft( 'hand cannon '..LVL, 'Черкаш', CATEGORY, '', 25, {
   [ 'stone' ] = 3,
   [ 'wood' ] = 55,
   [ 'rope' ] = 4,
}, {
   [ 'hand cannon' ] = 1
} )

local LVL = 't5'
Craft( 'hand cannon '..LVL, 'Черкаш', CATEGORY, '', 5, {
   [ 'stone' ] = 3,
   [ 'wood' ] = 55,
   [ 'rope' ] = 2,
}, {
   [ 'hand cannon' ] = 1
} )

-- ======================================================================================================================== --
local LVL = 't3'
Craft( 'pipe shotgun '..LVL, 'Самодельный Дробовик', CATEGORY, '', 45, {
   [ 'copper' ] = 15,
   [ 'iron' ] = 5,
   [ 'iron bolt' ] = 2,
}, {
   [ 'pipe shotgun' ] = 1
} )

local LVL = 't4'
Craft( 'pipe shotgun '..LVL, 'Самодельный Дробовик', CATEGORY, '', 25, {
   [ 'copper' ] = 5,
   [ 'iron' ] = 4,
   [ 'iron bolt' ] = 2,
}, {
   [ 'pipe shotgun' ] = 1
} )

local LVL = 't5'
Craft( 'pipe shotgun '..LVL, 'Самодельный Дробовик', CATEGORY, '', 10, {
   [ 'copper' ] = 5,
   [ 'iron' ] = 5,
   [ 'iron bolt' ] = 2,
}, {
   [ 'pipe shotgun' ] = 1
} )

-- ======================================================================================================================== --
local LVL = 't1'
Craft( 'arrow '..LVL, 'Стрела', CATEGORY, '', 3, {
   [ 'wood' ] = 5,
   [ 'stone' ] = 10,
}, {
   [ 'arrow' ] = 1
} )

local LVL = 't2'
Craft( 'arrow '..LVL, 'Стрела', CATEGORY, '', 2.75, {
   [ 'wood' ] = 5,
   [ 'stone' ] = 10,
}, {
   [ 'arrow' ] = 1
} )

local LVL = 't3'
Craft( 'arrow '..LVL, 'Стрела', CATEGORY, '', 2, {
   [ 'wood' ] = 5,
   [ 'stone' ] = 5,
}, {
   [ 'arrow' ] = 1
} )

local LVL = 't4'
Craft( 'arrow '..LVL, 'Стрела', CATEGORY, '', 1.75, {
   [ 'wood' ] = 5,
   [ 'stone' ] = 5,
}, {
   [ 'arrow' ] = 1
} )

local LVL = 't5'
Craft( 'arrow '..LVL, 'Стрела', CATEGORY, '', 1, {
   [ 'wood' ] = 4,
   [ 'stone' ] = 4,
}, {
   [ 'arrow' ] = 1
} )

-- ======================================================================================================================== --
for i = 2, 5 do
   Craft( 'stone ammo '..i, 'Каменный Патрон', CATEGORY, '', 6 - i, {
      [ 'stone' ] = 15 - i,
      [ 'gunpowder' ] = 4,
   }, {
      [ 'stone ammo' ] = 1
   } )
end

-- ======================================================================================================================== --
local LVL = 't2'
Craft( 'simple dimple '..LVL, 'Симпл Димпл', CATEGORY, 'да да не удивляйтес', 45, {
   [ 'plastic' ] = 50
}, {
   [ 'simple dimple' ] = 1
} )

local LVL = 't3'
Craft( 'simple dimple '..LVL, 'Симпл Димпл', CATEGORY, 'да да не удивляйтес', 25, {
   [ 'plastic' ] = 45
}, {
   [ 'simple dimple' ] = 1
} )

local LVL = 't4'
Craft( 'simple dimple '..LVL, 'Симпл Димпл', CATEGORY, 'да да не удивляйтес', 15, {
   [ 'plastic' ] = 25
}, {
   [ 'simple dimple' ] = 1
} )

local LVL = 't5'
Craft( 'simple dimple '..LVL, 'Симпл Димпл', CATEGORY, 'да да не удивляйтес', 5, {
   [ 'plastic' ] = 45
}, {
   [ 'simple dimple' ] = 1
} )
-- ======================================================================================================================== --
for i = 2, 5 do
   Craft( 'food wrap t'..i, 'Пищевая Плёнка', CATEGORY, '', 4 - ( 0.35 * i ), {
      [ 'polyethylene' ] = 25 - i,
   }, {
      [ 'food wrap' ] = 1,
   } )
end

-- ======================================================================================================================== --
local LVL = 't3'
Craft( 'copper tube '..LVL, 'Медная Труба', CATEGORY, '', 5, {
   [ 'copper' ] = 10
}, {
   [ 'copper tube' ] = 1
} )

local LVL = 't4'
Craft( 'copper tube '..LVL, 'Медная Труба', CATEGORY, '', 3, {
   [ 'copper' ] = 8
}, {
   [ 'copper tube' ] = 1
} )

local LVL = 't5'
Craft( 'copper tube '..LVL, 'Медная Труба', CATEGORY, '', 1.25, {
   [ 'copper' ] = 4
}, {
   [ 'copper tube' ] = 1
} )

-- ======================================================================================================================== --
local LVL = 't3'
Craft( 'copper wire '..LVL, 'Медная Проволока', CATEGORY, '', 4, {
   [ 'copper' ] = 4
}, {
   [ 'copper wire' ] = 1
} )

local LVL = 't4'
Craft( 'copper wire '..LVL, 'Медная Проволока', CATEGORY, '', 2, {
   [ 'copper' ] = 3
}, {
   [ 'copper wire' ] = 1
} )

local LVL = 't5'
Craft( 'copper wire '..LVL, 'Медная Проволока', CATEGORY, '', 0.15, {
   [ 'copper' ] = 2
}, {
   [ 'copper wire' ] = 1
} )

-- ======================================================================================================================== --
local LVL = 't3'
Craft( 'iron pieces '..LVL, 'Железки', CATEGORY, '', 6, {
   [ 'iron' ] = 5
}, {
   [ 'iron pieces' ] = 1
} )

local LVL = 't4'
Craft( 'iron pieces '..LVL, 'Железки', CATEGORY, '', 4, {
   [ 'iron' ] = 4
}, {
   [ 'iron pieces' ] = 1
} )

local LVL = 't5'
Craft( 'iron pieces '..LVL, 'Железки', CATEGORY, '', 1, {
   [ 'iron' ] = 2
}, {
   [ 'iron pieces' ] = 1
} )

-- ======================================================================================================================== --
local LVL = 't3'
Craft( 'iron bolt '..LVL, 'Железный Болт', CATEGORY, '', 6, {
   [ 'iron' ] = 15
}, {
   [ 'iron bolt' ] = 1
} )

local LVL = 't4'
Craft( 'iron bolt '..LVL, 'Железный Болт', CATEGORY, '', 4, {
   [ 'iron' ] = 10
}, {
   [ 'iron bolt' ] = 1
} )

local LVL = 't5'
Craft( 'iron bolt '..LVL, 'Железный Болт', CATEGORY, '', 2, {
   [ 'iron' ] = 5
}, {
   [ 'iron bolt' ] = 1
} )

-- ======================================================================================================================== --
local LVL = 't3'
Craft( 'iron gear '..LVL, 'Железная Шестерёнка', CATEGORY, '', 3, {
   [ 'iron' ] = 4
}, {
   [ 'iron gear' ] = 1
} )

local LVL = 't4'
Craft( 'iron gear '..LVL, 'Железная Шестерёнка', CATEGORY, '', 2, {
   [ 'iron' ] = 3
}, {
   [ 'iron gear' ] = 1
} )

local LVL = 't5'
Craft( 'iron gear '..LVL, 'Железная Шестерёнка', CATEGORY, '', 1, {
   [ 'iron' ] = 2
}, {
   [ 'iron gear' ] = 1
} )

-- ======================================================================================================================== --
local LVL = 't3'
Craft( 'steel fragments '..LVL, 'Стальные Фрагменты', CATEGORY, '', 4, {
   [ 'steel' ] = 2
}, {
   [ 'steel fragments' ] = 1
} )

local LVL = 't4'
Craft( 'steel fragments '..LVL, 'Стальные Фрагменты', CATEGORY, '', 2, {
   [ 'steel' ] = 2
}, {
   [ 'steel fragments' ] = 1
} )

local LVL = 't5'
Craft( 'steel fragments '..LVL, 'Стальные Фрагменты', CATEGORY, '', 0.45, {
   [ 'steel' ] = 2
}, {
   [ 'steel fragments' ] = 1
} )

-- ======================================================================================================================== --
local LVL = 't3'
Craft( 'steel tube '..LVL, 'Стальная Труба', CATEGORY, '', 15, {
   [ 'steel' ] = 4
}, {
   [ 'steel tube' ] = 1
} )

local LVL = 't4'
Craft( 'steel tube '..LVL, 'Стальная Труба', CATEGORY, '', 10, {
   [ 'steel' ] = 3
}, {
   [ 'steel tube' ] = 1
} )

local LVL = 't5'
Craft( 'steel tube '..LVL, 'Стальная Труба', CATEGORY, '', 5, {
   [ 'steel' ] = 2
}, {
   [ 'steel tube' ] = 1
} )

-- ======================================================================================================================== --
local LVL = 't4'
Craft( 'titan plate '..LVL, 'Титановая Пластина', CATEGORY, '', 45, {
   [ 'titan' ] = 2
}, {
   [ 'titan plate' ] = 1
} )

local LVL = 't5'
Craft( 'titan plate '..LVL, 'Титановая Пластина', CATEGORY, '', 15, {
   [ 'titan' ] = 2
}, {
   [ 'titan plate' ] = 1
} )