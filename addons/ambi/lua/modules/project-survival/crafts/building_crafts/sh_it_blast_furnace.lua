local Add, Craft = Ambi.SimpleInventory.AddClass, Ambi.SimpleInventory.AddCraft

-- ======================================================================================================================== --
for i = 1, 5 do
   Craft( 'steel t'..i, 'Сталь', CATEGORY, '', 6 - i, {
        [ 'oil' ] = 6 - i,
        [ 'plastic' ] = 25 - ( 2 * i ),
        [ 'iron' ] = 8,
   }, {
        [ 'steel' ] = 1,
   } )
end

-- ======================================================================================================================== --
for i = 1, 5 do
   Craft( 'titan t'..i, 'Титан', CATEGORY, '', 14 - i, {
        [ 'oil' ] = 6 - i,
        [ 'titan ore' ] = 1,
   }, {
        [ 'titan' ] = 1,
   } )
end