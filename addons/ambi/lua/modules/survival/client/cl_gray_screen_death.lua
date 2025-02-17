local C = Ambi.Ambition.Global.Colors

local w, h = ScrW(), ScrH()
local degress = {
    {
        [ '$pp_colour_colour' ] = 0.15,
        [ '$pp_colour_brightness' ] = -0.1,
        [ '$pp_colour_contrast' ] = 0.8
    },

    {
        [ '$pp_colour_colour' ] = 0.40,
        [ '$pp_colour_contrast' ] = 0.8
    },

    {
        [ '$pp_colour_colour' ] = 0.55,
        [ '$pp_colour_contrast' ] = 0.9
    },

    {
        [ '$pp_colour_colour' ] = 0.8,
        [ '$pp_colour_contrast' ] = 0.92,
        [ '$pp_colour_brightness' ] = 0,
    },

    {
        [ '$pp_colour_colour' ] = 0.8,
        [ '$pp_colour_contrast' ] = 0.99,
        [ '$pp_colour_brightness' ] = 0,
    }
}

hook.Add( 'RenderScreenspaceEffects', 'Ambi.Survival.GrayScreen', function() 
    local health = LocalPlayer():Health()
    if ( health <= 0 ) then return end
    
    if ( health <= 10 ) then DrawColorModify( degress[ 1 ] ) DrawMotionBlur( 0.2, 0.4, 0.01 )
    elseif ( health <= 20 ) then DrawColorModify( degress[ 2 ] ) DrawMotionBlur( 0.6, 0.8, 0.01 )
    elseif ( health <= 30 ) then DrawColorModify( degress[ 3 ] )
    elseif ( health <= 40 ) then DrawColorModify( degress[ 4 ] )
    elseif ( health <= 50 ) then DrawColorModify( degress[ 5 ] )
    end
end )