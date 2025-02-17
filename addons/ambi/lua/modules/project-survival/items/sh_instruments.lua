local Add, Craft = Ambi.SimpleInventory.AddClass, Ambi.SimpleInventory.AddCraft
local NO_ICON = nil

local function GiveWeapon( ePly, sClass )
   if ePly:HasWeapon( sClass ) then return false end

   ePly:Give( sClass, true )  
   Ambi.Survival.SaveWeapons( ePly )

   return true  
end

---------------------------------------------------------------------------------------------------------------------------
local CATEGORY = 'Инструменты'

Add( 'toolgun', 'Toolgun', CATEGORY, 'https://i.ibb.co/2Nqtqy3/toolgun-png-2637760a4be609bad49994b26d6df18d.png', 'Инструмент для строительства', function( ePly ) 
   return GiveWeapon( ePly, 'gmod_tool' ) 
end )

Add( 'physgun', 'PhysGun', CATEGORY, 'https://i.ibb.co/dp0QJZC/physgun.png', 'Инструмент', function( ePly ) 
   return GiveWeapon( ePly, 'weapon_physgun' )  
end )

Add( 'physcannon', 'GravGun', CATEGORY, 'https://i.ibb.co/ZKc1wxK/gravgun.png', 'Инструмент', function( ePly ) 
   return GiveWeapon( ePly, 'weapon_physcannon' )  
end )

Add( 'universal', 'Универсал', CATEGORY, 'https://i.ibb.co/JcVV4mP/Stone-Hatchet.png', 'Инструмент для добычи руд/минералов и дерева', function( ePly ) 
   return GiveWeapon( ePly, 'tfa_rustalpha_stone_hatchet' )  
end )

---------------------------------------------------------------------------------------------------------------------------
local CATEGORY = 'Инструменты: Кирки'

Add( 'pickaxe stone', 'Кирка Каменная', CATEGORY, 'https://i.ibb.co/4K4dtLn/pickaxe-stone.png', 'Инструмент для добычи руд/минералов', function( ePly ) 
   return GiveWeapon( ePly, 'surv_pickaxe_stone' )  
end )

Add( 'pickaxe copper', 'Кирка Медная', CATEGORY, 'https://i.ibb.co/SsJQWCy/pickaxe-copper.png', 'Инструмент для добычи руд/минералов', function( ePly ) 
   return GiveWeapon( ePly, 'surv_pickaxe_copper' )  
end )

Add( 'pickaxe iron', 'Кирка Железная', CATEGORY, 'https://i.ibb.co/ss4zwTV/pickaxe-iron.png', 'Инструмент для добычи руд/минералов', function( ePly ) 
   return GiveWeapon( ePly, 'surv_pickaxe_iron' )  
end )

Add( 'pickaxe steel', 'Кирка Стальная', CATEGORY, 'https://i.ibb.co/tLgQhB0/pickaxe-steel.png', 'Инструмент для добычи руд/минералов', function( ePly ) 
   return GiveWeapon( ePly, 'surv_pickaxe_steel' )  
end )

Add( 'pickaxe titan', 'Кирка Титановая', CATEGORY, 'https://i.ibb.co/0mxPnxW/pickaxe-titan.png', 'Инструмент для добычи руд/минералов', function( ePly ) 
   return GiveWeapon( ePly, 'surv_pickaxe_titan' )  
end )

---------------------------------------------------------------------------------------------------------------------------
local CATEGORY = 'Инструменты: Топоры'

Add( 'axe stone', 'Топор Каменный', CATEGORY, 'https://i.ibb.co/wKhKrwM/axe-stone.png', 'Инструмент для добычи древесины', function( ePly ) 
   return GiveWeapon( ePly, 'surv_axe_stone' )  
end )

Add( 'axe copper', 'Топор Медный', CATEGORY, 'https://i.ibb.co/CztbDFb/axe-copper.png', 'Инструмент для добычи древесины', function( ePly ) 
   return GiveWeapon( ePly, 'surv_axe_copper' )  
end )

Add( 'axe iron', 'Топор Железный', CATEGORY, 'https://i.ibb.co/3yxqSgz/axe-iron.png', 'Инструмент для добычи древесины', function( ePly ) 
   return GiveWeapon( ePly, 'surv_axe_iron' )  
end )

Add( 'axe steel', 'Топор Стальной', CATEGORY, 'https://i.ibb.co/L9pgtvm/axe-steel.png', 'Инструмент для добычи древесины', function( ePly ) 
   return GiveWeapon( ePly, 'surv_axe_steel' )  
end )

Add( 'axe titan', 'Топор Титановый', CATEGORY, 'https://i.ibb.co/M9HJRZB/axe-titan.png', 'Инструмент для добычи древесины', function( ePly ) 
   return GiveWeapon( ePly, 'surv_axe_titan' )  
end )

---------------------------------------------------------------------------------------------------------------------------
local CATEGORY = 'Инструменты: Лопаты'

Add( 'shovel', 'Лопата', CATEGORY, 'https://i.ibb.co/zRP2XT5/unnamed.png', 'Инструмент для копания', function( ePly ) 
   return GiveWeapon( ePly, 'surv_shovel' )  
end )

---------------------------------------------------------------------------------------------------------------------------
local CATEGORY = 'Инструменты: Компоненты'

Add( 'pickaxe grip', 'Рукоятка для Кирки', CATEGORY, 'https://i.ibb.co/kxKW3Y8/pickaxe-grip.png' )
Add( 'axe grip', 'Рукоятка для Топора', CATEGORY, 'https://i.ibb.co/ry5wsyH/axe-grip.png' )
Add( 'toolgun monitor', 'Toolgun: Монитор', CATEGORY, 'https://i.ibb.co/k0pN9bD/toolgun-monitor.png' )
Add( 'toolgun body', 'Toolgun: Корпус', CATEGORY, 'https://i.ibb.co/QbnFcq4/toolgun-body.png' )
Add( 'toolgun grip', 'Toolgun: Рукоятка', CATEGORY, 'https://i.ibb.co/99Crw1N/toolgun-grip.png' )
Add( 'toolgun lamp', 'Toolgun: Лампочка', CATEGORY, 'https://i.ibb.co/QnDkL82/toolgun-lamp.png' )

---------------------------------------------------------------------------------------------------------------------------
local CATEGORY = 'Инструменты: Странное'

Add( 'death weapon', 'Оружие Смерти', CATEGORY, 'https://i.ibb.co/HqyHy9H/death-weapon.png', 'Инструмент для утх', function( ePly ) 
   return GiveWeapon( ePly, 'knife_dildo' ) 
end )

local CLASSES = {
   [ 'prop_custom' ] = true,
   [ 'survival_build' ] = true,
   [ 'survival_build_oil_pumper' ] = true,
   [ 'survival_build_sleeping_bag' ] = true
}
local HP = 250

local function RepairBuild( ePly )
   local ent = ePly:GetEyeTrace().Entity
   if not IsValid( ent ) or not CLASSES[ ent:GetClass() ] then ePly:ChatPrint( 'Такой предмет нельзя починить!' ) return false end
   if timer.Exists( 'AmbSurvivalRepariKitDelay:'..tostring( ent ) ) then ePly:ChatPrint( 'Временно нельзя починить!' ) return false end

   ent:SetHealth( ent:Health() + HP )
   if ( ent:Health() > ent:GetMaxHealth() ) then ent:SetMaxHealth( ent:GetMaxHealth() ) end

   ePly:ChatPrint( 'Вы починили предмет на '..HP..' ед.' )
   timer.Create( 'AmbSurvivalRepariKitDelay:'..tostring( ent ), 20, 1, function() end )

   return true
end

Add( 'repair kit', 'Рем. Комплект', CATEGORY, 'https://i.ibb.co/ctbnJC2/repair-kit.png', 'Инструмент для ремонтных работ', function( ePly ) 
   return RepairBuild( ePly ) 
end )