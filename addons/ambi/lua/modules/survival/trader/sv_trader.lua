local C = Ambi.Packages.Out( 'colors' )

net.AddString( 'ambi_survival_open_trader_menu' )
net.AddString( 'ambi_survival_send_trader_data' )
net.AddString( 'ambi_survival_buy_trader_items' )


hook.Add( 'EntityRemoved', 'Ambi.Survival.RemoveTraders', function( eObj ) 
    if Ambi.Survival.traders[ eObj ] then Ambi.Survival.traders[ eObj ] = nil end
end )

hook.Add( 'PlayerInitialSpawn', 'Ambi.Survival.SendTraderData', function( ePly ) 
    -- Из-за хуйни с клиентом (он видит энтити, только когда она отрендерится), приходиться делать костыль с EntIndex()
    for trader, data in pairs( Ambi.Survival.traders ) do
        net.Start( 'ambi_survival_send_trader_data' )
            net.WriteUInt( trader:EntIndex(), 20 )
            net.WriteTable( data )
        net.Send( ePly )
    end
end )

net.Receive( 'ambi_survival_buy_trader_items', function( _, ePly ) 
    local entity = net.ReadEntity()

    local trader = Ambi.Survival.traders[ entity ]
    if not trader then return end

    local id = net.ReadUInt( 10 )
    local slot = trader.shop[ id ]
    if not slot then return end

    local multiply = net.ReadUInt( 14 )
    if ( multiply == 0 ) then return end
    
    if not ePly:GetItem( slot.purchase ) then return end 
    if ( ePly:GetItem( slot.purchase ).count < slot.purchase_count * multiply ) then return end
    if ePly:GetItem( slot.sale ) then
        if ( ePly:GetItem( slot.sale ).count + slot.sale_count * multiply > Ambi.SimpleInventory.Config.max_count_item ) then return end
    else
        if not ePly:GetLastFreeSlot() then return end
        if ( slot.sale_count * multiply > Ambi.SimpleInventory.Config.max_count_item ) then return end
    end

    ePly:AddItem( slot.purchase, -slot.purchase_count * multiply, true )
    ePly:AddItem( slot.sale, slot.sale_count * multiply )
    ePly:ChatSend( C.AMBI_GREEN, '[•] ', C.ABS_WHITE, 'Вы купили предмет: ', C.AMBI_GREEN, Ambi.SimpleInventory.GetClass( slot.sale ).name, C.ABS_WHITE, ' x'..slot.sale_count * multiply )
    ePly:EmitSound( 'ambi/painkiller/money.ogg' )

    local random = math.random( 1, 100 )
    if ( random == 100 ) then entity:EmitSound( 'ambi/painkiller/voice.ogg' ) end
end )