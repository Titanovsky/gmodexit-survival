Ambi.SphereDeath.radius = Ambi.SphereDeath.radius or Ambi.SphereDeath.Config.radius
Ambi.SphereDeath.is_sphere = Ambi.SphereDeath.is_sphere or false

net.AddString( 'ambi_sphere_death_render' )

function Ambi.SphereDeath.Start()
    if Ambi.SphereDeath.is_sphere then Ambi.General.Error( 'SphereDeath', 'Sphere is exists!' ) return end

    Ambi.SphereDeath.radius = Ambi.SphereDeath.Config.radius
    Ambi.SphereDeath.is_sphere = true

    net.Start( 'ambi_sphere_death_render' )
        net.WriteBool( true )
        net.WriteUInt( Ambi.SphereDeath.radius, 24 )
    net.Broadcast()

    local steps = 0
    timer.Create( 'SphereDeath', Ambi.SphereDeath.Config.delay, Ambi.SphereDeath.Config.steps, function() 
        steps = steps + 1
        if ( steps >= Ambi.SphereDeath.Config.steps ) then Ambi.SphereDeath.End() return end
        
        Ambi.SphereDeath.radius = Ambi.SphereDeath.radius + Ambi.SphereDeath.Config.add

        net.Start( 'ambi_sphere_death_render' )
            net.WriteBool( true )
            net.WriteUInt( Ambi.SphereDeath.radius, 24 )
        net.Broadcast()
    end )

    if Ambi.SphereDeath.Config.damage_enable then
        timer.Create( 'SphereDeathDamage', Ambi.SphereDeath.Config.damage_delay, Ambi.SphereDeath.Config.steps, function()
            local players_not_damage = {}

            for _, ent in ipairs( ents.FindInSphere( Ambi.SphereDeath.Config.pos, Ambi.SphereDeath.radius ) ) do
                if ent:IsPlayer() then players_not_damage[ ent ] = true end
            end

            for _, ply in ipairs( player.GetAll() ) do
                if not ply:IsAlive() then continue end
                if ply:IsSuperAdmin() then continue end

                if not players_not_damage[ ply ] then 
                    ply:TakeDamage( Ambi.SphereDeath.Config.damage_amount )
                    ply:ChatPrint( 'Срочно доберитесь до сферы!' )
                end
            end
        end )
    end

    print( '[SphereDeath] Started' )

    for _, ply in ipairs( player.GetAll() ) do
        ply:ChatPrint( 'Сфера смерти - стартовала!' )
    end
end

function Ambi.SphereDeath.End()
    if not Ambi.SphereDeath.is_sphere then Ambi.General.Error( 'SphereDeath', 'Sphere is not exists!' ) return end

    Ambi.SphereDeath.is_sphere = false

    timer.Remove( 'SphereDeath' )

    net.Start( 'ambi_sphere_death_render' )
        net.WriteBool( false )
        net.WriteUInt( 1, 24 ) -- Любое значение
    net.Broadcast()

    print( '[SphereDeath] The End' )

    for _, ply in ipairs( player.GetAll() ) do
        ply:ChatPrint( 'Сфера смерти - закончилась!' )
    end
end

timer.Create( 'SphereDeathAutoStart', Ambi.SphereDeath.Config.auto_delay, 0, function() 
    if Ambi.SphereDeath.Config.auto_enable then Ambi.SphereDeath.Start() end
end )

hook.Add( 'PlayerInitialSpawn', 'Ambi.SphereDeath.SendRender', function( ePly ) 
    if not Ambi.SphereDeath.is_sphere then return end

    net.Start( 'ambi_sphere_death_render' )
        net.WriteBool( true )
        net.WriteUInt( Ambi.SphereDeath.radius, 20 )
    net.Send( ePly )
end )