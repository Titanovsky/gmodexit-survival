Ambi.SphereDeath.radius = Ambi.SphereDeath.radius or Ambi.SphereDeath.Config.radius

function Ambi.SphereDeath.Show()
    hook.Add( 'PostDrawTranslucentRenderables', 'Ambi.SphereDeath.Show', function() 
        render.SetMaterial( Ambi.SphereDeath.Config.material )
        render.SetColorMaterial()

        render.DrawWireframeSphere( Ambi.SphereDeath.Config.pos, Ambi.SphereDeath.radius, 50, 50, Ambi.SphereDeath.Config.color, true )
    end )
end

function Ambi.SphereDeath.Remove()
    hook.Remove( 'PostDrawTranslucentRenderables', 'Ambi.SphereDeath.Show' )
end

net.Receive( 'ambi_sphere_death_render', function() 
    local enable = net.ReadBool()
    if enable then 
        Ambi.SphereDeath.Show() 
    else 
        Ambi.SphereDeath.Remove() 
    end

    local radius = net.ReadUInt( 24 )
    Ambi.SphereDeath.radius = radius
end )