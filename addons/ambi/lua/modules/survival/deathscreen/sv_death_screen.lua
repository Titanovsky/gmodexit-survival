local CFG = Ambi.Survival.Config

hook.Add( 'PlayerDeath', 'Ambi.Survival.DeathScreen', function( ePly )
    if ePly:IsSuperAdmin() then return end
    
    ePly:SendLua( 'Ambi.Survival.ShowDeathScreen()' )
end )

local net_respawn = net.AddString( CFG.death_screen_net_respawn )
net.Receive( net_respawn, function( _, ePly )
    if ePly:Alive() then return end

    ePly:Spawn()
end )