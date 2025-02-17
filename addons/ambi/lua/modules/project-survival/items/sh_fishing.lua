local Add, Craft = Ambi.SimpleInventory.AddClass, Ambi.SimpleInventory.AddCraft
local NO_ICON = nil

local function Eat( ePly, nHunger )
    local hunger = ePly:GetHunger()
    if ( hunger >= 500 - nHunger ) then return false end

    ePly:SetHunger( hunger + nHunger )

    return true
end

local CATEGORY = 'Рыба'

Add( 'carp', 'Карп', CATEGORY, 'https://i.ibb.co/7Kk78Rh/carp.png' )
Add( 'ide', 'Язь', CATEGORY, 'https://i.ibb.co/Wg09w2S/ide.png' )
Add( 'ram', 'Тарань', CATEGORY, 'https://i.ibb.co/xfknSnh/ram.png' )
Add( 'bream', 'Лещ', CATEGORY, 'https://i.ibb.co/3THxFVN/bream.png' )
Add( 'crucian carp', 'Карась', CATEGORY, 'https://i.ibb.co/Wt5zxCX/crucian-carp.png' )
Add( 'roach', 'Плотва', CATEGORY, 'https://i.ibb.co/bzSqj1n/roach.png' )
Add( 'catfish', 'Сом', CATEGORY, 'https://i.ibb.co/s3cFfyx/catfish.png' )
Add( 'pike', 'Щука', CATEGORY, 'https://i.ibb.co/z7WssBw/pike.png' )
Add( 'tuna', 'Тунец', CATEGORY, 'https://i.ibb.co/58gc31G/tuna.png' )
Add( 'piranhas', 'Пираньи', CATEGORY, 'https://i.ibb.co/DK4K4ZQ/piranhas.png' )
Add( 'shark', 'Акула', CATEGORY, 'https://i.ibb.co/gJH61Lm/shark.png' )

Add( 'fish ukraine', 'Рыба Украина', CATEGORY, 'https://i.ibb.co/H7TF4NH/fish-ukraine.png', 'Магическая' )
Add( 'fish teleporter', 'Рыба Телепортатор', CATEGORY, 'https://i.ibb.co/48MDYcB/fish-teleporter.png', 'Магическая' )
Add( 'fish coin', 'Рыба Монетка', CATEGORY, 'https://i.ibb.co/cvhBGrZ/fish-coin.png', 'Магическая' )
Add( 'fish admin', 'Рыба Админ', CATEGORY, 'https://i.ibb.co/HghJQqj/fish-admin.png', 'Магическая' )
Add( 'fish kamen', 'Рыба Камень', CATEGORY, 'https://i.ibb.co/tPYLxvz/fish-kamen.png', 'Магическая' )
Add( 'fish minecraft', 'Рыба Minecraft', CATEGORY, 'https://i.ibb.co/ftN38NV/fish-minecraft.png', 'Магическая' )

------------------------------------------------------------------------
local CATEGORY = 'Части рыбы'

Add( 'shark fin', 'Акулий Плавник', CATEGORY, 'https://i.ibb.co/Zmq3pPV/shark-fin.png' )

------------------------------------------------------------------------
local CATEGORY = 'Наживки'

local function SpawnBait( ePly, sBait )
   local pos = Ambi.General.Utility.GetFrontPos( ePly, 72 ) + Vector( 0, 0, 12 )

   local bait = ents.Create( 'fishing_bait' )
   bait:SetPos( pos )
   bait:Spawn()
   bait:SetBait( sBait )
   bait:CPPISetOwner( ePly )

   return true
end
Add( 'bait simple', 'Обычная Наживка', CATEGORY, 'https://i.ibb.co/qLGwMbt/bait-simple.png', '', function( ePly ) 
   return SpawnBait( ePly, 'simple bait')
end )
Add( 'bait advanced', 'Продвинутая Наживка', CATEGORY, 'https://i.ibb.co/NpT859d/bait-advanced.png', '', function( ePly ) 
   return SpawnBait( ePly, 'advanced bait')
end )
Add( 'bait extra', 'Экстремальная Наживка', CATEGORY, 'https://i.ibb.co/175kvhw/bait-extra.png', '', function( ePly ) 
   return SpawnBait( ePly, 'extra bait')
end )

------------------------------------------------------------------------
local CATEGORY = 'Жареная рыба'

Add( 'fried carp', 'Карп', CATEGORY, NO_ICON, '', function( ePly ) return Eat( ePly, 15 ) end )
Add( 'fried ide', 'Язь', CATEGORY, NO_ICON, '', function( ePly ) return Eat( ePly, 15 ) end )
Add( 'fried ram', 'Тарань', CATEGORY, NO_ICON, '', function( ePly ) return Eat( ePly, 15 ) end )
Add( 'fried bream', 'Лещ', CATEGORY, NO_ICON, '', function( ePly ) return Eat( ePly, 15 ) end )
Add( 'fried crucian carp', 'Карась', CATEGORY, NO_ICON, '', function( ePly ) return Eat( ePly, 15 ) end )
Add( 'fried roach', 'Плотва', CATEGORY, NO_ICON, '', function( ePly ) return Eat( ePly, 15 ) end )
Add( 'fried catfish', 'Сом', CATEGORY, NO_ICON, '', function( ePly ) return Eat( ePly, 15 ) end )
Add( 'fried pike', 'Щука', CATEGORY, NO_ICON, '', function( ePly ) return Eat( ePly, 15 ) end )
Add( 'fried tuna', 'Тунец', CATEGORY, NO_ICON, '', function( ePly ) return Eat( ePly, 15 ) end )

------------------------------------------------------------------------
local CATEGORY = 'Удочки'

Add( 'fishing rod', 'Удочка', CATEGORY, 'https://i.ibb.co/vs34PXR/fishing-rod.png', '', function( ePly ) 
   local pos = Ambi.General.Utility.GetFrontPos( ePly, 72 ) + Vector( 0, 0, 24 )

   local rod = ents.Create( 'fishing_rod' )
   rod:SetPos( pos )
   rod:Spawn()
   rod:GetPhysicsObject():Wake()
   rod:GetPhysicsObject():EnableMotion( true )
   rod:CPPISetOwner( ePly )

   return true
end )