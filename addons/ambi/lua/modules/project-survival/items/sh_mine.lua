local Add, Craft = Ambi.SimpleInventory.AddClass, Ambi.SimpleInventory.AddCraft
local ExtraCraft = Craft
local NO_ICON = nil

local CATEGORY = 'Руды'
Add( 'ore', 'Руда', CATEGORY, 'https://i.ibb.co/xHHSrfM/ore.png' )
Add( 'copper ore', 'Медная Руда', CATEGORY, 'https://i.ibb.co/yfz5zh5/copper-ore.png' )
Add( 'aluminum ore', 'Алюминиевая Руда', CATEGORY, 'https://i.ibb.co/6B9sPPQ/aluminum-ore.png' )
Add( 'zink ore', 'Цинковая Руда', CATEGORY, 'https://i.ibb.co/H4XywxW/zink-ore.png' )
Add( 'iron ore', 'Железная Руда', CATEGORY, 'https://i.ibb.co/gdFFPLw/iron-ore.png' )
Add( 'gold ore', 'Золотая Руда', CATEGORY, 'https://i.ibb.co/hM5vQ7M/gold-ore.png' )
Add( 'titan ore', 'Титановая Руда', CATEGORY, 'https://i.ibb.co/smWHrNB/titan-ore.png' )

--------------------------------------------------------------------------

local CATEGORY = 'Металлы'
Add( 'aluminum', 'Алюминий', CATEGORY, 'https://i.ibb.co/Wyv67qg/aluminum.png' )
Add( 'copper', 'Медь', CATEGORY, 'https://i.ibb.co/HD209zh/copper.png' )
Add( 'iron', 'Железо', CATEGORY, 'https://i.ibb.co/0K5tNmc/iron.png' )
Add( 'zink', 'Цинк', CATEGORY, 'https://i.ibb.co/hRLC6RG/zink.png' )
Add( 'titan', 'Титан', CATEGORY, 'https://i.ibb.co/hFMVwPV/titan.png' )
Add( 'gold', 'Золото', CATEGORY, 'https://i.ibb.co/WpVJhh3/gold.png' )
Add( 'uranium 238', 'Уран 238', CATEGORY, 'https://i.ibb.co/yYX97wd/uranium-238.png' )
Add( 'uranium 234', 'Уран 234', CATEGORY, 'https://i.ibb.co/s6Kyn77/uranium-234.png' )
Add( 'thorium 230', 'Торий 230', CATEGORY, 'https://i.ibb.co/0VHDSYL/thorium-230.png' )
Add( 'thorium 234', 'Торий 234', CATEGORY, 'https://i.ibb.co/rbznQJp/thorium-234.png' )

--------------------------------------------------------------------------

local CATEGORY = 'Минералы'
Add( 'crystal', 'Кристалл', CATEGORY, 'https://i.ibb.co/YpDybHm/crystal.png' )
Add( 'titanite', 'Титанит', CATEGORY, 'https://i.ibb.co/c3GZSgB/titanite.png', 'Титан + Железо' )
Add( 'ilmenite', 'Ильменит', CATEGORY, 'https://i.ibb.co/nwn16qs/ilmenite.png', 'Титан' )
Add( 'stannite', 'Станнит', CATEGORY, 'https://i.ibb.co/ypQ9XSZ/stannite.png', 'Железо + Медь' )
Add( 'chamosite', 'Шамозит', CATEGORY, 'https://i.ibb.co/DkYHjsR/chamosite.png', 'Железо + Алюминий' )
Add( 'hydroxyapatite', 'Гидроксиапатит', CATEGORY, 'https://i.ibb.co/nzfTHMR/hydroxyapatite.png', 'Кальций + Фосфор' )
Add( 'pyromorphite', 'Пироморфит', CATEGORY, 'https://i.ibb.co/c3VLjqD/pyromorphite.png', 'Хлор + Железо' )
Add( 'langbeinite', 'Лангбейнит', CATEGORY, 'https://i.ibb.co/y0VH4K8/langbeinite.png', 'Калий + Магний' )
Add( 'polygalite', 'Полигалит', CATEGORY, 'https://i.ibb.co/zQ9RtNQ/polygalite.png', 'Калий + Кальций' )
Add( 'graphite', 'Графит', CATEGORY, 'https://i.ibb.co/ZL2Gh1H/graphite.png', 'Углерод' )
Add( 'silvinite', 'Сильвинит', CATEGORY, 'https://i.ibb.co/5MmH8MQ/silvinite.png', 'Калий + Натрий' )
Add( 'lazulite', 'Лазулит', CATEGORY, 'https://i.ibb.co/f8NnTgW/lazulite.png', 'Фосфор + Железо + Магний' )
Add( 'bornite', 'Борнит', CATEGORY, 'https://i.ibb.co/tqBX1kh/bornite.png', 'Медь + Железо + Сера' )
Add( 'сryolite', 'Криолит', CATEGORY, 'https://i.ibb.co/yn5zDHp/ryolite.png', 'Натрий' )
Add( 'chrysoprase', 'Хризопраз', CATEGORY, 'https://i.ibb.co/MNwzgFn/chrysoprase.png', 'Кремний' )

Craft( 'titanite products', 'Вещества из Титанита', CATEGORY, '', 2.25, {
   [ 'titanite' ] = 1,
}, {
   [ 'titan' ] = 2,
   [ 'iron' ] = 5,
} )

Craft( 'ilmenit products', 'Вещества из Ильменита', CATEGORY, 'пиздец название', 2.25, {
   [ 'ilmenite' ] = 1,
}, {
   [ 'titan' ] = 2
} )

Craft( 'stannite products', 'Вещества из Станнита', CATEGORY, '', 3.5, {
   [ 'stannite' ] = 1,
}, {
   [ 'iron' ] = 3,
   [ 'copper' ] = 4,
} )

Craft( 'chamosite products', 'Вещества из Шамозита', CATEGORY, '', 2.25, {
   [ 'chamosite' ] = 1,
}, {
   [ 'iron' ] = 2,
   [ 'aluminum' ] = 2,
} )

Craft( 'graphite products', 'Вещества из Графита', CATEGORY, '', 3, {
   [ 'graphite' ] = 1,
}, {
   [ 'coal' ] = 14
} )

ExtraCraft( 'graphite products 2', 'Ценные Вещества из Графита', CATEGORY, '', 3, {
   [ 'graphite' ] = 100,
}, {
   [ 'diamond' ] = 1
} )

Craft( 'pyromorphite products', 'Вещества из Пироморфита', CATEGORY, '', 2.78, {
   [ 'pyromorphite' ] = 1,
}, {
   [ 'iron' ] = 4
} )

Craft( 'lazulite products', 'Вещества из Лазулита', CATEGORY, '', 3, {
   [ 'lazulite' ] = 1,
}, {
   [ 'iron' ] = 5
} )

Craft( 'bornite products', 'Вещества из Борнита', CATEGORY, '', 7, {
   [ 'bornite' ] = 1,
}, {
   [ 'copper' ] = 7,
   [ 'iron' ] = 5,
   [ 'sulfur' ] = 6
} )

--------------------------------------------------------------------------

local CATEGORY = 'Драгоценные Кристаллы'
Add( 'diamond', 'Алмаз', CATEGORY, 'https://i.ibb.co/3vtsbY3/diamond.png' )
Add( 'emerald', 'Изумруд', CATEGORY, 'https://i.ibb.co/H4Sf8kG/emerald.png' )
Add( 'ruby', 'Рубин', CATEGORY, 'https://i.ibb.co/1vJH0fW/ruby.png' )
Add( 'sapphire', 'Сапфир', CATEGORY, 'https://i.ibb.co/Wt0V2zw/sapphire.png' )
Add( 'amber', 'Янтарь', CATEGORY, 'https://i.ibb.co/cDWxSPF/amber.png' )
Add( 'amethyst', 'Аметист', CATEGORY, 'https://i.ibb.co/TKbh6W8/amethyst.png' )

Add( 'ruby raw', 'Неочищенный Рубин', CATEGORY, 'https://i.ibb.co/S7N13mj/ruby-raw.png' )
Add( 'diamond raw', 'Неочищенный Алмаз', CATEGORY, 'https://i.ibb.co/3Sqm7Gt/diamond-raw.png' )
Add( 'emerald raw', 'Неочищенный Изумруд', CATEGORY, 'https://i.ibb.co/yq93NNJ/emerald-raw.png' )
Add( 'sapphire raw', 'Неочищенный Сапфир', CATEGORY, 'https://i.ibb.co/PZpkFsz/sapphire-raw.png' )
Add( 'amber raw', 'Неочищенный Янтарь', CATEGORY, 'https://i.ibb.co/qBJRQCj/amber-raw.png' )
Add( 'amethyst raw', 'Неочищенный Аметист', CATEGORY, 'https://i.ibb.co/fxHcWt2/amethyst-raw.png' )

Craft( 'diamond', 'Алмаз', CATEGORY, 'Выглядет чище', 10, {
   [ 'diamond raw' ] = 1,
}, {
   [ 'diamond' ] = 1,
} )

Craft( 'emerald', 'Изумруд', CATEGORY, 'Выглядет чище', 10, {
   [ 'emerald raw' ] = 1,
}, {
   [ 'emerald' ] = 1,
} )

Craft( 'sapphire', 'Сапфир', CATEGORY, 'Выглядет чище', 10, {
   [ 'sapphire raw' ] = 1,
}, {
   [ 'sapphire' ] = 1,
} )

Craft( 'amber', 'Янтарь', CATEGORY, 'Выглядет чище', 10, {
   [ 'amber raw' ] = 1,
}, {
   [ 'amber' ] = 1,
} )

Craft( 'amethyst', 'Аметист', CATEGORY, 'Выглядет чище', 10, {
   [ 'amethyst raw' ] = 1,
}, {
   [ 'amethyst' ] = 1,
} )

----------------------------------------------------

local CATEGORY = 'Металлы'
Craft( 'aluminum', 'Алюминий', CATEGORY, '', 0.15, {
   [ 'aluminum ore' ] = 4,
}, {
   [ 'aluminum' ] = 1
} )

Craft( 'copper', 'Медь', CATEGORY, '', 0.25, {
   [ 'copper ore' ] = 3,
}, {
   [ 'copper' ] = 1
} )

Craft( 'iron', 'Железо', CATEGORY, '', 0.35, {
   [ 'iron ore' ] = 2,
}, {
   [ 'iron' ] = 1
} )

Craft( 'zink', 'Цинк', CATEGORY, '', 0.75, {
   [ 'zink ore' ] = 2,
}, {
   [ 'zink' ] = 1
} )

Craft( 'titan', 'Титан', CATEGORY, '', 0.95, {
   [ 'titan ore' ] = 1,
}, {
   [ 'titan' ] = 1
} )

Craft( 'gold', 'Золото', CATEGORY, '', 1.15, {
   [ 'gold ore' ] = 1,
}, {
   [ 'gold' ] = 1
} )