local C, GUI, Draw, UI, CL = Ambi.Packages.Out( '@d, ContentLoader' )
local W, H = ScrW(), ScrH()

local COLOR_PANEL = Color( 255, 255, 255, 10 )
local COLOR_PANEL2 = Color( 0, 0, 0, 180 )

function Ambi.Survival.OpenTraderMenu( eObj )
    if not LocalPlayer():Alive() then return end

    local frame = GUI.DrawFrame( nil, 400, H / 1.4, 0, 0, '', true, true, true, function( self, w, h ) 
        Draw.Box( w, h, 0, 0, COLOR_PANEL2 )
    end )
    frame:Center()

    local panel = GUI.DrawScrollPanel( frame, frame:GetWide() - 8, frame:GetTall() - 24 - 4, 4, 24, function( self, w, h )
        Draw.Box( w, h, 0, 0, COLOR_PANEL2 )
    end )

    local id = eObj:EntIndex()

    for i, slot in ipairs( Ambi.Survival.traders[ id ].shop ) do
        Ambi.SimpleInventory.DownloadIcon( slot.sale )
        Ambi.SimpleInventory.DownloadIcon( slot.purchase )

        local icon_sale = Material( '../data/ambi/cache/simpleinventory/icons/'..Ambi.SimpleInventory.Config.directory_icons..'/'..slot.sale..'.png' )
        local icon_purchase = Material( '../data/ambi/cache/simpleinventory/icons/'..Ambi.SimpleInventory.Config.directory_icons..'/'..slot.purchase..'.png' )

        local count_sale, count_purchase = slot.sale_count, slot.purchase_count
        local multiply = 1

        local shop = GUI.DrawPanel( panel, panel:GetWide(), 98, 0, ( i - 1 ) * ( 98 + 4 ), function( self, w, h )
            Draw.Box( w, h, 0, 0, COLOR_PANEL2 )

            Draw.Text( 4, 0, 'Продаёт', UI.SafeFont( '20 Arial' ), C.AMBI_GREEN, 'top-left', 1, C.ABS_BLACK )
            Draw.Text( 32, h - 2, 'x'..count_sale, UI.SafeFont( '24 Arial Bold' ), C.ABS_WHITE, 'bottom-center' )
            if not icon_sale:IsError() then Draw.Material( 64, 64, 4, 16, icon_sale ) end

            Draw.Text( 100, 0, 'Покупает', UI.SafeFont( '20 Arial' ), C.AMBI, 'top-left', 1, C.ABS_BLACK )
            Draw.Text( 132, h - 2, 'x'..count_purchase, UI.SafeFont( '24 Arial Bold' ), C.ABS_WHITE, 'bottom-center' )
            if not icon_sale:IsError() then Draw.Material( 64, 64, 100, 16, icon_purchase ) end
        end )

        local buy = GUI.DrawButton( shop, 64, 26, shop:GetWide() - 64 - 32, shop:GetTall() - 26 - 4, nil, nil, nil, function( self )
            if not LocalPlayer():GetItem( slot.purchase ) then chat.AddText( C.AMBI_RED, 'У вас нет нужного предмета для продажи!' ) return end 
            if ( LocalPlayer():GetItem( slot.purchase ).count < count_purchase ) then chat.AddText( C.AMBI_RED, 'У вас нет столько предметов для продажи!' ) return end
            if LocalPlayer():GetItem( slot.sale ) then
                if ( LocalPlayer():GetItem( slot.sale ).count + count_sale > Ambi.SimpleInventory.Config.max_count_item ) then chat.AddText( C.AMBI_RED, 'Будет переполнения слота! Уменьшите количество покупаемого предмета' ) return end
            else
                if not LocalPlayer():GetLastFreeSlot() then chat.AddText( C.AMBI_RED, 'Не хватает места!' ) return end
                if ( count_sale > Ambi.SimpleInventory.Config.max_count_item ) then chat.AddText( C.AMBI_RED, 'Будет переполнения слота! Уменьшите количество покупаемого предмета' ) return end
            end

            net.Start( 'ambi_survival_buy_trader_items' )
                net.WriteEntity( eObj )
                net.WriteUInt( i, 10 )
                net.WriteUInt( multiply, 14 )
            net.SendToServer()
        end, function( self, w, h )
            Draw.Box( w, h, 0, 0, COLOR_PANEL2, 4, 'all' )

            local color = ( LocalPlayer():GetItem( slot.purchase ) and LocalPlayer():GetItem( slot.purchase ).count >= count_purchase ) and C.AMBI_GREEN or C.AMBI_RED
            Draw.Text( w / 2, h / 2, 'Купить', UI.SafeFont( '18 Arial' ), color, 'center' )
        end )

        local number = GUI.DrawTextEntry( shop, 64, 26, shop:GetWide() - 64 - 32, shop:GetTall() - buy:GetTall() - 26 - 4, UI.SafeFont( '24 Arial' ), C.AMBI_BLACK, nil, nil, '1', false, true )
        number:SetValue( 1 )
        number.OnChange = function( self )
            multiply = string.IsValid( self:GetValue() ) and self:GetValue() or 1
            if ( tonumber( multiply ) <= 0 ) then multiply = 1 end
            
            count_sale = math.floor( slot.sale_count * multiply )
            count_purchase = math.floor( slot.purchase_count * multiply )
        end
    end
end

net.Receive( 'ambi_survival_open_trader_menu', function() 
    local trader = net.ReadEntity()

    Ambi.Survival.OpenTraderMenu( trader )
end )

net.Receive( 'ambi_survival_send_trader_data', function() 
    -- Из-за хуйни с клиентом (он видит энтити, только когда она отрендерится), приходиться делать костыль с EntIndex()
    local trader_id, info = net.ReadUInt( 20 ), net.ReadTable()


    Ambi.Survival.traders[ trader_id ] = info
end )