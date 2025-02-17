local Add, Craft = Ambi.SimpleInventory.AddClass, Ambi.SimpleInventory.AddCraft

local CATEGORY = 'Патроны'

for i = 1, 5 do
    Craft( '9mm t'..i, '9MM', CATEGORY, '', 3 - ( 0.55 * i ), {
        [ 'copper' ] = 5,
        [ 'gunpowder' ] = 1
    }, {
        [ 'pistol ammo' ] = 1,
    } )
end 

for i = 1, 5 do
    Craft( 'shell t'..i, 'Дробь', CATEGORY, '', 3.55 - ( 0.55 * i ), {
        [ 'copper' ] = 6,
        [ 'iron' ] = 1,
        [ 'gunpowder' ] = 2
    }, {
        [ 'shell' ] = 1,
    } )
end

for i = 1, 5 do
    Craft( 'smg ammo t'..i, '5x56', CATEGORY, '', 4 - ( 0.55 * i ), {
        [ 'copper' ] = 7,
        [ 'iron' ] = 2,
        [ 'gunpowder' ] = 3
    }, {
        [ 'smg ammo' ] = 1,
    } )
end

for i = 3, 5 do
    Craft( 'rifle ammo t'..i, '7x62', CATEGORY, '', 6 - i, {
        [ 'copper' ] = 8,
        [ 'iron' ] = 3,
        [ 'gunpowder' ] = 4
    }, {
        [ 'rifle ammo' ] = 1,
    } )
end

for i = 4, 5 do
    Craft( 'sniper rifle ammo t'..i, '7x62 Sniper', CATEGORY, '', 16 - i, {
        [ 'copper' ] = 10,
        [ 'iron' ] = 25,
        [ 'gunpowder' ] = 6
    }, {
        [ 'sniper ammo' ] = 1,
    } )
end

-- ======================================================================================================================== --
local CATEGORY = 'Пистолет'

for i = 1, 5 do
    Craft( 'revolver t'..i, 'Револьвер', CATEGORY, '', 30 - i, {
        [ 'copper' ] = 12,
        [ 'copper tube' ] = 1,
        [ 'rope' ] = 8,
    }, {
        [ 'revolver' ] = 1,
    } )
end

for i = 2, 5 do
    Craft( '9mm pistol t'..i, 'Пистолет 9ММ', CATEGORY, '', 45 - i, {
        [ 'iron' ] = 15,
        [ 'copper tube' ] = 1,
        [ 'pistol parts' ] = 1,
    }, {
        [ 'pistol 9mm' ] = 1,
    } )
end

for i = 2, 5 do
    Craft( 'p250 t'..i, 'P250', CATEGORY, '', 55 - i, {
        [ 'iron' ] = 25,
        [ 'copper tube' ] = 1,
        [ 'pistol parts' ] = 1,
    }, {
        [ 'p250' ] = 1,
    } )
end

-- ======================================================================================================================== --
for i = 3, 5 do
    Craft( 'shotgun t'..i, 'Shotgun', CATEGORY, '', 85 - i, {
        [ 'iron' ] = 45,
        [ 'copper tube' ] = 1,
        [ 'shotgun parts' ] = 2,
    }, {
        [ 'shotgun' ] = 1,
    } )
end

-- ======================================================================================================================== --
for i = 3, 5 do
    Craft( 'f1 t'..i, 'F1', CATEGORY, '', 100 - i, {
        [ 'iron' ] = 55,
        [ 'explosive' ] = 4,
    }, {
        [ 'f1' ] = 1,
    } )
end

-- ======================================================================================================================== --
local CATEGORY = 'Melee'

for i = 3, 5 do
    Craft( 'knife t'..i, 'Knife', CATEGORY, '', 5 - i, {
        [ 'iron' ] = 10,
    }, {
        [ 'knife' ] = 1,
    } )

    Craft( 'tomahawk t'..i, 'Tomahawk', CATEGORY, '', 10 - i, {
        [ 'iron' ] = 20,
    }, {
        [ 'tomahawk' ] = 1,
    } )

    Craft( 'survival machete t'..i, 'Survival Machete', CATEGORY, '', 15 - i, {
        [ 'iron' ] = 35,
    }, {
        [ 'survival machete' ] = 1,
    } )
end