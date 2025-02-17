local C, UT = Ambi.General.Global.Colors, Ambi.General.Utility

local function ConvertWeaponInItem( sClass )
    if ( sClass == 'tfa_rustalpha_stone_hatchet' ) then return end

    local class = Ambi.Survival.Config.drop_weapons_convert[ sClass or '' ]
    if not class then return end

    return class.weapon
end

local function ConvertAmmoInItem( nAmmo )
    return Ambi.Survival.Config.death_loot_ammo_convert[ nAmmo or -1 ]
end

function Ambi.Survival.SpawnDeathLoot( ePly )
    local items = {}
    local inv, weapons, ammo = ePly:GetItems(), ePly:GetWeapons(), ePly:GetAmmo()
    
    for _, wep in ipairs( weapons ) do
        local item = ConvertWeaponInItem( wep:GetClass() )
        if item then items[ #items + 1 ] = { class = item, count = 1 } end
    end

    for id, _count in pairs( ammo ) do
        local item = ConvertAmmoInItem( id )
        if item then items[ #items + 1 ] = { class = item, count = _count } end
    end

    for _, item in ipairs( inv ) do
        if not item.class then continue end

        --print( item.class )
        items[ #items + 1 ] = { class = item.class, count = item.count }
    end
    
    if ( #items == 0 ) then return end

    if ePly:Alive() then ePly:StripWeapons() ePly:StripAmmo() end
    ePly:RemoveItems()

    ePly:NotifySend( 4, { text = 'Ваш рюкзак пропадёт через 15 минут!', time = 15, color = C.AMBI_RED } )

    local loot = ents.Create( 'sinv_loot' )
    loot:Spawn()
    loot:SetOptions( ePly:Nick(), 'backpack', 'models/blacksnow/backpack.mdl', ePly:GetColor(), items )
    loot:SetPos( ePly:GetPos() + Vector( 0, 0, 30 ) )
    loot:SetHealth( 500 )
    loot:GetPhysicsObject():EnableMotion( true )
    loot:GetPhysicsObject():Wake()

    timer.Simple( 60 * 15, function()
        if not IsValid( loot ) then return end

        loot:Remove()
    end )
end

hook.Add( 'PlayerDeath', 'Ambi.Survival.PostDeathLoot', function( ePly )
    Ambi.Survival.SpawnDeathLoot( ePly )
end )