local Add, Craft = Ambi.SimpleInventory.AddClass, Ambi.SimpleInventory.AddCraft
local NO_ICON, NO_DESC = nil

local function Drink( ePly, nThirst )
    local thirst = ePly:GetThirst()
    if ( thirst >= 500 - nThirst ) then return false end

    ePly:SetThirst( thirst + nThirst )

    return true
end

local CATEGORY = 'Жидкости'
Add( 'water', 'Водичка', CATEGORY, 'https://i.ibb.co/D51jKFF/water.png', 'Простая питьевая водичка, есть шанс получить дебафф', function( ePly ) 
    return Drink( ePly, 75 )
end )

Add( 'aqua', 'Aqua', CATEGORY, 'https://i.ibb.co/0hL9wTc/aqua.png', 'Чистая вода', function( ePly ) 
   return Drink( ePly, 125 ) 
end )

Add( 'coffee', 'Кофе', CATEGORY, NO_ICON, NO_DESC, function( ePly ) 
   return Drink( ePly, 40 ) 
end )

Add( 'milk', 'Молоко', CATEGORY, NO_ICON, NO_DESC, function( ePly ) 
   return Drink( ePly, 35 ) 
end )

----------------------------------------------------------------------------------------
local CATEGORY = 'Жидкости: Соки'
Add( 'orange juice', 'Апельсиновый Сок', CATEGORY, 'https://i.ibb.co/B2RZfSC/orange-juice.png', 'Бафф к регенераций' )
Add( 'apple juice', 'Яблочный Сок', CATEGORY, 'https://i.ibb.co/k3kVZ4y/apple-juice.png', 'Бафф к скорости' )

Craft( 'urine from aqua', 'Моча', CATEGORY, '', 2, {
   [ 'aqua' ] = 1,
}, {
   [ 'urine' ] = 4,
} )

-- ----------------------------------------------------------------------
local CATEGORY = 'Жидкости: Алкоголь'

Add( 'beer', 'Пиво', CATEGORY, 'https://i.ibb.co/BCYrwM5/beer.png', 'Обычное пивко, увеличивает силу, но уменьшает скорость' )

Add( 'heineker', 'Heineker', CATEGORY, 'https://i.ibb.co/dfcqYpH/heineken.png', 'Пиво, оч вкусное' )

if not Ambi.ChatCommands then return end

local Add = Ambi.ChatCommands.AddCommand

-- --------------------------------------------------------------------------------------------------------------------------------------------
Add( 'donate', 'Донат', '', 0.25, function( ePly, tArgs ) 
   --todo
end )