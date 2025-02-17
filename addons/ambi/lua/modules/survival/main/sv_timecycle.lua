local light_environment = nil
local fog = nil
local env_skypaint = nil

local times = {
    [ 'day' ] = {
        pattern = 'l', 
        topcolor = '0.27 0.55 0.98', 
        bottomcolor = '0.67 0.75 0.97',
        duskcolor = '0.47 0.68 0.98',
        duskscale = '1.00',
        fadebias = '1.00',
        sunsize = '0.00',
        suncolor = '0.00 0.00 0.00',
        drawstars = '0',
        startexture = 'skybox/starfield',
        starslayers = '0',
        starscale = '0.00 0.00 0.00',
        starfade = '0.00 0.00 0.00',
        starspeed = '0.00 0.00 0.00'

    },

    [ 'night' ] = {
        pattern = 'a', 
        topcolor = '0.00 0.00 0.00', 
        bottomcolor = '0.01 0.01 0.01',
        duskcolor = '0.00 0.00 0.00',
        duskscale = '1.00',
        fadebias = '0.32',
        sunsize = '0.00',
        suncolor = '0.00 0.00 0.00',
        drawstars = '1',
        startexture = 'skybox/starfield',
        starslayers = '2',
        starscale = '0.90',
        starfade = '1.50',
        starspeed = '0.01'
    },

    [ 'sundown' ] = {
        pattern = 'f', 
        topcolor = '0.69 0.53 0.45', 
        bottomcolor = '0.26 0.13 0.05',
        duskcolor = '0.63 0.27 0.04',
        duskscale = '1.24',
        fadebias = '1.00',
        sunsize = '2.00',
        suncolor = '1.00 0.56 0.00',
        drawstars = '0',
        startexture = 'skybox/starfield',
        starslayers = '2',
        starscale = '0.90',
        starfade = '1.50',
        starspeed = '0.01'
    },

    [ 'christmas' ] = {
        pattern = 'b',
        topcolor = '0.00 0.00 0.00', 
        bottomcolor = '0.00 0.00 0.02',
        duskcolor = '0.00 0.00 0.02',
        duskscale = '1.00',
        duskintensity = '1.00',
        fadebias = '1.00',
        sunsize = '0.00',
        drawstars = '1',
        startexture = 'skybox/starfield',
        starslayers = '2',
        starscale = '1.45',
        starfade = '1.45',
        starspeed = '0.01'
    }
}
local time_s, time_m, time_h, time_d = 0, 0, 0, 1

local function FindSkyPaint()
    for _, ent in pairs( ents.FindByClass( 'env_skypaint' ) ) do
        env_skypaint = ent
    end
end

local function FindLightEnv()
    for _, ent in pairs( ents.FindByClass( 'light_environment' ) ) do
        light_environment = ent
    end
end

hook.Add( 'PostGamemodeLoaded', 'Ambi.Survival.TimeCycle', function()
    FindLightEnv()
    FindSkyPaint()
end )

function Ambi.Survival.SetTimeEnvironment( sTime )
    sTime = string.lower( sTime )

    local env = times[ sTime ]
    if not env then return end

    if not env_skypaint then FindSkyPaint() end
    if not light_environment then FindLightEnv() end

    if light_environment then light_environment:Fire( 'setpattern', env.pattern ) end

    if env_skypaint then
        for k, v in pairs( env ) do
            if ( k == 'pattern' ) then continue end

            env_skypaint:SetKeyValue( k, v )
        end
    end
end

Ambi.Survival.start_time = Ambi.Survival.start_time or false

hook.Add( 'InitPostEntity', 'Ambi.Survival.TimeCycle', function()
    timer.Simple( 1, function()
        Ambi.Survival.SetTimeEnvironment( 'day' )
        Ambi.Survival.start_time = true
    end )
end )

local delay = 0
hook.Add( 'Think', 'Ambi.Survival.TimeCycle', function() 
    if ( delay >= CurTime() ) then return end
    if not Ambi.Survival.start_time then return end

    delay = CurTime() + 2 -- 48 минут = 1 игровые сутки

    time_m = time_m + 1

    if ( time_m >= 60 ) then
        time_m = 0
        time_h = time_h + 1
    end

    if ( time_h >= 24 ) then
        time_h = 0
        time_d = time_d + 1
    end
    
    if ( time_h == 20 ) then AMB.Survival.SetTimeEnvironment( 'night' ) -- до 8 минут
    elseif ( time_h == 18 ) then AMB.Survival.SetTimeEnvironment( 'sundown' ) -- до 4 минут
    elseif ( time_h == 2 ) then AMB.Survival.SetTimeEnvironment( 'day' ) -- до 32 минут
    elseif ( time_h == 0 ) then AMB.Survival.SetTimeEnvironment( 'sundown' ) -- до 4 минут
    end
end )
