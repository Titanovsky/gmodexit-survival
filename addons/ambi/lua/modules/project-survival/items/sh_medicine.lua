local Add, Craft = Ambi.SimpleInventory.AddClass, Ambi.SimpleInventory.AddCraft
local NO_ICON = nil

local CATEGORY = 'Medicine'

local function AddHP( ePly, nCount, sType )
    if ( ePly:Health() >= ePly:GetMaxHealth() ) then return false end

    ePly:SetHealth( ePly:Health() + nCount )
    if ( ePly:Health() > ePly:GetMaxHealth() ) then ePly:SetHealth( ePly:GetMaxHealth() ) end

    return true
end

local function RemoveRaditation( ePly )
    local rad = ePly:GetNWInt( 'Radiation' )
    if ( rad <= 0 ) then ePly:ChatPrint( 'Вы не облучены!' ) return false end
    if timer.Exists( 'AmbSurvivalDelayUseAntiRad:'..ePly:SteamID() ) then ePly:ChatPrint( 'Вы недавно использовали антирад!' ) return false end

    ePly:SetNWInt( 'Radiation', rad - 10 )
    if ( ePly:GetNWInt( 'Radiation' ) < 0 ) then ePly:SetNWInt( 'Radiation', 0 ) end
    timer.Create( 'AmbSurvivalDelayUseAntiRad:'..ePly:SteamID(), 10, 1, function() end )

    return true
end

Add( 'big medkit', 'Большая Аптечка', CATEGORY, NO_CION, 'Аптечка избавляет от говна раз и навсегда', function( ePly )
    if ( ePly:GetMaxHealth() < 125 ) then ePly:SetMaxHealth( 125 ) end

    return AddHP( ePly, 85 )
end )

Add( 'medkit', 'Аптечка', CATEGORY, 'https://i.ibb.co/LvN0NFb/medkit.png', 'Аптечка избавляет от говна раз и навсегда', function( ePly )
    return AddHP( ePly, 64 )
end )

Add( 'painkiller', 'Анальгин', CATEGORY, 'https://i.ibb.co/5GJFq7n/painkiller.png', 'Уталяет боль', function( ePly ) 
    return AddHP( ePly, 15 )
end )

Add( 'splitter', 'Шина', CATEGORY, 'https://i.ibb.co/dWypSTc/splitter.png', 'Медицинская шина', function( ePly ) 
    return AddHP( ePly, 6 )
end )

Add( 'bandage', 'Бинт', CATEGORY, 'https://i.ibb.co/SK9Dyk8/bandage.png', 'Медицинский бинт', function( ePly ) 
    return AddHP( ePly, 3 )
end )

Add( 'antirad', 'Антирад Колёса', CATEGORY, 'https://i.ibb.co/hLcFgH0/antirad.png', '', function( ePly ) 
    return RemoveRaditation( ePly )
end )

Add( 'antibacteria', 'Антибактериал Колёса', CATEGORY, 'https://i.ibb.co/nR7GJm9/antibacterial.png', '', function( ePly ) 
    return AddHP( ePly, 2 )
end )

-- ------------------------------------------------------------------------------------
local MODELS = {
    'models/player/darky_m/rust/hazmat.mdl',
    'models/player/police.mdl'
}
local function SuitAntirad( ePly, nCount )
    local antirad = ePly:GetNWInt( 'AntiRadiation' )
    if ( antirad >= nCount ) then ePly:ChatPrint( 'На вас уже костюм!' ) return false end
    if ePly:GetNWBool( 'HasSuit' ) then ePly:ChatPrint( 'На вас уже костюм!' ) return false end

    ePly:SetModel( MODELS[ nCount ] )
    ePly:SetNWInt( 'AntiRadiation', nCount )
    ePly:SetNWBool( 'HasSuit', true )
    ePly:ChatPrint( 'Вы надели AntiRad костюм. Чтобы снять введите /reset' )

    return true
end

Add( 'antirad suit', 'Лёгкий Антирад Костюм', CATEGORY, 'https://i.ibb.co/PMpfv2S/antirad-simple.png', '', function( ePly ) 
    return SuitAntirad( ePly, 1 )
end )

Add( 'antirad suit heavy', 'Крепкий Антирад Костюм', CATEGORY, 'https://i.ibb.co/h14dfrF/antirad-adv.png', '', function( ePly ) 
    return SuitAntirad( ePly, 2 )
end )