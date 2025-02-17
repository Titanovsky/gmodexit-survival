local delay = 0
hook.Add( 'Think', 'Ambi.Survival.CheckSpaceSuitForPlanets', function()
    if ( delay > CurTime() ) then return end

    delay = CurTime() + 5

    for _, ply in ipairs( player.GetHumans() ) do
        if ply:Alive() and ( Ambi.Territory.GetChunkName( ply ) == 'mars' ) then ply:Kill() end
    end
end )

hook.Add( 'PlayerDeath', 'Ambi.Survival.RemoveSpaceSuit', function( ePly )
    ePly:SetNWBool( 'HasSuit', false )
    ePly:SetNWBool( 'HasSuitSpace', false )
end )