local Add, Craft = Ambi.SimpleInventory.AddClass, Ambi.SimpleInventory.AddCraft
local NO_ICON, NO_DESC = nil

local function Eat( ePly, nHunger )
    local hunger = ePly:GetHunger()
    if ( hunger >= 500 - nHunger ) then return false end

    ePly:SetHunger( hunger + nHunger )

    return true
end

local CATEGORY = 'Общая Еда'

Add( 'emelya', 'Емеля', CATEGORY, 'https://i.ibb.co/ctsgMCB/emelya.png', 'Хрустит', function( ePly ) 
    return Eat( ePly, 15 )
end )

Add( 'xrysteam', 'Хрусteam', CATEGORY, 'https://i.ibb.co/BNh0xT8/xrysteam.png', 'Хрустит', function( ePly ) 
    return Eat( ePly, 20 )
end )

Add( '3korochki', '3 Корочки', CATEGORY, 'https://i.ibb.co/4Ppgq5p/3korochki.png', 'Хрустит', function( ePly ) 
    return Eat( ePly, 25 )
end )

Add( 'mre', 'MRE', CATEGORY, 'https://i.ibb.co/TKJJ30p/mre.png', 'Американский сухпаёк', function( ePly ) 
    return Eat( ePly, 200 )
end )

Add( 'snickers', 'Snickers', CATEGORY, 'https://i.ibb.co/N33PxY7/snickers.png', 'Дает бафф энергии', function( ePly ) 
    return Eat( ePly, 75 )
end )

Add( 'iskra', 'Сухпаек России Искра', CATEGORY, 'https://i.ibb.co/QfsfXvH/iskra.png', 'Российский сухпаек Искра', function( ePly ) 
    return Eat( ePly, 200 )
end )

Add( 'peas', 'Горошек', CATEGORY, 'https://i.ibb.co/VqYC2Dy/peas.png', 'Горох в консерве', function( ePly ) 
    return Eat( ePly, 80 )
end )

Add( 'alenka', 'Аленка', CATEGORY, NO_ICON, 'Плитка шоколада Аленка', function( ePly ) 
    return Eat( ePly, 50 )
end )

Add( 'galets', 'Галеты', CATEGORY, 'https://i.ibb.co/SVZcdcn/galets.png', 'Галеты с сухпайка Искры', function( ePly ) 
    return Eat( ePly, 25 )
end )

Add( 'frenchfries', 'Картошка Фри', CATEGORY, NO_ICON, NO_DESC, function( ePly ) 
    return Eat( ePly, 100 )
end )

Add( 'hamburger', 'Гамбургер', CATEGORY, NO_ICON, NO_DESC, function( ePly ) 
    return Eat( ePly, 350 )
end )

Add( 'pizza', 'Пицца', CATEGORY, NO_ICON, NO_DESC, function( ePly ) 
    return Eat( ePly, 190 )
end )

Add( 'lolipop', 'Lolipop', CATEGORY, NO_ICON, NO_DESC, function( ePly ) 
    return Eat( ePly, 100 )
end )

Add( 'meat minced', 'Нарезка', CATEGORY, NO_ICON, NO_DESC, function( ePly ) 
    return Eat( ePly, 275 )
end )