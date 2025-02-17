local Add, Craft = Ambi.SimpleInventory.AddClass, Ambi.SimpleInventory.AddCraft
local NO_ICON = nil

local CATEGORY = 'Электричество'

Add( 'electric plate', 'Плата', CATEGORY, NO_ICON )
Craft( 'electric plate', 'Плата', CATEGORY, 'Обычная системная плата', 7, {
   [ 'copper wire' ] = 3,
   [ 'copper' ] = 7,
   [ 'gold' ] = 1
}, {
   [ 'electric plate' ] = 1,
} )

Add( 'microchip', 'Микросхема', CATEGORY, NO_ICON )
Craft( 'microchip', 'Микросхема', CATEGORY, 'Очень сложная конструкция внутри', 10, {
   [ 'copper wire' ] = 8,
   [ 'electric plate' ] = 4
}, {
   [ 'microchip' ] = 1,
} )

---------------------------------------------------------------------------

local CATEGORY = 'Компьютер'

Add( 'electronic computer ram', 'Оперативная Память', CATEGORY, NO_ICON )
Add( 'electronic computer energy station', 'Блок Питания', CATEGORY, NO_ICON )
Add( 'electronic computer body', 'Корпус', CATEGORY, NO_ICON )
Add( 'electronic computer motherboard', 'Материнская Плата', CATEGORY, NO_ICON )
Add( 'electronic computer cpu', 'Процессор', CATEGORY, NO_ICON )
Add( 'electronic computer gpu', 'Видео адаптер', CATEGORY, NO_ICON )
Add( 'electronic computer network adapter', 'Сетевой Адаптер', CATEGORY, NO_ICON )
Add( 'electronic computer sound adapter', 'Звуковой Адаптер', CATEGORY, NO_ICON )
Add( 'electronic computer hdd', 'Жесткий Диск', CATEGORY, NO_ICON )
Add( 'electronic computer keyboard', 'Клавиатура', CATEGORY, NO_ICON )
Add( 'electronic computer mouse', 'Мышка', CATEGORY, NO_ICON )
Add( 'electronic computer monitor', 'Монитор', CATEGORY, NO_ICON )