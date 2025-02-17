local Add, Craft = Ambi.SimpleInventory.AddClass, Ambi.SimpleInventory.AddCraft

-- ========================================================================================================
local CATEGORY = 'Мясо'

for i = 2, 5 do
   Craft( 'fried pork t'..i, 'Свинина', CATEGORY, '', 7 - i, {
      [ 'coal' ] = 8 - i,
      [ 'raw pork' ] = 3,
   }, {
      [ 'fried pork' ] = 1,
   } )
end

for i = 3, 5 do
   Craft( 'fried chicken t'..i, 'Курица', CATEGORY, '', 8 - i, {
      [ 'coal' ] = 10 - i,
      [ 'raw chicken' ] = 2,
   }, {
      [ 'fried chicken' ] = 1,
   } )
end

for i = 4, 5 do
   Craft( 'fried beef t'..i, 'Говядина', CATEGORY, '', 9 - i, {
      [ 'coal' ] = 12 - i,
      [ 'raw beef' ] = 1,
   }, {
      [ 'fried beef' ] = 1,
   } )
end

-- ========================================================================================================
local CATEGORY = 'Блюда'

-- TODO