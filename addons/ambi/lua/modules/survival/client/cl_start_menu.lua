local C, GUI, Draw, UI, Gen = Ambi.Packages.Out( '@d, general' )
local CFG = Ambi.Survival.Config

local w, h = ScrW(), ScrH()
local COLOR_WHITE = C.AMBI_WHITE
local COLOR_BUTTON_LINE = ColorAlpha( C.AMBI_BLACK, 50 )
local COLOR_WHITE_NEWS = Color( 225, 225, 225 )

function Ambi.Survival.ShowStartMenu( bFlag )
    local background = GUI.DrawFrame( nil, w, h, 0, 0, '', true, false, false, function( self, w, h )
        Draw.Box( w, h, 0, 0, COLOR_WHITE )
        Draw.Text( w / 2, 24, 'Выживашка', UI.SafeFont( '64 Franxurter Totally Fat' ), C.AMBI, 'top-center' )
    end )

    timer.Simple( 2, function() 
        Ambi.Survival.ShowLoadingMenu( 4 )
        background:Remove()
    end )
end

Gen.AddConsoleCommand( 'show_start_menu', function() Ambi.Survival.ShowStartMenu( false ) end )

hook.Add( 'PostGamemodeLoaded', 'Ambi.Survival.ShowStartMenu', function() 
    if CFG.enable_custom_start_menu then Ambi.Survival.ShowStartMenu( true ) end
end )

function Ambi.Survival.ShowLoadingMenu( nSecondsToRemove )
    local status = 'Скоро Вы будете играть!'
    local loading = GUI.DrawPanel( nil, w, h, 0, 0, function( self, w, h )
        Draw.Box( w, h, 0, 0, COLOR_WHITE )
        Draw.Text( w / 2, h / 2 + 25, status, UI.SafeFont( self.font ), self.color, 'center', 1, C.ABS_BLACK )
    end )
    loading.font = '32 Ambi'
    loading.color = C.AMBI

    timer.Simple( nSecondsToRemove / 2, function()
        status = 'Приятной игры :)'
        loading.font = '40 Ambi'
        loading.color = C.FLAT_GREEN
        surface.PlaySound( 'buttons/button15.wav' )

        loading:AlphaTo( 0, nSecondsToRemove / 2, 0, function() 
            loading:Remove() 
        end )
    end )
end