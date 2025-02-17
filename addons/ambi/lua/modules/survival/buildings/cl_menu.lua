local C, GUI, Draw, UI = Ambi.Packages.Out( '@d' )
local Cache = Ambi.Cache
local W, H = ScrW(), ScrH()

local COLOR_PANEL = Color( 0, 0, 0, 200 )

net.Receive( 'amb_survival_show_building', function()
    local ent = net.ReadEntity()

    Ambi.Survival.ShowCraftMenu( ent, ent:GetNWString( 'Building' ) )
end )

function Ambi.Survival.ShowCraftMenu( eObj, sBuilding )
    if ( sBuilding == 'oil pumper' ) then return AMB.Survival.ShowOilMenu( eObj, sBuilding ) end

    local crafts = Ambi.Survival.buildings_crafts[ sBuilding or '' ]
    nLevel = eObj:GetNWInt( 'Level' )

    if ( nLevel > 5 ) or ( nLevel < 0 ) then return end

    if not crafts then return end
    crafts = crafts[ nLevel ]

    local frame = GUI.DrawFrame( nil, W / 1.4, H / 1.4, 0, 0, sBuilding..' | Level: '..eObj:GetNWInt( 'Level' )..'/5', true, true, true, function( self, w, h ) 
        Draw.Box( w, h, 0, 0, COLOR_PANEL ) 

        if not IsValid( eObj ) then self:Remove() return end
        if not LocalPlayer():Alive() then self:Remove() return end
        if eObj:GetNWBool( 'IsUpdating' ) then self:Remove() return end
    end )
    frame:Center()

    local panel = GUI.DrawScrollPanel( frame, frame:GetWide(), frame:GetTall() - 24, 0, 24, function( self, w, h ) end )

    local w = math.floor( panel:GetWide() / 3 )
    local grid = GUI.DrawGrid( panel, w, 108, 2, 2, 3 )
    for i, recipe in ipairs( crafts ) do
        local craft = Ambi.SimpleInventory.GetCraft( recipe )
        if not craft then continue end

        local rewards = {}
        for class, count in SortedPairs( craft.rewards ) do
            rewards[ #rewards + 1 ] = class
        end

        Ambi.SimpleInventory.DownloadIcon( rewards[ 1 ] )

        local icon = Material( '../data/ambi/cache/simpleinventory/icons/'..Ambi.SimpleInventory.Config.directory_icons..'/'..rewards[ 1 ]..'.png' )
        local panel = GUI.DrawPanel( grid, w - 2, grid:GetRowHeight() - 2, 0, 0, function( self, w, h )
            Draw.Box( w, h, 0, 0, COLOR_PANEL )
            Draw.Text( 64 + 16, 4, craft.name, UI.SafeFont( '26 Arimo' ), C.ABS_WHITE, 'top-left', 1, C.ABS_BLACK )

            if not icon:IsError() then Draw.Material( 64, 64, 16, 4, icon ) end
        end )
        grid:AddItem( panel )

        local amount = 0
        local number = GUI.DrawTextEntry( panel, 64, 26, 4 + 100 + 4, panel:GetTall() - 24 - 4, UI.SafeFont( '24 Arial' ), C.AMBI_BLACK, nil, nil, '1', false, true )
        number:SetValue( 1 )
        number.Think = function( self )
            amount = string.IsValid( self:GetValue() ) and self:GetValue() or 0
            amount = tonumber( amount )
        end

        local crafting = GUI.DrawButton( panel, 100, 24, 4, panel:GetTall() - 24 - 4, nil, nil, nil, function()
            if not amount or ( amount <= 0 ) then return end
            if not LocalPlayer():CanCraft( recipe, amount ) then return end

            net.Start( Ambi.SimpleInventory.Config.net_craft )
                net.WriteString( recipe )
                net.WriteUInt( amount, 16 )
            net.SendToServer()
        end, function( self, w, h )
            Draw.Box( w, h, 0, 0, C.ABS_BLACK )

            local color = LocalPlayer():CanCraft( recipe, amount ) and C.AMBI_GREEN or C.AMBI_RED
            Draw.Text( w / 2, h / 2, 'Craft', '22 Arial', color, 'center' )
        end )

        local ingredients = GUI.DrawScrollPanel( panel, 120, panel:GetTall() - 4, panel:GetWide() - 120 - 4, 4 )
        local j = 0
        
        for class, count in SortedPairs( craft.items ) do
            j = j + 1
            local name = Ambi.SimpleInventory.GetClass( class ).name

            local panel = GUI.DrawButton( ingredients, ingredients:GetWide(), 36, 0, ( 36 + 4 ) * ( j - 1 ), nil, nil, nil, function( self )
            end, function( self, w, h )
                Draw.Box( w, h, 0, 0, COLOR_PANEL, 4, 'all' )

                if not amount then amount = 0 end
                local color = ( LocalPlayer():GetItem( class ) and LocalPlayer():GetItem( class ).count >= count * amount ) and C.AMBI_GREEN or C.AMBI_RED
                Draw.Text( w / 2, h / 2 - 8, name, '22 Arial', color, 'center' )
                Draw.Text( w / 2, h / 2 + 10, 'x'..tostring( count * amount ), UI.SafeFont( '18 Arial' ), color, 'center' )
            end )
            panel:SetCursor( 'arrow' )
            panel:SetTooltip( name.. ' x'..count )
        end
    end

    if ( nLevel == 5 ) then return end
    local update = Ambi.Survival.buildings_updates[ sBuilding or '' ]
    if not update then return end
    
    update = update[ nLevel ]

    local can_update = true
    local tooltip = 'Рецепт для улучшения:\n\n'
    for class, count in SortedPairs( update.items ) do
        local item = LocalPlayer():GetItem( class )
        if not item then can_update = false end

        local class = Ambi.SimpleInventory.GetClass( class )
        if not class then continue end

        tooltip = tooltip..class.name..' = '..count..',\n'
    end

    local color = can_update and C.FLAT_BLUE or C.AMBI_RED
    local button = GUI.DrawButton( frame, 64, 22, frame:GetWide() - 64 - 100, 3, UI.SafeFont( '24 Ambi' ), nil, nil, function()
        if not IsValid( eObj ) then return end
        if ( eObj:GetPos():Distance( LocalPlayer():GetPos() ) > 300 ) then return end
        if ( eObj:GetNWInt( 'Level' ) >= 5 ) then return end

        frame:Remove()

        net.Start( 'amb_survival_update_building' )
            net.WriteEntity( eObj )
        net.SendToServer()
    end, function( self, w, h ) 
        Draw.Box( w, h, 0, 0, COLOR_PANEL, 4, 'all' )
        Draw.Text( w / 2, h / 2, 'Update', UI.SafeFont( '20 Ambi' ), color, 'center', 1, C.ABS_BLACK )
    end )
    button:SetTooltip( tooltip )
end

function Ambi.Survival.ShowOilMenu( eObj, sBuilding )    
    local lvl = eObj:GetNWInt( 'Level' )

    Ambi.SimpleInventory.DownloadIcon( 'combine' )
    Ambi.SimpleInventory.DownloadIcon( 'oil unprocessed' )

    local icon_oil = Material( '../data/ambi/simpleinventory/icons/'..Ambi.SimpleInventory.Config.directory_icons..'/oil unprocessed.png' ) 
    local icon_combine = Material( '../data/ambi/simpleinventory/icons/'..Ambi.SimpleInventory.Config.directory_icons..'/combine.png' )

    local frame = GUI.DrawFrame( nil, W / 1.4, H / 1.4, 0, 0, sBuilding..' | Level: '..lvl..'/5', true, true, true, function( self, w, h ) 
        Draw.Box( w, h, 0, 0, COLOR_PANEL ) 
        Draw.Text( w / 2, 26, 'Сырая Нефть', '64 Arimo', C.ABS_WHITE, 'top-center', 1, C.ABS_BLACK )
        Draw.Text( w / 2, h / 2, math.Round( eObj:GetNWFloat( 'Count' ), 2 ), UI.SafeFont( '64 Ambi' ), C.ABS_WHITE, 'center', 1, C.ABS_BLACK )
        if not icon_oil:IsError() then Draw.Material( 64, 64, w / 2 - 32, 26 + 64, icon_oil ) end
        if not icon_combine:IsError() then Draw.Material( 64, 64, 32, h - 64 - 24, icon_combine ) end

        Draw.Text( 4,  h - 1, 'Combine Inc.', '22 Arimo', C.ABS_WHITE, 'bottom-left', 1, C.ABS_BLACK )

        if not IsValid( eObj ) then self:Remove() return end
        if not LocalPlayer():Alive() then self:Remove() return end
    end )
    frame:Center()

    local turn = GUI.DrawButton( frame, 120, 32, frame:GetWide() / 2 - 120 / 2, frame:GetTall() - 32 - 6, UI.SafeFont( '24 Ambi' ), nil, nil, function()
        if not IsValid( eObj ) then return end
        if ( eObj:GetPos():Distance( LocalPlayer():GetPos() ) > 300 ) then return end
        if timer.Exists( 'AmbStopFloodButtonOilMenu' ) then return end

        timer.Create( 'AmbStopFloodButtonOilMenu', 1, 1, function() end )
        
        net.Start( 'amb_survival_turn_oil' )
            net.WriteEntity( eObj )
        net.SendToServer()
    end, function( self, w, h ) 
        Draw.Box( w, h, 0, 0, COLOR_PANEL, 4, 'all' )
        Draw.Text( w / 2, h / 2, eObj:GetNWBool( 'Turned' ) and 'Выключить' or 'Включить', UI.SafeFont( '26 Ambi' ), eObj:GetNWBool( 'Turned' ) and C.AMBI_BLOOD or C.AMBI_GREEN, 'center', 1, C.ABS_BLACK )
    end )

    local take = GUI.DrawButton( frame, 64, 32, frame:GetWide() / 2 - 32, frame:GetTall() - 32 - 6 - 32 - 4, UI.SafeFont( '24 Ambi' ), nil, nil, function()
        if not IsValid( eObj ) then return end
        if ( eObj:GetPos():Distance( LocalPlayer():GetPos() ) > 300 ) then return end
        if timer.Exists( 'AmbStopFloodButtonOilMenu' ) then return end

        timer.Create( 'AmbStopFloodButtonOilMenu', 1, 1, function() end )
        
        net.Start( 'amb_survival_take_oil' )
            net.WriteEntity( eObj )
        net.SendToServer()
    end, function( self, w, h ) 
        Draw.Box( w, h, 0, 0, COLOR_PANEL, 4, 'all' )
        Draw.Text( w / 2, h / 2, 'Взять', UI.SafeFont( '26 Arimo' ), C.AMBI, 'center', 1, C.ABS_BLACK )
    end )

    if ( nLevel == 5 ) then return end
    local update = Ambi.Survival.buildings_updates[ sBuilding or '' ]
    if not update then return end
    
    update = update[ lvl ]

    local can_update = true
    local tooltip = 'Рецепт для улучшения:\n\n'
    for class, count in SortedPairs( update.items ) do
        local item = LocalPlayer():GetItem( class )
        if not item then can_update = false end

        local class = AMB.SimpleInventory.GetClass( class )
        if not class then continue end

        tooltip = tooltip..class.name..' = '..count..',\n'
    end

    local color = can_update and C.FLAT_BLUE or C.AMBI_RED
    local button = GUI.DrawButton( frame, 64, 22, frame:GetWide() - 64 - 100, 3, UI.SafeFont( '24 Ambi' ), nil, nil, function()
        if not IsValid( eObj ) then return end
        if ( eObj:GetPos():Distance( LocalPlayer():GetPos() ) > 300 ) then return end
        if ( eObj:GetNWInt( 'Level' ) >= 5 ) then return end

        frame:Remove()

        net.Start( 'amb_survival_update_building' )
            net.WriteEntity( eObj )
        net.SendToServer()
    end, function( self, w, h ) 
        Draw.Box( w, h, 0, 0, COLOR_PANEL, 4, 'all' )
        Draw.Text( w / 2, h / 2, 'Update', UI.SafeFont( '20 Arimo' ), color, 'center', 1, C.ABS_BLACK )
    end )
    button:SetTooltip( tooltip )
end