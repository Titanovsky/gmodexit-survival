local C, SND = Ambi.General.Global.Colors, Ambi.General.Global.Sounds
local ONCE = true
local M, H, D = 60, 60 * 60, 60 * 60 * 24
local Add = Ambi.Kit.Add

Add( 'starter', 'Набор для новичка', not ONCE, M * 25, function( ePly )
    if ePly:Alive() then
        ePly:Give( 'weapon_physcannon' )
        ePly:Give( 'weapon_physgun' )
        ePly:Give( 'surv_pickaxe_stone' )
        ePly:Give( 'surv_axe_stone' )
    end
end )

Add( 'level', 'Набор, дающий много XP', not ONCE, D * 1, function( ePly )
    ePly:AddXP( 1500 )
end )

Add( 'slots', 'даёт 5 слотов', not ONCE, D * 7, function( ePly )
    ePly:AddXP( 25 )
    ePly:SetSlots( ePly:GetSlots() + 5 )
end )

Add( 'bonus', 'Бонусный пакет плюшек', ONCE, 0, function( ePly )
    if not ePly:Alive() then return false end

    ePly:AddXP( 500 )

    ePly:Give( 'weapon_physcannon' )
    ePly:Give( 'weapon_physgun' )
    ePly:SetArmor( ePly:Armor() + 100 )
    ePly:SetHealth( ePly:Health() + 80 )
    ePly:SetHunger( 500 )
    ePly:SetThirst( 500 )
end )

local RAND_PICKAXE = {
    'surv_pickaxe_stone', 'surv_pickaxe_copper', 'surv_pickaxe_iron'
}

local RAND_AXES = {
    'surv_axe_stone', 'surv_axe_copper', 'surv_axe_iron'
}

Add( 'vip', 'Для Випусов', not ONCE, H * 3, function( ePly )
    if not ePly:IsVIP() then ePly:ChatPrint( 'Кит доступен VIP [F3]' ) return false end

    ePly:AddXP( 500 )
    if ePly:Alive() then
        ePly:Give( table.Random( RAND_PICKAXE ) )
        ePly:Give( table.Random( RAND_AXES ) )
        ePly:Give( 'csgo_karambit_ddpat' )
    end
end )

local resources = {
    'wood',
    'stone',
    'copper',
    'coin',
}

Add( 'resource', 'Донатный набор', not ONCE, H * 2, function( ePly )
    if not ePly:HasPurchase( 'kit_resource' ) then ePly:ChatPrint( 'Это платный набор [F3]' ) return false end

    for _, class in ipairs( resources ) do ePly:AddItem( class, 200, true, true ) end
end )

local ammo = {
    'arrow',
    'stone ammo',
    'shell',
    'pistol ammo',
    'smg ammo',
    'rifle ammo',
}

Add( 'ammo', 'Донатный набор', not ONCE, H * 1, function( ePly )
    if not ePly:HasPurchase( 'kit_ammo' ) then ePly:ChatPrint( 'Это платный набор [F3]' ) return false end

    for _, class in ipairs( ammo ) do ePly:AddItem( class, 30, true, true ) end
end )