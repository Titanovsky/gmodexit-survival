local Add, Craft = Ambi.SimpleInventory.AddClass, Ambi.SimpleInventory.AddCraft

local CATEGORY = 'Нефтяная промышленность'

Craft( 'oil 1', 'Нефть', CATEGORY, 'Нефть для энергий', 10, {
   [ 'coal' ] = 25,
   [ 'oil unprocessed' ] = 2,
}, {
   [ 'oil' ] = 1,
} )

Craft( 'oil 2', 'Нефть', CATEGORY, 'Нефть для энергий', 8.75, {
   [ 'coal' ] = 15,
   [ 'oil unprocessed' ] = 2,
}, {
   [ 'oil' ] = 1,
} )

Craft( 'oil 3', 'Нефть', CATEGORY, 'Нефть для энергий', 6.55, {
   [ 'coal' ] = 8,
   [ 'oil unprocessed' ] = 2,
}, {
   [ 'oil' ] = 1,
} )

Craft( 'oil 4', 'Нефть', CATEGORY, 'Нефть для энергий', 4.25, {
   [ 'coal' ] = 4,
   [ 'oil unprocessed' ] = 1,
}, {
   [ 'oil' ] = 1,
} )

Craft( 'oil 5', 'Нефть', CATEGORY, 'Нефть для энергий', 1.75, {
   [ 'coal' ] = 2,
   [ 'oil unprocessed' ] = 1,
}, {
   [ 'oil' ] = 1,
} )
