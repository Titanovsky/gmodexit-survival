Ambi.General.CreateModule( 'Survival' )

-- ОЧЕНЬ ВАЖНЫЙ МОМЕНТ, ВЛАДЕНИЕ ЭНТИТЯМИ ПРОИСХОДЯТ С ПОМОЩЬЮ АДДОНА FPP (Falcon's Prop Protection) И В НЁМ НУЖНО ОТКЛЮЧИТЬ ПАРАМЕТРЫ:
-- ВСЕ ПАРАМЕТРЫ, КОТОРЫЕ НАДО ОТКЛЮЧИТЬ (ПЕРВЫЕ ТРИ) В ЭТОМ СКРИНЕ --> https://i.imgur.com/syhDEMO.png

----------------------------------------------------------------------------------------
Ambi.Survival.Config.dev = false -- Режим разработки, полезен для обнаружения багов
Ambi.Survival.Config.max_level = 60 -- Максимальный уровень

Ambi.Survival.Config.start_hunger = 300 -- Начальное количество Сытости
Ambi.Survival.Config.start_thirst = 300 -- Начальное количество Жажды

Ambi.Survival.Config.death_screen_net_respawn = 'ambi_survival_death_screen_respawn' -- Технический момент
Ambi.Survival.Config.death_screen_enable = true -- Включить скрин после смерти?
Ambi.Survival.Config.death_screen_time = 10.5 -- Сколько времени будет скрин после смерти

Ambi.Survival.Config.enable_custom_start_menu = true -- Включить кастомное стартвое меню (Честно, не помню что это)
Ambi.Survival.Config.enable_realistic_fall_damage = true -- Включить реалистичный урон от падения

Ambi.Survival.Config.storage_small_slots = 20 -- Сколько ящик может содержать в себе слотов?
Ambi.Survival.Config.storage_small_hp = 800 -- Сколько у ящика может быть XP

Ambi.Survival.Config.skills_max_count = 10 -- Максимальное количество скилла (Не помню)

Ambi.Survival.Config.url_content = 'https://steamcommunity.com/sharedfiles/filedetails/?id=2543249970' -- Ссылка на контент

----------------------------------------------------------------------------------------
Ambi.Survival.Config.optimization_prop_freeze_on_spawn = true -- Пропы будут фризиться при спавне?
Ambi.Survival.Config.optimization_prop_no_collide_to_prop = true -- Пропы не могут сталкиваться с друг другом?
Ambi.Survival.Config.optimization_prop_safe_on_pickup = true -- Пропы становятся "Прозрачными", когда игрок берёт физганом их?
Ambi.Survival.Config.optimization_prop_safe_on_drop = true -- Пропы становятся обычными, когда игрок отпускает их физганом?

----------------------------------------------------------------------------------------
Ambi.Survival.Config.drop_weapons_convert = {
    [ 'tfa_eft_kiba_arms_axe' ] = { weapon = 'tomahawk' },
    [ 'tfa_eft_downrange_tomahawk' ] = { weapon = 'tomahawk downrange' },

    [ 'weapon_physgun' ] = { weapon = 'physgun' },
    [ 'weapon_physcannon' ] = { weapon = 'physcannon' },
    [ 'gmod_tool' ] = { weapon = 'toolgun' },

    [ 'tfa_rustalpha_stone_hatchet' ] = { weapon = 'universal' },
    [ 'surv_shovel' ] = { weapon = 'shovel' },

    [ 'surv_pickaxe_stone' ] = { weapon = 'pickaxe stone' },
    [ 'surv_pickaxe_copper' ] = { weapon = 'pickaxe copper' },
    [ 'surv_pickaxe_iron' ] = { weapon = 'pickaxe iron' },
    [ 'surv_pickaxe_steel' ] = { weapon = 'pickaxe steel' },
    [ 'surv_pickaxe_titan' ] = { weapon = 'pickaxe titan' },

    [ 'surv_axe_stone' ] = { weapon = 'axe stone' },
    [ 'surv_axe_copper' ] = { weapon = 'axe copper' },
    [ 'surv_axe_iron' ] = { weapon = 'axe iron' },
    [ 'surv_axe_steel' ] = { weapon = 'axe steel' },
    [ 'surv_axe_titan' ] = { weapon = 'axe titan' },

    [ 'tfa_rustalpha_hunting_bow' ] = { weapon = 'hunting bow', ammo = 'arrow' },
    [ 'tfa_rustalpha_handcannon' ] = { weapon = 'hand cannon', ammo = 'stone ammo' },
    [ 'tfa_rustalpha_pipeshotgun' ] = { weapon = 'pipe shotgun', ammo = 'shell' },
    [ 'tfa_rustalpha_revolver' ] = { weapon = 'revolver', ammo = 'pistol ammo' },
    [ 'tfa_rustalpha_p250' ] = { weapon = 'p250', ammo = 'pistol ammo' },
    [ 'tfa_rustalpha_pistol' ] = { weapon = 'pistol 9mm', ammo = 'pistol ammo' },
    [ 'tfa_rustalpha_shotgun' ] = { weapon = 'shotgun', ammo = 'shell' },
    [ 'tfa_rustalpha_mp5' ] = { weapon = 'mp5', ammo = 'smg ammo' },
    [ 'tfa_rustalpha_m4' ] = { weapon = 'm4', ammo = 'rifle ammo' },
    [ 'tfa_rustalpha_bolt_action_rifle' ] = { weapon = 'bolt rifle', ammo = 'sniper ammo' },
    [ 'tfa_rustalpha_f1_grenade' ] = { weapon = 'f1' },

    [ 'weapon_rpg' ] = { weapon = 'rpg', ammo = 'rpg ammo' },
    [ 'weapon_crossbow' ] = { weapon = 'crossbow', ammo = 'arrow' },

    [ 'yurie_eft_kiba_arms_axe' ] = { weapon = 'tomahawk' },
    [ 'yurie_eft_izhmash_6x5' ] = { weapon = 'knife' },
    [ 'yurie_eft_valuable_wyccaxe' ] = { weapon = 'antique axe' },
    [ 'yurie_eft_bars_a-2607_95x18' ] = { weapon = 'bars 95x18' },
    [ 'yurie_eft_bars_a-2607_damask' ] = { weapon = 'bars damascus' },
    [ 'yurie_eft_utility_axe' ] = { weapon = 'camper axe' },
    [ 'yurie_eft_strider_crash_axe' ] = { weapon = 'crash axe' },
    [ 'yurie_eft_cultist_damask' ] = { weapon = 'cultist knife' },
    [ 'yurie_eft_extrema_ratio_fulcrum' ] = { weapon = 'fulcrum bayonet' },
    [ 'yurie_eft_gf_crowbar' ] = { weapon = 'freeman crowbar' },
    [ 'yurie_eft_miller_bros_m-2' ] = { weapon = 'bros knife' },
    [ 'yurie_eft_voentorg_mpl-50' ] = { weapon = 'mpl50' },
    [ 'yurie_eft_red_rebel_axe' ] = { weapon = 'ice pick' },
    [ 'yurie_eft_usvr_taiga' ] = { weapon = 'taiga1' },
    [ 'yurie_eft_ontario_sp-8' ] = { weapon = 'survival machete' },
    
    [ 'rust_ak47u' ] = { weapon = 'rust assault rifle', ammo = 'rifle ammo' },
    [ 'rust_boltrifle' ] = { weapon = 'rust bolt', ammo = 'sniper ammo' },
    [ 'rust_bone_club' ] = { weapon = 'rust boneclub' },
    [ 'rust_bone_knife' ] = { weapon = 'rust bone knife' },
    [ 'rust_bow' ] = { weapon = 'rust bow', ammo = 'arrow' },
    [ 'rust_combat_knife' ] = { weapon = 'rust combat knife' },
    [ 'rust_compoundbow' ] = { weapon = 'rust compound bow', ammo = 'arrow' },
    [ 'rust_crossbow' ] = { weapon = 'rust crossbow', ammo = 'arrow' },
    [ 'rust_smg' ] = { weapon = 'rust smg', ammo = 'smg ammo' },
    [ 'rust_doublebarrel' ] = { weapon = 'rust doublebarrel', ammo = 'shell' },
    --[ 'rust_f1' ] = { weapon = 'rust f1' },
    [ 'rust_l96' ] = { weapon = 'rust l96', ammo = 'sniper ammo' },
    [ 'rust_longsword' ] = { weapon = 'rust longsword' },
    [ 'rust_lr300' ] = { weapon = 'rust lr300', ammo = 'rifle ammo' },
    [ 'rust_m249' ] = { weapon = 'rust m249', ammo = 'rifle ammo' },
    [ 'rust_m39emr' ] = { weapon = 'rust m39', ammo = 'sniper ammo' },
    [ 'rust_m92' ] = { weapon = 'rust m92', ammo = 'pistol ammo' },
    [ 'rust_mace' ] = { weapon = 'rust mace' },
    [ 'rust_machete' ] = { weapon = 'rust machete' },
    --[ 'rust_beancan' ] = { weapon = 'rust beancan' },
    [ 'rust_mp5' ] = { weapon = 'rust mp5', ammo = 'smg ammo' },
    [ 'rust_grenadelauncher' ] = { weapon = 'rust grenade launcher' },
    [ 'rust_nailgun' ] = { weapon = 'rust nailgun', ammo = 'smg ammo' },
    [ 'rust_pitchfork' ] = { weapon = 'rust pitchfork' },
    [ 'rust_sawnoffshotgun' ] = { weapon = 'rust pump shotgun', ammo = 'shell' },
    [ 'rust_python' ] = { weapon = 'rust python' },
    [ 'rust_revolver' ] = { weapon = 'rust revolver', ammo = 'pistol ammo' },
    [ 'rust_rock' ] = { weapon = 'rust rock' },
    [ 'rust_rocketlauncher' ] = { weapon = 'rust rocket launcher' },
    [ 'rust_salvaged_cleaver' ] = { weapon = 'rust salvaged cleaver' },
    [ 'rust_salvaged_sword' ] = { weapon = 'rust salvaged sword' },
    --[ 'rust_satchel' ] = { weapon = 'rust satchel' },
    [ 'rust_sap' ] = { weapon = 'rust sap', ammo = 'pistol ammo' },
    [ 'rust_sar' ] = { weapon = 'rust sar', ammo = 'rifle ammo' },
    [ 'rust_spas12' ] = { weapon = 'rust spas12', ammo = 'shell' },
    [ 'rust_stone_spear' ] = { weapon = 'rust stone spear' },
    [ 'rust_thompson' ] = { weapon = 'rust thompson', ammo = 'smg ammo' },
    --[ 'rust_c4' ] = { weapon = 'rust c4' },
    [ 'rust_waterpipe' ] = { weapon = 'rust waterpipe', ammo = 'shell' },
    [ 'rust_wooden_spear' ] = { weapon = 'rust wood spear' },
}

Ambi.Survival.Config.death_loot_ammo_convert = { -- Таблица, где ключ - это ID патронов, значение = класс предмета для инвентаря
    [ 41 ] = 'arrow', -- у стрел ID - 41, а класс предмета для инвентаря называется arrow
    [ 6 ] = 'arrow',
    [ 43 ] = 'stone ammo',
    [ 3 ] = 'pistol ammo',
    [ 4 ] = 'smg ammo',
    [ 1 ] = 'rifle ammo',
    [ 7 ] = 'shell',
    [ 14 ] = 'sniper ammo',
}
----------------------------------------------------------------------------------------
