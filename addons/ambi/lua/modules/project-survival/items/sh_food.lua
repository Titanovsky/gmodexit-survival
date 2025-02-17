local Add, Craft = Ambi.SimpleInventory.AddClass, Ambi.SimpleInventory.AddCraft
local NO_ICON, NO_DESC = nil

local function Drink( ePly, nThirst )
    local thirst = ePly:GetThirst()
    if ( thirst >= 500 - nThirst ) then return false end

    ePly:SetThirst( thirst + nThirst )

    return true
end

local function Eat( ePly, nHunger )
    local hunger = ePly:GetHunger()
    if ( hunger >= 500 - nHunger ) then return false end

    ePly:SetHunger( hunger + nHunger )

    return true
end

local function Refill( ePly, nHunger, nThirst )
    local res1, res2 = Eat( ePly, nHunger or 0 ), Drink( ePly, nThirst or 0 )

    return res1 or res2
end

----------------------------------------------------------------------------------------------------
local CATEGORY = 'Пища'
Add( 'honey', 'Мёд', CATEGORY, 'https://i.ibb.co/wcPxmpB/honey.png', NO_DESC, function( ePly ) 
   return Eat( ePly, 200 ) 
end )

Add( 'baby bottle', 'Соска с Молочком', CATEGORY, 'https://i.ibb.co/6NtXtw6/baby-bottle.png', NO_DESC, function( ePly ) 
   return Refill( ePly, 130, 15 )
end )

Add( 'baguette', 'Батон', CATEGORY, 'https://i.ibb.co/ykscDXp/baguette.png', NO_DESC, function( ePly ) 
   return Eat( ePly, 40 )
end )

Add( 'cheese blue', 'Голубой Сыр', CATEGORY, 'https://i.ibb.co/v1frq0f/cheese-blue.png', NO_DESC, function( ePly ) 
   return Eat( ePly, 10 )
end )

Add( 'cheese', 'Сыр', CATEGORY, 'https://i.ibb.co/y4w5skn/cheese.png', NO_DESC, function( ePly ) 
   return Eat( ePly, 45 )
end )

Add( 'raw pork', 'Сырая Свинина', CATEGORY, 'https://i.ibb.co/DVcJ9Zk/raw-pork.png', NO_DESC, function( ePly ) 
   return Eat( ePly, 5 )
end )

Add( 'raw beef', 'Сырая Говядина', CATEGORY, 'https://i.ibb.co/Q6jt2XC/raw-beef.png', NO_DESC, function( ePly ) 
   return Eat( ePly, 5 )
end )

Add( 'raw chicken', 'Сырая Курица', CATEGORY, 'https://i.ibb.co/pxcsy70/raw-chicken.png', NO_DESC, function( ePly ) 
   return Eat( ePly, 5 )
end )

Add( 'raw egg', 'Сырое Яйцо', CATEGORY, 'https://i.ibb.co/SKCZHqg/egg.png', NO_DESC, function( ePly ) 
   return Eat( ePly, 1 )
end )

Add( 'bread', 'Хлеб', CATEGORY, 'https://i.ibb.co/Jd7dHP3/bread.png', NO_DESC, function( ePly ) 
   return Eat( ePly, 30 )
end )

Add( 'sushi', 'Суши', CATEGORY, 'https://i.ibb.co/kDtXHvQ/sushi.png', NO_DESC, function( ePly ) 
   return Eat( ePly, 125 )
end )

----------------------------------------------------------------------------------------------------
local CATEGORY = 'Пища: Фрукты/Овощи/Ягоды'
Add( 'apple', 'Яблоко', CATEGORY, 'https://i.ibb.co/0QY7JCq/apple.png', 'Сочный фрукт даёт бафф', function( ePly )
    return Refill( ePly, 15, 25 )
end )

Add( 'banana', 'Банан', CATEGORY, 'https://i.ibb.co/zVS0G4K/banana.png', NO_DESC, function( ePly )
    return Eat( ePly, 30 )
end )

Add( 'cabbage', 'Капуста', CATEGORY, 'https://i.ibb.co/n0xYVzQ/cabbage.png', NO_DESC, function( ePly )
    return Eat( ePly, 55 )
end )

Add( 'corn', 'Початок', CATEGORY, 'https://i.ibb.co/X2Rhsq4/corn.png', NO_DESC, function( ePly )
    return Eat( ePly, 45 )
end )

Add( 'cucumber', 'Огурец', CATEGORY, 'https://i.ibb.co/qmfMJkq/cucumber.png', NO_DESC, function( ePly )
    return Eat( ePly, 15 )
end )

Add( 'eggplant', 'Баклажанчик', CATEGORY, 'https://i.ibb.co/k4c6RWJ/eggplant.png', NO_DESC, function( ePly )
    return Eat( ePly, 30 )
end )

Add( 'leek', 'Лук', CATEGORY, 'https://i.ibb.co/BTSRXV1/leek.png', NO_DESC, function( ePly )
    return Eat( ePly, 25 )
end )

Add( 'onion', 'Лук', CATEGORY, 'https://i.ibb.co/PZ1T1yg/onion.png', NO_DESC, function( ePly )
    return Eat( ePly, 30 )
end )

Add( 'lemon', 'Лимон', CATEGORY, 'https://i.ibb.co/80P4m7V/lemon.png', NO_DESC, function( ePly )
    return Drink( ePly, 25 )
end )

Add( 'orange', 'Апельсин', CATEGORY, 'https://i.ibb.co/GJ7JhCn/orange.png', NO_DESC, function( ePly )
    return Refill( ePly, 10, 40 )
end )

Add( 'peach', 'Абрикос', CATEGORY, 'https://i.ibb.co/d5hBNQS/peach.png', NO_DESC, function( ePly )
    return Refill( ePly, 10, 40 )
end )

Add( 'pear', 'Груша', CATEGORY, 'https://i.ibb.co/vx36mcc/pear.png', NO_DESC, function( ePly )
    return Refill( ePly, 10, 40 )
end )

Add( 'pineapple', 'Ананас', CATEGORY, 'https://i.ibb.co/fM6pmxY/pineapple.png', NO_DESC, function( ePly )
    return Refill( ePly, 10, 40 )
end )

Add( 'pumpkin', 'Тыква', CATEGORY, 'https://i.ibb.co/sKfTcRy/pumpkin.png', NO_DESC, function( ePly )
    return Refill( ePly, 10, 40 )
end )

Add( 'watermelon', 'Арбуз', CATEGORY, 'https://i.ibb.co/HtR1hdC/watermelon.png', NO_DESC, function( ePly )
    return Refill( ePly, 125, 300 )
end )

Add( 'tomato', 'Помидор', CATEGORY, 'https://i.ibb.co/fFfcnj4/tomato.png', NO_DESC, function( ePly )
    return Refill( ePly, 55, 10 )
end )

----------------------------------------------------------------------------------------------------
local CATEGORY = 'Пища: Блюда'
Add( 'apple pie', 'Яблочный Пирог', CATEGORY, 'https://i.ibb.co/JCSLvmC/apple-pie.png', NO_DESC, function( ePly )
    return Eat( ePly, 100 )
end )

Add( 'bacon', 'Бекон', CATEGORY, 'https://i.ibb.co/zxM9jQ2/bacon.png', NO_DESC, function( ePly )
    return Eat( ePly, 250 )
end )

Add( 'rack of ribs', 'Рёбрышки', CATEGORY, 'https://i.ibb.co/qpVsVhf/rack-of-ribs.png', NO_DESC, function( ePly )
    return Eat( ePly, 350 )
end )

Add( 'cake', 'Торт', CATEGORY, 'https://i.ibb.co/Bwb2s2x/cake.png', NO_DESC, function( ePly )
    return Eat( ePly, 400 )
end )

Add( 'candies', 'Конфетки', CATEGORY, 'https://i.ibb.co/HFNr5p9/candies.png', NO_DESC, function( ePly ) 
    return Eat( ePly, 5 )
end )

Add( 'cookie', 'Печенье', CATEGORY, 'https://i.ibb.co/CvgYgc8/cookie.png', NO_DESC, function( ePly )
    return Eat( ePly, 25 )
end )

Add( 'donut', 'Бублик', CATEGORY, 'https://i.ibb.co/KzrFqzq/donut.png', NO_DESC, function( ePly )
    return Eat( ePly, 45 )
end )

Add( 'donut chocolate', 'Шоколадный Бублик', CATEGORY, 'https://i.ibb.co/VS6TRbT/donut-chocolate.png', NO_DESC, function( ePly )
    return Eat( ePly, 100 )
end )

Add( 'donut sprinkles', 'Сахарный Бублик', CATEGORY, 'https://i.ibb.co/f4g8G5k/donut-sprinkles.png', NO_DESC, function( ePly )
    return Eat( ePly, 235 )
end )

Add( 'fried pork', 'Жареная Свинина', CATEGORY, 'https://i.ibb.co/fXkZxRg/fried-pork.png', NO_DESC, function( ePly )
    return Eat( ePly, 100 )
end )

Add( 'fried beef', 'Жареная Говядина', CATEGORY, 'https://i.ibb.co/fnLScmp/fried-beef.png', NO_DESC, function( ePly )
    return Eat( ePly, 120 )
end )

Add( 'fried chicken', 'Жареная Курица', CATEGORY, 'https://i.ibb.co/PFsZj6m/fried-chicken.png', NO_DESC, function( ePly )
    return Eat( ePly, 300 )
end )

Add( 'fried egg', 'Жареное Яйцо', CATEGORY, 'https://i.ibb.co/tP0kt0r/fried-egg.png', NO_DESC, function( ePly )
    return Eat( ePly, 100 )
end )

Add( 'ice cream', 'Мороженка', CATEGORY, 'https://i.ibb.co/BBGqBGL/ice-cream.png', NO_DESC, function( ePly ) 
    return Eat( ePly, 30 )
end )

Add( 'pancake', 'Блин', CATEGORY, 'https://i.ibb.co/MRQt3fp/pancake.png', NO_DESC, function( ePly ) 
    return Eat( ePly, 75 )
end )

Add( 'barbeque', 'Шашлык', CATEGORY, 'https://i.ibb.co/vZ3mjX6/barbeque.png', '', function( ePly ) 
    return Eat( ePly, 55 )
end )

Add( 'dish chicken simple', 'Обычная Курочка', CATEGORY, 'https://i.ibb.co/kMpVG1R/dish-chicken-simple.png', 'Блюдо', function( ePly ) 
    return Eat( ePly, 100 )
end )

Add( 'dish beef simple', 'Обычная Говядина', CATEGORY, 'https://i.ibb.co/61XNdRk/dish-beef-simple.png', 'Блюдо', function( ePly ) 
    return Eat( ePly, 100 )
end )

Add( 'dish pork simple', 'Обычная Свининка', CATEGORY, 'https://i.ibb.co/mRHGXqB/dish-pork-simple.png', 'Блюдо', function( ePly ) 
    return Eat( ePly, 100 )
end )

Add( 'dish chicken advanced', 'Обычная Курочка', CATEGORY, 'https://i.ibb.co/cvN2Mt9/dish-chicken-advanced.png', 'Блюдо', function( ePly ) 
    return Eat( ePly, 200 )
end )

Add( 'dish beef advanced', 'Обычная Говядина', CATEGORY, 'https://i.ibb.co/D79jqRX/dish-beef-advanced.png', 'Блюдо', function( ePly ) 
    return Eat( ePly, 200 )
end )

Add( 'dish pork advanced', 'Обычная Свининка', CATEGORY, 'https://i.ibb.co/QmKFDQ5/dish-pork-advanced.png', 'Блюдо', function( ePly ) 
    return Eat( ePly, 200 )
end )


local DISHES = {
    { 100, 'https://i.ibb.co/JtTx5Yf/dish1.png' },
    { 100, 'https://i.ibb.co/s9gKm1C/dish2.png' },
    { 100, 'https://i.ibb.co/qFwB1FT/dish3.png' },
    { 100, 'https://i.ibb.co/D9yvJk3/dish4.png' },
    { 100, 'https://i.ibb.co/b1G4Pjb/dish5.png' },
    { 100, 'https://i.ibb.co/jwfKB7v/dish6.png' },
    { 100, 'https://i.ibb.co/qjMD6nN/dish7.png' },
    { 100, 'https://i.ibb.co/k8GGRx4/dish8.png' },
    { 100, 'https://i.ibb.co/pJQJ2Vr/dish9.png' },
    { 100, 'https://i.ibb.co/LPnQ09K/dish10.png' },
    { 100, 'https://i.ibb.co/cg1RWnb/dish11.png' },
    { 100, 'https://i.ibb.co/PrpZmH2/dish12.png' },
    { 100, 'https://i.ibb.co/mbtP4xx/dish13.png' },
    { 100, 'https://i.ibb.co/grz4MRV/dish14.png' },
    { 100, 'https://i.ibb.co/2S27pk8/dish15.png' },
    { 100, 'https://i.ibb.co/XtFQCK4/dish16.png' },
    { 100, 'https://i.ibb.co/RYMV27t/dish17.png' },
    { 100, 'https://i.ibb.co/Fw2y6QX/dish18.png' },
    { 100, 'https://i.ibb.co/CKqYjSY/dish19.png' },
    { 100, 'https://i.ibb.co/9ZhL85P/dish20.png' },
    { 100, 'https://i.ibb.co/ft0GXkh/dish21.png' },
    { 100, 'https://i.ibb.co/gwnKz1b/dish22.png' },
    { 100, 'https://i.ibb.co/3yPFbTf/dish23.png' },
    { 100, 'https://i.ibb.co/LptCk7y/dish24.png' },
    { 100, 'https://i.ibb.co/LvqCmTp/dish25.png' },
}

for k, v in ipairs( DISHES ) do
    Add( 'dish '..k, 'Блюдо [#'..k..'] ', CATEGORY, v[ 2 ] or nil, 'Блюдо', function( ePly ) 
        return Eat( ePly, v[ 1 ] )
    end )
end