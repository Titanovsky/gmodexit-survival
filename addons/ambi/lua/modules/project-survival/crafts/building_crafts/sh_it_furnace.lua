local Add, Craft = Ambi.SimpleInventory.AddClass, Ambi.SimpleInventory.AddCraft

local CATEGORY = 'Furnace'

-- ======================================================================================================================== --
for i = 1, 5 do
   Craft( 'coal t'..i, 'Уголь', CATEGORY, '', 7.55 - i, {
        [ 'wood' ] = 45 - i * 5,
   }, {
        [ 'coal' ] = 1,
   } )
end

-- ======================================================================================================================== --
for i = 1, 5 do
   Craft( 'plastic t'..i, 'Пластик', CATEGORY, '', 0.25 * i, {
        [ 'coal' ] = 40 - ( 5 * i ),
   }, {
        [ 'plastic' ] = 1,
   } )
end

-- ======================================================================================================================== --
for i = 1, 5 do
   Craft( 'glass t'..i, 'Стекло', CATEGORY, '', 22 - ( 4 * i ), {
        [ 'sand' ] = 4,
   }, {
        [ 'glass' ] = 1,
   } )
end

-- ======================================================================================================================== --
for i = 1, 5 do
   Craft( 'copper t'..i, 'Медь', CATEGORY, '', 5 - ( i * 0.98 ), {
        [ 'coal' ] = 15 - ( 2 * i ),
        [ 'copper ore' ] = 3,
   }, {
        [ 'copper' ] = 1,
   } )
end

-- ======================================================================================================================== --
for i = 2, 5 do
   Craft( 'iron t'..i, 'Железо', CATEGORY, '', 5 - ( i * 0.85 ), {
        [ 'coal' ] = 25 - ( 3 * i ),
        [ 'iron ore' ] = 2,
   }, {
        [ 'iron' ] = 1,
   } )
end

-- ======================================================================================================================== --
for i = 2, 5 do
   Craft( 'brick t'..i, 'Кирпич', CATEGORY, '', 1, {
        [ 'ground' ] = 5,
        [ 'stone' ] = 10 - i,
   }, {
        [ 'brick' ] = 1,
   } )
end