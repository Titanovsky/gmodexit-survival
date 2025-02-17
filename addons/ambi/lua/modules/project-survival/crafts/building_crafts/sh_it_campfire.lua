local Add, Craft = Ambi.SimpleInventory.AddClass, Ambi.SimpleInventory.AddCraft

-- ========================================================================================================
local CATEGORY = 'Res'

for i = 1, 5 do
   Craft( 'coal campfire t'..i, 'Уголь', CATEGORY, '', 6 - i, {
      [ 'wood' ] = 30 - i * 5,
   }, {
      [ 'coal' ] = 1,
   } )
end

-- ========================================================================================================
local CATEGORY = 'Мясо'

for i = 1, 5 do
   Craft( 'fried pork t'..i, 'Свинина', CATEGORY, '', 15 - i, {
      [ 'coal' ] = 12 - i,
      [ 'raw pork' ] = 3,
   }, {
      [ 'fried pork' ] = 1,
   } )
end

for i = 1, 5 do
   Craft( 'fried chicken t'..i, 'Курица', CATEGORY, '', 14 - i, {
      [ 'coal' ] = 16 - i,
      [ 'raw chicken' ] = 2,
   }, {
      [ 'fried chicken' ] = 1,
   } )
end

for i = 1, 5 do
   Craft( 'fried beef t'..i, 'Говядина', CATEGORY, '', 14 - i, {
      [ 'coal' ] = 22 - i,
      [ 'raw beef' ] = 1,
   }, {
      [ 'fried beef' ] = 1,
   } )
end

-- ========================================================================================================
local CATEGORY = 'Рыба'

for i = 2, 5 do
   Craft( 'fried carp t'..i, 'Карп', CATEGORY, '', 6 - i, {
      [ 'coal' ] = 10 - i,
      [ 'carp' ] = 1,
   }, {
      [ 'fried carp' ] = 1,
   } )
end

for i = 2, 5 do
   Craft( 'fried ide t'..i, 'Язь', CATEGORY, '', 6 - i, {
      [ 'coal' ] = 10 - i,
      [ 'ide' ] = 1,
   }, {
      [ 'fried ide' ] = 1,
   } )
end

for i = 2, 5 do
   Craft( 'fried ram t'..i, 'Тарань', CATEGORY, '', 6 - i, {
      [ 'coal' ] = 10 - i,
      [ 'ram' ] = 1,
   }, {
      [ 'fried ram' ] = 1,
   } )
end

for i = 2, 5 do
   Craft( 'fried bream t'..i, 'Лещ', CATEGORY, '', 6 - i, {
      [ 'coal' ] = 10 - i,
      [ 'bream' ] = 1,
   }, {
      [ 'fried bream' ] = 1,
   } )
end

for i = 3, 5 do
   Craft( 'fried crucian carp t'..i, 'Карась', CATEGORY, '', 6 - i, {
      [ 'coal' ] = 10 - i,
      [ 'crucian carp' ] = 1,
   }, {
      [ 'fried crucian carp' ] = 1,
   } )
end

for i = 3, 5 do
   Craft( 'fried roach t'..i, 'Плотва', CATEGORY, '', 6 - i, {
      [ 'coal' ] = 10 - i,
      [ 'roach' ] = 1,
   }, {
      [ 'fried roach' ] = 1,
   } )
end

for i = 3, 5 do
   Craft( 'fried catfish t'..i, 'Сом', CATEGORY, '', 6 - i, {
      [ 'coal' ] = 10 - i,
      [ 'catfish' ] = 1,
   }, {
      [ 'fried catfish' ] = 1,
   } )
end

for i = 4, 5 do
   Craft( 'fried pike t'..i, 'Щука', CATEGORY, '', 6 - i, {
      [ 'coal' ] = 15 - i,
      [ 'pike' ] = 1,
   }, {
      [ 'fried pike' ] = 1,
   } )
end

for i = 4, 5 do
   Craft( 'fried tuna t'..i, 'Тунец', CATEGORY, '', 6 - i, {
      [ 'coal' ] = 15 - i,
      [ 'tuna' ] = 1,
   }, {
      [ 'fried tuna' ] = 1,
   } )
end