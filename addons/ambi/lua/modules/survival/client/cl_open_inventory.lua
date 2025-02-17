hook.Add( 'PlayerButtonDown', 'Ambi.Survival.OpenInventory', function() 
    if input.IsKeyDown( KEY_F4 ) and not timer.Exists( 'OpenInventory' ) then 
        RunConsoleCommand( 'ambi_sinv_open_inventory' ) 
        timer.Create( 'OpenInventory', 0.25, 1, function() end )
    end
end )