Ambi.Survival.traders = Ambi.Survival.traders or {}

-- Работает в связке с AutoSpawn модулем

function Ambi.Survival.AddTrader( eObj, tShop )
    Ambi.Survival.traders[ eObj ] = {
        shop = tShop
    }

    print( '[Survival] Added Trader: '..tostring( eObj ) )

    if SERVER then
        net.Start( 'ambi_survival_send_trader_data' )
            net.WriteUInt( eObj:EntIndex(), 20 )
            net.WriteTable( Ambi.Survival.traders[ eObj ] )
        net.Broadcast()
    end
end