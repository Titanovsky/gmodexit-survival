local Add, Craft = Ambi.SimpleInventory.AddClass, Ambi.SimpleInventory.AddCraft
local NO_ICON = nil

------------------------------------------------------------------------------
local CATEGORY = 'Special'

Add( 'workbench rotor', 'Ротор', CATEGORY, NO_ICON, 'Верстак' )
Add( 'workbench tool box', 'Ящик с Инструментами', CATEGORY, NO_ICON, 'Верстак' )

Add( 'oil pumper additional shoulder', 'Дополнительное Плечо', CATEGORY, NO_ICON, 'Нефтекачалка' )
Add( 'oil pumper strong cables', 'Крепкие Тросы', CATEGORY, NO_ICON, 'Нефтекачалка' )

Add( 'oil refinery fortified legs', 'Укреплённые Ножки', CATEGORY, NO_ICON, 'НПЗ' )
Add( 'oil refinery big tank', 'Большой Бак', CATEGORY, NO_ICON, 'НПЗ' )

Add( 'weapons workbench spec1', 'Для Оруж. Верстака #1', CATEGORY, NO_ICON, 'Оружейный Верстак' )
Add( 'weapons workbench spec2', 'Для Оруж. Верстака #2', CATEGORY, NO_ICON, 'Оружейный Верстак' )

Add( 'stove spec1', 'Газораспределитель', CATEGORY, NO_ICON, 'Плита' )
Add( 'stove spec2', 'Датчик Температуры Плиты', CATEGORY, NO_ICON, 'Плита' )

Add( 'factory spec1', 'Для Завода #1', CATEGORY, NO_ICON, 'Завод' )
Add( 'factory spec2', 'Для Завода #2', CATEGORY, NO_ICON, 'Завод' )

Add( 'blast furnace spec1', 'Для Доменной Печи #1', CATEGORY, NO_ICON, 'Доменная Печь' )
Add( 'blast furnace spec2', 'Для Доменной Печи #2', CATEGORY, NO_ICON, 'Доменная печь' )

Add( 'chemical station spec1', 'Для Хим.Станций #1', CATEGORY, NO_ICON, 'Хим. Станция' )
Add( 'chemical station spec2', 'Для Хим.Станций #2', CATEGORY, NO_ICON, 'Хим. Станция' )

Add( 'rocket space spec1', 'Для Косм. Ракеты #1', CATEGORY, NO_ICON, 'Косм. Ракета' )
Add( 'rocket space spec2', 'Для Косм. Ракеты #2', CATEGORY, NO_ICON, 'Косм. Ракета' )
Add( 'rocket space spec3', 'Для Косм. Ракеты #3', CATEGORY, NO_ICON, 'Косм. Ракета' )
Add( 'rocket space spec4', 'Для Косм. Ракеты #4', CATEGORY, NO_ICON, 'Косм. Ракета' )

Add( 'turrets parts', 'Части Турели', CATEGORY, NO_ICON, 'Турель' )

------------------------------------------------------------------------------
local CATEGORY = 'Special: Pieces'

Add( 'copper tube', 'Медная Труба', CATEGORY, NO_ICON, 'Специальное: для всех' )
Add( 'copper wire', 'Медная Проволока', CATEGORY, NO_ICON, 'Специальное: для всех' )

Add( 'iron pieces', 'Железки', CATEGORY, NO_ICON, 'Специальное: для всех' )
Add( 'iron bolt', 'Железный Болт', CATEGORY, NO_ICON, 'Специальное: для всех' )
Add( 'iron gear', 'Железная Шестерёнка', CATEGORY, NO_ICON, 'Специальное: для всех' )

Add( 'steel tube', 'Стальная Труба', CATEGORY, NO_ICON, 'Специальное: для всех' )
Add( 'steel fragments', 'Стальные Фрагменты', CATEGORY, NO_ICON, 'Специальное: для всех' )

Add( 'titan plate', 'Титановая Пластина', CATEGORY, NO_ICON, 'Специальное: для всех' )
Add( 'titan tube', 'Титановая Труба', CATEGORY, NO_ICON, 'Специальное: для всех' )

Add( 'flask', 'Колбочка', CATEGORY, NO_ICON, 'Специальное: для всех' )

--todo perenesti
local Add, Craft = Ambi.SimpleInventory.AddClass, Ambi.SimpleInventory.AddCraft
local NO_ICON = nil

local function GiveWeapon( ePly, sClass )
   if ePly:HasWeapon( sClass ) then return false end

   ePly:Give( sClass, true )  
   Ambi.Survival.SaveWeapons( ePly )

   return true  
end

local function AddWeapon( sClass, sName, sCategory, sIcon, sDesc, sClassWeapon )
    Add( sClass, sName, sCategory, sIcon, sDesc, function( ePly ) 
        return GiveWeapon( ePly, sClassWeapon )
    end )
end

-------------------------------------------------------------------------------------------------
local CATEGORY = 'Части оружия'

Add( 'pistol parts', 'Части Пистолета', CATEGORY, NO_ICON, 'Части для крафта оружия' )
Add( 'shotgun parts', 'Части Дробовика', CATEGORY, NO_ICON, 'Части для крафта оружия' )
Add( 'semi auto parts', 'Части Пистолета-Пулемёта', CATEGORY, NO_ICON, 'Части для крафта оружия' )
Add( 'rifle parts', 'Части Автомата', CATEGORY, NO_ICON, 'Части для крафта оружия' )
Add( 'sniper rifle parts', 'Части Снайперки', CATEGORY, NO_ICON, 'Части для крафта оружия' )

-------------------------------------------------------------------------------------------------
local CATEGORY = 'Оружия: Melee'

AddWeapon( 'tomahawk', 'Tomahawk', CATEGORY, NO_ICON, 'Melee', 'yurie_eft_kiba_arms_axe' )
AddWeapon( 'knife', '6H5 Bayonet', CATEGORY, NO_ICON, 'Melee', 'yurie_eft_izhmash_6x5' )
AddWeapon( 'antique axe', 'Antique Axe', CATEGORY, NO_ICON, 'Melee', 'yurie_eft_valuable_wyccaxe' )
AddWeapon( 'bars 95x18', 'Bars 95x18', CATEGORY, NO_ICON, 'Melee', 'yurie_eft_bars_a-2607_95x18' )
AddWeapon( 'bars damascus', 'Bars Damascus', CATEGORY, NO_ICON, 'Melee', 'yurie_eft_bars_a-2607_damask' )
AddWeapon( 'camper axe', 'Camper Axe', CATEGORY, NO_ICON, 'Melee', 'yurie_eft_utility_axe' )
AddWeapon( 'crash axe', 'Crash Axe', CATEGORY, NO_ICON, 'Melee', 'yurie_eft_strider_crash_axe' )
AddWeapon( 'cultist knife', 'Cultist Knife', CATEGORY, NO_ICON, 'Melee', 'yurie_eft_cultist_damask' )
AddWeapon( 'fulcrum bayonet', 'Fulcrum Bayonet', CATEGORY, NO_ICON, 'Melee', 'yurie_eft_extrema_ratio_fulcrum' )
AddWeapon( 'freeman crowbar', 'Freeman Crowbar', CATEGORY, NO_ICON, 'Melee', 'yurie_eft_gf_crowbar' )
AddWeapon( 'bros knife', 'Bros Knife', CATEGORY, NO_ICON, 'Melee', 'yurie_eft_miller_bros_m-2' )
AddWeapon( 'mpl50', 'MPL-50', CATEGORY, NO_ICON, 'Melee', 'yurie_eft_voentorg_mpl-50' )
AddWeapon( 'ice pick', 'Ice Pick', CATEGORY, NO_ICON, 'Melee', 'yurie_eft_red_rebel_axe' )
AddWeapon( 'taiga1', 'Taiga-1', CATEGORY, NO_ICON, 'Melee', 'yurie_eft_usvr_taiga' )
AddWeapon( 'survival machete', 'Survival Machete', CATEGORY, NO_ICON, 'Melee', 'yurie_eft_ontario_sp-8' )

-------------------------------------------------------------------------------------------------
local CATEGORY = 'Оружия: Пистолет'

Add( 'revolver', 'Револьвер', CATEGORY, 'https://i.ibb.co/kJPjftD/revolver.png', '', function( ePly ) 
    return GiveWeapon( ePly, 'tfa_rustalpha_revolver' )
end )

Add( 'p250', 'P250', CATEGORY, 'https://i.ibb.co/Xzz6XyT/p250.png', 'Тоже пистолет', function( ePly ) 
    return GiveWeapon( ePly, 'tfa_rustalpha_p250' )
end )

Add( 'pistol 9mm', 'Pistol 9mm', CATEGORY, 'https://i.ibb.co/qrnGGRd/9mm.png', 'Обычный пистолет', function( ePly ) 
    return GiveWeapon( ePly, 'tfa_rustalpha_pistol' )
end )

-------------------------------------------------------------------------------------------------
local CATEGORY = 'Оружия: Дробовик'

Add( 'shotgun', 'Дробовик', CATEGORY, 'https://i.ibb.co/BV38zw1/shotgun.png', '', function( ePly ) 
    return GiveWeapon( ePly, 'tfa_rustalpha_shotgun' )
end )

-------------------------------------------------------------------------------------------------
local CATEGORY = 'Оружия: ПП'

Add( 'mp5', 'MP5', CATEGORY, 'https://i.ibb.co/gdhXwYH/mp5.png', '', function( ePly ) 
    return GiveWeapon( ePly, 'tfa_rustalpha_mp5' )
end )

-------------------------------------------------------------------------------------------------
local CATEGORY = 'Оружия: Hard'

Add( 'm4', 'M4', CATEGORY, 'https://i.ibb.co/RQw4kNw/m4.png', '', function( ePly ) 
    return GiveWeapon( ePly, 'tfa_rustalpha_m4' )
end )

Add( 'bolt rifle', 'Болтовка', CATEGORY, 'https://i.ibb.co/TvydHsF/bolt-rifle.png', '', function( ePly ) 
    return GiveWeapon( ePly, 'tfa_rustalpha_bolt_action_rifle' )
end )

Add( 'crossbow', 'Арбалет', CATEGORY, NO_ICON, '', function( ePly ) 
    return GiveWeapon( ePly, 'weapon_crossbow' )
end )


-------------------------------------------------------------------------------------------------
local CATEGORY = 'Оружия: Обычное'

Add( 'hunting bow', 'Лук', CATEGORY, 'https://i.ibb.co/BzLbcy2/hunting-bow.png', '', function( ePly ) 
    return GiveWeapon( ePly, 'tfa_rustalpha_hunting_bow' )
end )

Add( 'hand cannon', 'Черкаш', CATEGORY, 'https://i.ibb.co/ydwwT2C/hand-cannon.png', '', function( ePly ) 
    return GiveWeapon( ePly, 'tfa_rustalpha_handcannon' )
end )

Add( 'pipe shotgun', 'Самодельный Дробовик', CATEGORY, 'https://i.ibb.co/J52c4GN/pipe-shotgun.png', '', function( ePly ) 
    return GiveWeapon( ePly, 'tfa_rustalpha_pipeshotgun' )
end )

-------------------------------------------------------------------------------------------------
local CATEGORY = 'Ammo'

Add( 'arrow', 'Стрела', CATEGORY, 'https://i.ibb.co/mDrbJv3/arrow.png', 'Стрела', function( ePly ) 
    ePly:GiveAmmo( 1, 'yurie_rustalpha_arrow' )

    return true
end )

Add( 'iron arrow', 'Железная Стрела', CATEGORY, NO_ICON, 'Стрела', function( ePly ) 
    ePly:GiveAmmo( 1, 6 )

    return true
end )

Add( 'stone ammo', 'Каменный Патрон', CATEGORY, 'https://i.ibb.co/Cw7G7L4/stone-ammo.png', 'Патрон', function( ePly ) 
    ePly:GiveAmmo( 1, 'yurie_rustalpha_handmade_shell' )

    return true
end )

Add( 'pistol ammo', '9mm', CATEGORY, 'https://i.ibb.co/kmkDfBV/9mm.png', 'Патрон', function( ePly ) 
    ePly:GiveAmmo( 1, 3 )

    return true
end )

Add( 'smg ammo', '5x56mm', CATEGORY, 'https://i.ibb.co/r76GRzj/556.png', 'Патрон', function( ePly ) 
    ePly:GiveAmmo( 1, 4 )

    return true
end )

Add( 'rifle ammo', '7x62mm', CATEGORY, 'https://i.ibb.co/W0mCHQ6/762.png', 'Патрон', function( ePly ) 
    ePly:GiveAmmo( 1, 1 )

    return true
end )

Add( 'sniper ammo', '7x62mm Sniper', CATEGORY, 'https://i.ibb.co/smnVCHc/762-sniper.png', 'Патрон', function( ePly ) 
    ePly:GiveAmmo( 1, 14 )

    return true
end )

Add( 'shell', 'Дробь', CATEGORY, 'https://i.ibb.co/qBLp1xR/shell.png', 'Патрон', function( ePly ) 
    ePly:GiveAmmo( 1, 7 )

    return true
end )

Add( 'rpg ammo', 'Ракета', CATEGORY, 'https://i.ibb.co/MskP7h4/rpg-PNG26671.png', 'Патрон', function( ePly ) 
    ePly:GiveAmmo( 1, 8 )

    return true
end )

-------------------------------------------------------------------------------------------------
local CATEGORY = 'Explosives'

Add( 'f1', 'F1', CATEGORY, 'https://i.ibb.co/bFFvKdV/f1.png', 'Граната', function( ePly ) 
    GiveWeapon( ePly, 'tfa_rustalpha_f1_grenade' )
    ePly:GiveAmmo( 1, 10 )

    return true
end )

Add( 'rpg', 'RPG', CATEGORY, 'https://i.ibb.co/jzdKXkj/rpg-PNG26657.png', 'РПГ', function( ePly ) 
    GiveWeapon( ePly, 'weapon_rpg' )

    return true
end )