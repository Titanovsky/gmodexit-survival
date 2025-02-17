local C, GUI, Draw, UI = Ambi.Packages.Out( '@d' )
local W, H = ScrW(), ScrH()
local Add = Ambi.MultiHUD.Add

local W, H = ScrW(), ScrH()
local W_PANELS = 200

local COLOR_PANEL = Color( 20, 20, 20, 200 )
local COLOR_BLOOD = Color( 137, 3 ,3 ,209 )
local COLOR_DARK_BLUE = Color( 56, 70 ,123 ,209)
local COLOR_GREEN = Color(49,173,45, 209)
local COLOR_BLUE = Color( 127, 140, 208, 209 )
local COLOR_PURPLE = Color( 154, 113, 158, 209)

local BLOCK_WEAPONS = {
    [ 'weapon_physcannon' ] = true,
    [ 'weapon_bugbait' ] = true,
    [ 'weapon_crowbar' ] = true,
    [ 'weapon_stunstick' ] = true,
    [ 'weapon_fists' ] = true,
    [ 'weapon_physgun' ] = true,
    [ 'gmod_tool' ] = true,
    [ 'keys' ] = true,
    [ 'lockpick' ] = true,
    [ 'stunstick' ] = true,
    [ 'arrest_stick' ] = true,
    [ 'unarrest_stick' ] = true,
    [ 'weaponchecker' ] = true,
    [ 'keypadchecker' ] = true,
    [ 'gmod_camera' ] = true,
}

-- --------------------------------------------------------------------------------------------------------------------------------------------
UI.AddFont( 'AmbiMinHUD', { font = 'Franklin Gothic Demi', size = 48, extended = true, weight = 100 } )
UI.AddFont( 'AmbiMinHUDAmmo', { font = 'Franklin Gothic Demi', size = 64, extended = true } )
UI.AddFont( 'AmbiMinHUDHealth', { font = 'Franklin Gothic Demi', size = 32, extended = true } )

-- --------------------------------------------------------------------------------------------------------------------------------------------
Add( 2, 'Survival Minimalistic HUD', 'Ambi', function()
    local health = LocalPlayer():Health()
    if ( health <= 0 ) then return end

    local wep = LocalPlayer():GetActiveWeapon()
    if IsValid( wep ) and ( wep:GetClass() == 'gmod_camera' ) then return end

    -- Nick
    local nick = LocalPlayer():Nick()
    local w_nick = Draw.GetTextSizeX( 'AmbiMinHUD', nick ) + 8
    Draw.Box( w_nick, 36, 10, H - 36 - 10, COLOR_PANEL, 4 )
    Draw.SimpleText( 14, H - 4, nick, 'AmbiMinHUD', C.WHITE, 'bottom-left', 1, C.ABS_BLACK )

    -- Health
    local hp, max = LocalPlayer():Health(), LocalPlayer():GetMaxHealth()
    local w = ( hp > max ) and W_PANELS or ( W_PANELS / max ) * hp
    local color = ( hp <= ( max / 3 ) ) and ColorAlpha( COLOR_BLOOD, 200 + math.sin( 360 + CurTime() * 16 ) * 160 ) or COLOR_BLOOD
    local color2 = ( hp <= ( max / 3 ) ) and ColorAlpha( C.RED, 200 + math.sin( 360 + CurTime() * 16 ) * 160 ) or C.RED

    Draw.Box( W_PANELS + 8, 36, 10, H - 36 - 50, COLOR_PANEL, 4 )
    Draw.Box( W_PANELS, 36 - 8, 10 + 4, H - 36 - 50 + 4, color, 4 )
    Draw.Box( w, 36 - 8, 10 + 4, H - 36 - 50 + 4, color2, 4 )
    Draw.SimpleText( 120, H - 52, hp, 'AmbiMinHUDHealth', C.ABS_WHITE, 'bottom-center', 1, C.ABS_BLACK )

    -- Голод
    local hp, max = LocalPlayer():GetHunger(), 500
    local w = ( hp > max ) and W_PANELS or ( W_PANELS / max ) * hp
    local color = ( hp <= ( max / 3 ) ) and ColorAlpha( COLOR_GREEN, 200 + math.sin( 360 + CurTime() * 16 ) * 160 ) or COLOR_GREEN
    local color2 = ( hp <= ( max / 3 ) ) and ColorAlpha( C.GREEN, 200 + math.sin( 360 + CurTime() * 16 ) * 160 ) or C.GREEN

    Draw.Box( W_PANELS + 8, 36, 10, H - 36 - 90, COLOR_PANEL, 4 )
    Draw.Box( W_PANELS, 36 - 8, 10 + 4, H - 36 - 90 + 4, color, 4 )
    Draw.Box( w, 36 - 8, 10 + 4, H - 36 - 90 + 4, color2, 4 )
    Draw.SimpleText( 120, H - 90, 'Голод: '..LocalPlayer():GetHunger(), 'AmbiMinHUDHealth', C.ABS_WHITE, 'bottom-center', 1, C.ABS_BLACK )

    -- Жажда
    local hp, max = LocalPlayer():GetThirst(), 500
    local w = ( hp > max ) and W_PANELS or ( W_PANELS / max ) * hp
    local color = ( hp <= ( max / 3 ) ) and ColorAlpha( COLOR_BLUE, 200 + math.sin( 360 + CurTime() * 16 ) * 160 ) or COLOR_BLUE
    local color2 = ( hp <= ( max / 3 ) ) and ColorAlpha( C.BLUE, 200 + math.sin( 360 + CurTime() * 16 ) * 160 ) or C.BLUE

    Draw.Box( W_PANELS + 8, 36, 10, H - 36 - 130, COLOR_PANEL, 4 )
    Draw.Box( W_PANELS, 36 - 8, 10 + 4, H - 36 - 130 + 4, color, 4 )
    Draw.Box( w, 36 - 8, 10 + 4, H - 36 - 130 + 4, color2, 4 )
    Draw.SimpleText( 120, H - 130, 'Жожда: '..LocalPlayer():GetThirst(), 'AmbiMinHUDHealth', C.ABS_WHITE, 'bottom-center', 1, C.ABS_BLACK )

    -- Уровень
    local hp, max = LocalPlayer():GetXP(), LocalPlayer():GetNextXP()
    local w = ( hp > max ) and W_PANELS or ( W_PANELS / max ) * hp
    local color = COLOR_PURPLE
    local color2 = C.PURPLE
 
    Draw.Box( W_PANELS + 8, 36, 10, H - 36 - 170, COLOR_PANEL, 4 )
    Draw.Box( W_PANELS, 36 - 8, 10 + 4, H - 36 - 170 + 4, color, 4 )
    Draw.Box( w, 36 - 8, 10 + 4, H - 36 - 170 + 4, color2, 4 )
    Draw.SimpleText( 120, H - 170, 'Уровень: '..LocalPlayer():GetLevel(), 'AmbiMinHUDHealth', C.ABS_WHITE, 'bottom-center', 1, C.ABS_BLACK )

    -- Armor
    local armor, max = LocalPlayer():Armor(), LocalPlayer():GetMaxArmor()
    if ( armor > 0 ) then
        local w = ( armor > max ) and W_PANELS or ( W_PANELS / max ) * armor

        Draw.Box( W_PANELS + 8, 36, 10, H - 36 - 90, COLOR_PANEL, 4 )
        Draw.Box( W_PANELS, 36 - 8, 10 + 4, H - 36 - 90 + 4, COLOR_DARK_BLUE, 4 )
        Draw.Box( w, 36 - 8, 10 + 4, H - 36 - 90 + 4, C.BLUE, 4 )
        Draw.SimpleText( 120, H - 92, armor, 'AmbiMinHUDHealth', C.ABS_WHITE, 'bottom-center', 1, C.ABS_BLACK )
    end

    -- Ammunition
    if IsValid( wep ) and not BLOCK_WEAPONS[ wep:GetClass() ] then 
        local clip1, ammo1, ammo2 = wep:Clip1(), LocalPlayer():GetAmmoCount( wep:GetPrimaryAmmoType() ), LocalPlayer():GetAmmoCount( wep:GetSecondaryAmmoType() )
        local ammo = clip1..' / '..ammo1
        if ammo2 and ( ammo2 > 0 ) then 
            ammo = '('..ammo2..') '..clip1..' / '..ammo1
        end

        local color = ( ammo1 == 0 and clip1 == 0 ) and C.AMBI_GRAY or C.WHITE
        Draw.SimpleText( W - 4, H - 1, ammo, 'AmbiMinHUDAmmo', color, 'bottom-right', 1, C.ABS_BLACK )
    end
end )