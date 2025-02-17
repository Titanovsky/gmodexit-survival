local C = Ambi.General.Global.Colors
local Add, Craft = Ambi.SimpleInventory.AddClass, Ambi.SimpleInventory.AddCraft
local NO_ICON = nil

------------------------------------------------------------------------------
local CATEGORY = 'Основные Ресурсы'

Add( 'wood', 'Древесина', CATEGORY, 'https://i.ibb.co/py1vKgw/wood.png', 'Древесина из обычного дерева' )
Add( 'wood red', 'Красная Древесина', CATEGORY, 'https://i.ibb.co/1mzhTVg/wood-red.png', 'Древесина из красного дерева' )
Add( 'stone', 'Камень', CATEGORY, 'https://i.ibb.co/9b1QDWn/stone.png' )
Add( 'ground', 'Земля', CATEGORY, 'https://i.ibb.co/kX9XCrN/ground.png' )
Add( 'sand', 'Песок', CATEGORY, 'https://i.ibb.co/0BcwvGj/sand.png' )
Add( 'silicon', 'Кремний', CATEGORY, 'https://i.ibb.co/zFBCFBF/silicon.png' )
Add( 'sulfur', 'Сера', CATEGORY, 'https://i.ibb.co/zVZY6Wg/sulfur.png' )
Add( 'peat', 'Торф', CATEGORY, 'https://i.ibb.co/WK3mYwk/peat.png' )
Add( 'oil', 'Нефть', CATEGORY, 'https://i.ibb.co/mDwbcPF/oil.png' )
Add( 'oil unprocessed', 'Непереработанная Нефть', CATEGORY, 'https://i.ibb.co/8jSYDdq/oil-unprocessed.png' )
Add( 'plastic', 'Пластик', CATEGORY, 'https://i.ibb.co/68mkdDf/plastic.png' )
Add( 'cloth', 'Ткань', CATEGORY, 'https://i.ibb.co/HP666gz/cloth.png' )
Add( 'leather', 'Кожа', CATEGORY, 'https://i.ibb.co/QjTSZhD/leather.png' )
Add( 'coin', 'Монетка', CATEGORY, 'https://i.ibb.co/wCXN95L/coin.png' )
Add( 'coal', 'Уголь', CATEGORY, 'https://i.ibb.co/5Fsyy1s/coal.png' )
Add( 'cannabis', 'Каннабис', CATEGORY, 'https://i.ibb.co/b5FNRgY/cannabis.png' )
Add( 'urine', 'Моча', CATEGORY, 'https://i.ibb.co/9WW7ZxM/urine.png', 'Вещество с большим содержанием мочевины' )
Add( 'brick', 'Кирпич', CATEGORY, NO_ICON )
Add( 'bones', 'Кости', CATEGORY, NO_ICON )
Add( 'red stone', 'Red Stone', CATEGORY, 'https://i.ibb.co/NSSxhD0/red-stone.png' )

--------------------------------------------------------------------------
local CATEGORY = 'Внеземные Ресурсы'

Add( 'stone moon', 'Лунный Камень', CATEGORY, 'https://i.ibb.co/wyhC4Cf/stone-moon.png' )
Add( 'stone mars', 'Марсианский Камень', CATEGORY, 'https://i.ibb.co/1JrYRqr/stone-mars.png')

--------------------------------------------------------------------------
local CATEGORY = 'Основные Соединения'

Add( 'explosive', 'Взрывчатое Вещество', CATEGORY )
Add( 'gunpowder', 'Порох', CATEGORY )
Add( 'saltpeter', 'Селитра', CATEGORY )
Add( 'polyethylene', 'Полиэтилен', CATEGORY, 'https://i.ibb.co/HxyrwCw/polyethylene.png' )
Add( 'phosphorus', 'Фосфор', CATEGORY, 'https://i.ibb.co/4ZSdHsD/phosphorus.png' )
Add( 'phosphorus red', 'Фосфор Красный', CATEGORY, 'https://i.ibb.co/9rvs1rp/phosphorus-red.png' )
Add( 'phosphorus white', 'Фосфор Белый', CATEGORY, 'https://i.ibb.co/kxDDWrs/phosphorus-white.png' )
Add( 'calium', 'Калий', CATEGORY )
Add( 'calcium', 'Кальций', CATEGORY )
Add( 'magnesium', 'Магний', CATEGORY )
Add( 'natrium', 'Натрий', CATEGORY )
Add( 'chlorine', 'Хлор', CATEGORY )

--------------------------------------------------------------------------
local CATEGORY = 'Сплавы'

Add( 'steel', 'Сталь', CATEGORY, 'https://i.ibb.co/cr33BfN/steel.png', 'Железо + Углерод' )
Add( 'glass', 'Стекло', CATEGORY, 'https://i.ibb.co/n0rn82C/glass.png', 'Из Песка' )

--------------------------------------------------------------------------
local CATEGORY = 'Разное'

Add( 'simple dimple', 'Симпл Димпл', CATEGORY, 'https://i.ibb.co/CWKt4bc/simple-dimple.png' )
Add( 'food wrap', 'Пищевая Плёнка', CATEGORY, 'https://i.ibb.co/ZftpZ9v/food-wrap.png' )
Add( 'rope', 'Верёвка', CATEGORY, 'https://i.ibb.co/NLn6s03/rope.png' )

--------------------------------------------------------------------------
local CATEGORY = 'Персонажи'

Add( 'combine', 'Combine', CATEGORY, 'https://i.ibb.co/5YFnnsm/combine.png' )

--------------------------------------------------------------------------
local CATEGORY = 'Краски'

local function Paint( ePly, cColor )
    local r, g, b = cColor.r / 255, cColor.g / 255, cColor.b / 255

    ePly:SetPlayerColor( Vector( r, g, b ) )
    ePly:ChatSend( C.ABS_WHITE, '[•] Вы перекрасились в ', cColor, 'другой', C.ABS_WHITE, ' цвет' )
    ePly:EmitSound( 'player/sprayer.wav' )

    return true
end

Add( 'paints abs red', 'Краски: Абсолютно Красный', CATEGORY, NO_ICON, 'Краситель', function( ePly ) 
    return Paint( ePly, C.ABS_RED )
end )

Add( 'paints abs green', 'Краски: Абсолютно Зелёный', CATEGORY, NO_ICON, 'Краситель', function( ePly ) 
    return Paint( ePly, C.ABS_GREEN )
end )

Add( 'paints abs blue', 'Краски: Абсолютно Синий', CATEGORY, NO_ICON, 'Краситель', function( ePly ) 
    return Paint( ePly, C.ABS_BLUE )
end )

Add( 'paints red', 'Краски: Красный', CATEGORY, NO_ICON, 'Краситель', function( ePly ) 
    return Paint( ePly, C.AMBI_RED )
end )

Add( 'paints green', 'Краски: Зелёный', CATEGORY, NO_ICON, 'Краситель', function( ePly ) 
    return Paint( ePly, C.AMBI_GREEN )
end )

Add( 'paints blue', 'Краски: Синий', CATEGORY, NO_ICON, 'Краситель', function( ePly ) 
    return Paint( ePly, C.AMBI_BLUE )
end )

Add( 'paints purple', 'Краски: Пурпурный', CATEGORY, NO_ICON, 'Краситель', function( ePly ) 
    return Paint( ePly, C.AMBI_PURPLE )
end )

Add( 'paints abs black', 'Краски: Абсолютно Чёрный', CATEGORY, NO_ICON, 'Краситель', function( ePly ) 
    return Paint( ePly, C.ABS_BLACK )
end )

Add( 'paints tolik', 'Краски: Толюнция-Попунция', CATEGORY, NO_ICON, 'Краситель', function( ePly ) 
    return Paint( ePly, C.AMBI_ERROR )
end )

--------------------------------------------------------------------------
local CATEGORY = 'Скины'

local function ChangeClothes( ePly, sSkin )
    if ePly:GetNWBool( 'HasSuit' ) then ePly:ChatPrint( 'Нельзя переодеться в спец. одежде' ) return false end
    if timer.Exists( 'AmbSurvivalDelayChangeClothes:'..ePly:EntIndex() ) then ePly:ChatPrint( 'Пожалуйста, подождите' ) return false end

    ePly:SetClothSkin( sSkin )
    ePly:ChatPrint( 'Вы переоделись, прошлая одежда уничтожена' )
    ePly:RunCommand( 'act salute' )

    timer.Create( 'AmbSurvivalDelayChangeClothes:'..ePly:EntIndex(), 2, 1, function() end )

    return true
end

Add( 'skin male01', 'Одежда: Male01', CATEGORY, 'https://i.ibb.co/f2xy0dk/male1.png', '', function( ePly ) 
    return ChangeClothes( ePly, 'models/player/Group01/male_01.mdl' )
end )

Add( 'skin male02', 'Одежда: Male02', CATEGORY, 'https://i.ibb.co/k36jfb2/male2.png', '', function( ePly ) 
    return ChangeClothes( ePly, 'models/player/Group01/male_02.mdl' )
end )

Add( 'skin male03', 'Одежда: Male03', CATEGORY, 'https://i.ibb.co/xzzJ6DW/male3.png', '', function( ePly ) 
    return ChangeClothes( ePly, 'models/player/Group01/male_03.mdl' )
end )

Add( 'skin male04', 'Одежда: Male04', CATEGORY, 'https://i.ibb.co/C0j8S8V/male4.png', '', function( ePly ) 
    return ChangeClothes( ePly, 'models/player/Group01/male_04.mdl' )
end )

Add( 'skin male05', 'Одежда: Male05', CATEGORY, 'https://i.ibb.co/KDH23dz/male5.png', '', function( ePly ) 
    return ChangeClothes( ePly, 'models/player/Group01/male_05.mdl' )
end )

Add( 'skin male06', 'Одежда: Male06', CATEGORY, 'https://i.ibb.co/TKmW102/male6.png', '', function( ePly ) 
    return ChangeClothes( ePly, 'models/player/Group01/male_06.mdl' )
end )

Add( 'skin male07', 'Одежда: Male07', CATEGORY, 'https://i.ibb.co/ZfBwGW1/male7.png', '', function( ePly ) 
    return ChangeClothes( ePly, 'models/player/Group01/male_07.mdl' )
end )

Add( 'skin male08', 'Одежда: Male08', CATEGORY, 'https://i.ibb.co/ZKKKn4T/male8.png', '', function( ePly ) 
    return ChangeClothes( ePly, 'models/player/Group01/male_08.mdl' )
end )

Add( 'skin male09', 'Одежда: Male09', CATEGORY, 'https://i.ibb.co/gmWdqK6/male9.png', '', function( ePly ) 
    return ChangeClothes( ePly, 'models/player/Group01/male_09.mdl' )
end )

Add( 'skin male02 group 2', 'Одежда: Male02 Group 2', CATEGORY, 'https://i.ibb.co/XJtFJt3/male1-g2.png', '', function( ePly ) 
    return ChangeClothes( ePly, 'models/player/Group02/male_02.mdl' )
end )

Add( 'skin male04 group 2', 'Одежда: Male04 Group 2', CATEGORY, 'https://i.ibb.co/MhX9cXf/male2-g2.png', '', function( ePly ) 
    return ChangeClothes( ePly, 'models/player/Group02/male_04.mdl' )
end )

Add( 'skin male06 group 2', 'Одежда: Male06 Group 2', CATEGORY, 'https://i.ibb.co/vqSPXq3/male3-g2.png', '', function( ePly ) 
    return ChangeClothes( ePly, 'models/player/Group02/male_06.mdl' )
end )

Add( 'skin male08 group 2', 'Одежда: Male08 Group 2', CATEGORY, 'https://i.ibb.co/ScJWCfV/male4-g2.png', '', function( ePly ) 
    return ChangeClothes( ePly, 'models/player/Group02/male_08.mdl' )
end )

Add( 'skin female01', 'Одежда: Female01', CATEGORY, 'https://i.ibb.co/b32rXQx/female1.png', '', function( ePly ) 
    return ChangeClothes( ePly, 'models/player/Group01/female_01.mdl' )
end )

Add( 'skin female02', 'Одежда: Female02', CATEGORY, 'https://i.ibb.co/ZHZ2dDm/female2.png', '', function( ePly ) 
    return ChangeClothes( ePly, 'models/player/Group01/female_02.mdl' )
end )

Add( 'skin female03', 'Одежда: Female03', CATEGORY, 'https://i.ibb.co/3vqBBNg/female3.png', '', function( ePly ) 
    return ChangeClothes( ePly, 'models/player/Group01/female_03.mdl' )
end )

Add( 'skin female04', 'Одежда: Female04', CATEGORY, 'https://i.ibb.co/JFzrqbf/female4.png', '', function( ePly ) 
    return ChangeClothes( ePly, 'models/player/Group01/female_04.mdl' )
end )

Add( 'skin female05', 'Одежда: Female05', CATEGORY, 'https://i.ibb.co/p0yc0LV/female5.png', '', function( ePly ) 
    return ChangeClothes( ePly, 'models/player/Group01/female_05.mdl' )
end )

Add( 'skin female06', 'Одежда: Female06', CATEGORY, 'https://i.ibb.co/Qp1v4pq/female6.png', '', function( ePly ) 
    return ChangeClothes( ePly, 'models/player/Group01/female_06.mdl' )
end )

Add( 'skin alyx', 'Одежда: Alyx', CATEGORY, 'https://i.ibb.co/zrHjq26/alyx.png', '', function( ePly ) 
    return ChangeClothes( ePly, 'models/player/alyx.mdl' )
end )

Add( 'skin barney', 'Одежда: Barney', CATEGORY, 'https://i.ibb.co/BZ9rBRp/barney.png', '', function( ePly ) 
    return ChangeClothes( ePly, 'models/player/barney.mdl' )
end )

Add( 'skin breen', 'Одежда: Breen', CATEGORY, 'https://i.ibb.co/L96H8pc/breen.png', '', function( ePly ) 
    return ChangeClothes( ePly, 'models/player/breen.mdl' )
end )

Add( 'skin chell', 'Одежда: Chell', CATEGORY, 'https://i.ibb.co/Cshb3Jd/chell.png', '', function( ePly ) 
    return ChangeClothes( ePly, 'models/player/p2_chell.mdl' )
end )

Add( 'skin eli', 'Одежда: Eli', CATEGORY, 'https://i.ibb.co/JC1X2SK/eli.png', '', function( ePly ) 
    return ChangeClothes( ePly, 'models/player/eli.mdl' )
end )

Add( 'skin gman', 'Одежда: G-Man', CATEGORY, 'https://i.ibb.co/XLFXHxF/gman.png', '', function( ePly ) 
    return ChangeClothes( ePly, 'models/player/gman_high.mdl' )
end )

Add( 'skin kleiner', 'Одежда: Педофил', CATEGORY, 'https://i.ibb.co/XWz85Jp/kleiner.png', '', function( ePly ) 
    return ChangeClothes( ePly, 'models/player/kleiner.mdl' )
end )

Add( 'skin monk', 'Одежда: Monk', CATEGORY, 'https://i.ibb.co/sRr4B8Z/grigory.png', '', function( ePly ) 
    return ChangeClothes( ePly, 'models/player/monk.mdl' )
end )

Add( 'skin mossman', 'Одежда: Mossman', CATEGORY, 'https://i.ibb.co/GsVV0q9/mossman1.png', '', function( ePly ) 
    return ChangeClothes( ePly, 'models/player/mossman.mdl' )
end )

Add( 'skin mossman arctic', 'Одежда: Mossman Arctic', CATEGORY, 'https://i.ibb.co/dW1sNsF/mossman2.png', '', function( ePly ) 
    return ChangeClothes( ePly, 'models/player/mossman_arctic.mdl' )
end )

Add( 'skin odessa', 'Одежда: Odessa', CATEGORY, 'https://i.ibb.co/vzpym16/odessa.png', '', function( ePly ) 
    return ChangeClothes( ePly, 'models/player/odessa.mdl' )
end )

Add( 'skin magnusson', 'Одежда: Magnusson', CATEGORY, 'https://i.ibb.co/Z2LgjFr/magnusson.png', '', function( ePly ) 
    return ChangeClothes( ePly, 'models/player/magnusson.mdl' )
end )

Add( 'skin combine elite', 'Одежда: Combine Elite', CATEGORY, 'https://i.ibb.co/vmWcdSp/combine.png', '', function( ePly ) 
    return ChangeClothes( ePly, 'models/player/combine_super_soldier.mdl' )
end )

Add( 'skin charple', 'Одежда: Charple', CATEGORY, 'https://i.ibb.co/TLvgN2k/charple.png', '', function( ePly ) 
    return ChangeClothes( ePly, 'models/player/charple.mdl' )
end )

Add( 'skin shitzu', 'Одежда: Shitzu', CATEGORY, 'https://i.imgur.com/DahB4K1.png', '', function( ePly ) 
    return ChangeClothes( ePly, 'models/grim/isa/isa_sniper.mdl' )
end )

Add( 'skin minecraft', 'Одежда: Minecraft', CATEGORY, NO_ICON, '', function( ePly ) 
    return ChangeClothes( ePly, 'models/player/blockdude.mdl' )
end )

--------------------------------------------------------------------------
local CATEGORY = 'Space'

local function SuitSpace( ePly )
    if ePly:GetNWBool( 'HasSuit' ) then ePly:ChatPrint( 'На вас уже костюм!' ) return false end

    ePly:SetNWBool( 'HasSuit', true )
    ePly:SetNWBool( 'HasSuitSpace', true )
    ePly:SetModel( 'models/player/combine_super_soldier.mdl' )
    ePly:ChatPrint( 'Вы надели космической костюм' )

    return true
end

Add( 'space suit', 'Скафандр', CATEGORY, 'https://i.ibb.co/N1BR9xL/5c73f83ae595af020568c255.png', '', function( ePly ) 
    return SuitSpace( ePly )
end )