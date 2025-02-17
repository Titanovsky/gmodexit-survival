local C, GUI, Draw, UI, CL = Ambi.Packages.Out( '@d, ContentLoader' )
local W, H = ScrW(), ScrH()

local icon = nil
local headshot = false
local now_damage = 0
local color = C.ABS_WHITE

-- --------------------------------------------------------------------------------------------------------------------------------------------
local function ShowDamage()
    local indicator = '-'..now_damage
    local offset_y = Draw.GetTextSizeY( UI.SafeFont( Ambi.HitMarker.Config.font ), indicator )

    draw.SimpleTextOutlined( indicator, UI.SafeFont( Ambi.HitMarker.Config.font ), W / 2, H / 2 + 12 + offset_y, C.ABS_WHITE, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER, 1, C.ABS_BLACK )

    if not icon then return end

    -- surface.SetDrawColor( color.r, color.g, color.b, 255 )
    -- surface.SetMaterial( icon )
    -- surface.DrawTexturedRect( w / 2 - 16, h / 2 - 16, 32, 32 )
end

local function ShowDamageDifferent() -- TODO
end

-- --------------------------------------------------------------------------------------------------------------------------------------------
hook.Add( 'HUDPaint', 'Ambi.HitMarker.ShowDamage', function()
    if ( now_damage <= 0 ) then return end

    if ( Ambi.HitMarker.Config.type == 0 ) or ( Ambi.HitMarker.Config.type == 1 ) then 
        ShowDamage( Ambi.HitMarker.Config.font )
    else 
        ShowDamageDifferent()
    end
end )

-- --------------------------------------------------------------------------------------------------------------------------------------------
net.Receive( 'ambi_hitmarker_send_client', function() 
    local damage = net.ReadUInt( 16 )
    if not damage then damage = 0 end

    local is_enemy_dead = net.ReadBit()
    local is_headshot = net.ReadBit()
    headshot = tobool( is_headshot )

    if headshot then 
        surface.PlaySound( 'ambition/damage_notify/headshot.wav' )
    else 
        surface.PlaySound( 'ambition/hitmarker/hit.wav' )
    end

    if ( is_enemy_dead == 1 ) then
        color = C.ABS_RED
    else
        color = C.ABS_WHITE
        if ( is_headshot == 1 ) then 
            color = C.ABS_RED
        end
    end

    icon = ( is_enemy_dead == 0 ) and Material( 'ambi/hitmarker/hit.png' ) or Material( 'ambi/hitmarker/death.png' )

    if ( Ambi.HitMarker.Config.type == 0 ) or ( Ambi.HitMarker.Config.type == 2 ) then now_damage = damage
    elseif ( Ambi.HitMarker.Config.type == 1 ) then now_damage = now_damage + damage
    end

    timer.Create( 'Ambi.HitMarker.TimeDamageNotify', 1.75, 1, function()
        icon = nil
        headshot = false
        now_damage = 0
        color = C.ABS_WHITE
    end )
end )