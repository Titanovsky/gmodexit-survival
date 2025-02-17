local C = Ambi.General.Global.Colors

hook.Add( '[Ambi.SimpleInventory.SetSlots]', 'Ambi.Survival.Debug', function( ePly, nSlot, tInventory )
    print( ePly:Nick()..' | SetSlots | '..nSlot )

    ePly:NotifySend( 4, { text = 'Ваше количество слотов: '..nSlot, color = C.AMBI_PURPLE, time = 5 } )
end )

hook.Add( '[Ambi.SimpleInventory.AddSlots]', 'Ambi.Survival.Debug', function( ePly, nSlot, tInventory )
    print( ePly:Nick()..' | AddSlots | '..nSlot )

    ePly:NotifySend( 4, { text = 'Ваше количество слотов: '..nSlot, color = C.AMBI_PURPLE, time = 5 } )
end )

hook.Add( '[Ambi.SimpleInventory.SetItem]', 'Ambi.Survival.Debug', function( ePly, nSlot, sClass, nCount, bMax, tInventory )
    print( ePly:Nick()..' | SetItem | '..sClass )

    --PrintTable( tInventory )
end )

hook.Add( '[Ambi.SimpleInventory.AddItem]', 'Ambi.Survival.Debug', function( ePly, sClass, nCount, bMax, tInventory, nOldCount )
    print( ePly:Nick()..' | AddItem | '..sClass )

end )

hook.Add( '[Ambi.SimpleInventory.RemoveItem]', 'Ambi.Survival.Debug', function( ePly, sClass, tInventory )
    print( ePly:Nick()..' | RemoveItem | '..sClass )

    --PrintTable( tInventory )
end )