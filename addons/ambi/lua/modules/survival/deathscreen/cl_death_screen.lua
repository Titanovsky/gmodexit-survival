local C, GUI, Draw, UI = Ambi.Packages.Out( '@d' )
local CFG = Ambi.Survival.Config
local w, h = ScrW(), ScrH()

function Ambi.Survival.ShowDeathScreen()
    timer.Create( 'AmbDeathScreenTimer', CFG.death_screen_time, 1, function() end )

    local screen = GUI.DrawFrame( nil, w, h, 0, 0, '', true, false, false, function( self, w, h )
        Draw.Box( w, h, 0, 0, C.ABS_BLACK )
        Draw.Text( w / 2, h / 2 - 20, self.text, UI.SafeFont( '40 Arial' ), C.AMBI_BLOOD, 'center' )
    end )
    screen.text = 'Вы мертвы'

    local respawn = GUI.DrawButton( screen, 150, 50, w / 2 - 150 / 2, h / 2 + 60, nil, nil, nil, function( self )
        if timer.Exists( 'AmbDeathScreenTimer' ) then return end

        net.Start( CFG.death_screen_net_respawn )
        net.SendToServer()

        self:GetParent().text = ''
        self:Remove()

        screen:SetMouseInputEnabled( false )
        screen:SetKeyboardInputEnabled( false )
        screen:AlphaTo( 0, 3.62, 0, function() screen:Remove() end )

        gui.HideGameUI()
    end, function( self, w, h )
        Draw.Box( w, h, 0, 0, C.ABS_WHITE )
        Draw.Box( w - 4, h - 4, 2, 2, C.ABS_BLACK )

        local text = timer.Exists( 'AmbDeathScreenTimer' ) and math.floor( timer.TimeLeft( 'AmbDeathScreenTimer' ) ) or 'Respawn'
        Draw.Text( w / 2, h / 2, text, UI.SafeFont( '32 Arial' ), C.ABS_WHITE, 'center' )
    end )
end