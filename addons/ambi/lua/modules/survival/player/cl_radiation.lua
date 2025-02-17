local C, GUI, Draw, UI = Ambi.Packages.Out( '@d' )
local W, H = ScrW(), ScrH()
local ICON = Material( 'ambition/survival/icons/irradiation.png' )
local COLOR_ANTIRAD_ONE, COLOR_ANTIRAD_TWO = Color( 0, 255, 0, 2 ), Color( 0, 35, 0, 200 )

hook.Add( 'HUDPaint', 'Ambi.Survival.CheckRadiation', function()
    if ( LocalPlayer():GetNWInt( 'AntiRadiation' ) >= 2 ) then
        Draw.Box( W, H, 0, 0, COLOR_ANTIRAD_TWO )
    elseif ( LocalPlayer():GetNWInt( 'AntiRadiation' ) >= 1 ) then
        Draw.Box( W, H, 0, 0, COLOR_ANTIRAD_ONE )
    end

    if ( LocalPlayer():GetNWInt( 'Radiation' ) >= 4 ) then
        Draw.Text( W / 2, H - 32, 'Радиация: '..LocalPlayer():GetNWInt( 'Radiation' ), UI.SafeFont( '32 Arial' ), C.AMBI_GREEN, 'bottom-center', 1, C.ABS_BLACK )
        Draw.Material( 64, 64, W / 2 - 32, H - 64 - 64, ICON, C.FLAT_GREEN )
    end
end )