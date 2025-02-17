local C, GUI, Draw, UI = Ambi.Packages.Out( '@d' )
local DrawTextOutline, DrawBox = draw.SimpleTextOutlined, draw.RoundedBox
local W, H = ScrW(), ScrH()

local COLOR_PANEL = Color( 0, 0, 0, 200 )

local function GetCraft( tCraft )
    local i = 0
    for _, class in pairs( tCraft ) do
        i = i + 1
    end

    local j = 0
    for slot, item in ipairs( LocalPlayer():GetItems() ) do
        local craft = tCraft[ item.class ]
        if craft and ( item.count >= craft ) then j = j + 1 end
    end

    return ( i == j )
end

function Ambi.Survival.ShowObjectsMenu( vguiParent ) 
    local frame = GUI.DrawPanel( vguiParent, vguiParent and vguiParent:GetWide() or 800, vguiParent and vguiParent:GetTall() or 800, 0, 0, function( self, w, h ) 
        Draw.Box( w, h, 0, 0, C.AMBI_WHITE )
    end )

    local props = GUI.DrawScrollPanel( frame, frame:GetWide() - 20, frame:GetTall() - 16, 10, 8, function( self, w, h ) end )
    local grid = GUI.DrawGrid( props, 260, 76, 0, 0, 3 )

    for name, prop in SortedPairs( Ambi.Survival.objects, 'category' ) do
        local i = 0
        for _, v in pairs( prop.craft ) do i = i + 1 end

        local j = 0
        local tooltip = name..'\n\n'..prop.desc..'\n\n'
        for class, count in SortedPairs( prop.craft ) do
            local item = Ambi.SimpleInventory.GetClass( class )
            if not item then continue end

            local name = item.name

            j = j + 1
            local endmark = ( j >= i ) and '' or ',\n'
            tooltip = tooltip..name..' x'..count..endmark
        end

        local panel = GUI.DrawPanel( grid, grid:GetColWide() - 2, 72, 0, 0, function( self, w, h ) 
            local color = GetCraft( prop.craft ) and C.AMBI_GREEN or C.AMBI_RED

            Draw.Box( w, 2, 0, h - 2, color ) 
            Draw.Box( w, 2, 0, 0, color )
            Draw.Box( 2, h, 0, 0, color )
            Draw.Box( 2, h, w - 2, 0, color )

            Draw.Text( w / 2, 4, name, UI.SafeFont( '22 Ambi' ), color, 'top-center', 1, C.ABS_BLACK )
        end )
        panel:SetTooltip( tooltip)

        local model = vgui.Create( 'ModelImage', panel )
        model:SetSize( 64, 64 )
        model:SetPos( 0 + 6, 0 )
        model:SetModel( prop.model )

        grid:AddItem( panel )

        local craft = GUI.DrawButton( panel, panel:GetWide(), panel:GetTall(), 0, 0, nil, nil, nil, function()
            if not GetCraft( prop.craft ) then return end

            net.Start( 'amb_survival_craft_obj' )
                net.WriteString( name )
            net.SendToServer()
            surface.PlaySound( 'buttons/button14.wav' )
        end, function( self, w, h ) end )-- workaround
    end

    return frame
end
concommand.Add( 'ambi_surv_objects', function()
    local background = GUI.DrawFrame( nil, W / 1.4, H / 1.4, 0, 0, '', true, true, true, function( self, w, h ) Draw.Box( w, h, 0, 0, COLOR_PANEL ) end )
    background:Center()
    background.OnKeyCodePressed = function( self, nKey )
        if ( nKey == KEY_I ) or ( nKey == KEY_SPACE ) or ( nKey == KEY_ENTER ) then background:Remove() end
    end

    local canvas = GUI.DrawPanel( background, background:GetWide(), background:GetTall() - 22, 0, 22, function() end )

    Ambi.Survival.ShowObjectsMenu( canvas )
end )

function Ambi.Survival.ShowPropsMenu( vguiParent )
    local frame = GUI.DrawPanel( vguiParent, vguiParent and vguiParent:GetWide() or 800, vguiParent and vguiParent:GetTall() or 800, 0, 0, function( self, w, h ) 
        Draw.Box( w, h, 0, 0, C.AMBI_WHITE )
    end )

    local props = GUI.DrawScrollPanel( frame, frame:GetWide() - 20, frame:GetTall() - 16, 10, 8, function( self, w, h ) end )
    local grid = GUI.DrawGrid( props, 80, 76, 0, 0, 9 )

    local count = 0
    for name, prop in SortedPairs( Ambi.Survival.props, 'category' ) do
        local i = 0
        for _, v in pairs( prop.craft ) do i = i + 1 end

        local j = 0
        local tooltip = name..'\n\n'
        for class, count in SortedPairs( prop.craft ) do
            if not Ambi.SimpleInventory.GetClass( class ) then continue end
            local name = Ambi.SimpleInventory.GetClass( class ).name

            j = j + 1
            local endmark = ( j >= i ) and '' or ',\n'
            tooltip = tooltip..name..' x'..count..endmark
        end

        count = count + 1
        local _count = count
        local panel = GUI.DrawPanel( grid, 72, 72, 0, 0, function( self, w, h ) 
            local color = GetCraft( prop.craft ) and C.AMBI_GREEN or C.AMBI_RED

            Draw.Box( w, 2, 0, h - 2, color ) 
            Draw.Box( w, 2, 0, 0, color )
            Draw.Box( 2, h, 0, 0, color )
            Draw.Box( 2, h, w - 2, 0, color )

            Draw.Text( 4, 2, _count, UI.SafeFont( '12 Ambi' ), C.AMBI_BLACK, 'top-left' )
        end )
        panel:SetTooltip( tooltip)

        local model = vgui.Create( 'ModelImage', panel )
        model:SetSize( 64, 64 )
        model:SetPos( panel:GetWide() / 2 - 32, panel:GetTall() / 2 - 32 )
        model:SetModel( prop.model )

        grid:AddItem( panel )

        local craft = GUI.DrawButton( panel, panel:GetWide(), panel:GetTall(), 0, 0, nil, nil, nil, function()
            if not GetCraft( prop.craft ) then return end

            net.Start( 'amb_survival_craft_prop' )
                net.WriteString( name )
            net.SendToServer()
            surface.PlaySound( 'buttons/button14.wav' )
        end, function( self, w, h ) end )-- workaround
    end

    return frame
end
concommand.Add( 'ambi_surv_props', function()
    local background = GUI.DrawFrame( nil, W / 1.4, H / 1.4, 0, 0, '', true, true, true, function( self, w, h ) Draw.Box( w, h, 0, 0, COLOR_PANEL ) end )
    background:Center()
    background.OnKeyCodePressed = function( self, nKey )
        if ( nKey == KEY_I ) then background:Remove() end
    end

    Ambi.Survival.ShowPropsMenu( background )
end )

local function SetMenuTab()
    g_SpawnMenu.CreateMenu.Items[ 1 ].Panel:GetChildren()[ 1 ] = Ambi.Survival.ShowObjectsMenu( g_SpawnMenu.CreateMenu.Items[ 1 ].Panel:GetChildren()[ 1 ] )
    g_SpawnMenu.CreateMenu.Items[ 2 ].Panel:GetChildren()[ 1 ] = Ambi.Survival.ShowPropsMenu( g_SpawnMenu.CreateMenu.Items[ 2 ].Panel:GetChildren()[ 1 ] )
end
concommand.Add( 'ambi_surv_refresh_menu', SetMenuTab )

spawnmenu.AddCreationTab( 'Buildings', function() return Ambi.Survival.ShowObjectsMenu() end, 'icon16/star.png', -500 )
spawnmenu.AddCreationTab( 'Props', function() return Ambi.Survival.ShowPropsMenu() end, 'icon16/package.png', -499 )
hook.Add( 'PlayerInitialSpawn', 'Ambi.Survival.SetSpawnMenuTab', SetMenuTab )

--[[
    --for Autorefresh
g_SpawnMenu.CreateMenu.Items[ 2 ].Panel:GetChildren()[ 1 ] = CreateFrame( g_SpawnMenu.CreateMenu.Items[ 2 ].Panel )
local parent = g_SpawnMenu.CreateMenu.Items[ 2 ].Panel
g_SpawnMenu.CreateMenu.Items[ 2 ].Panel:GetChildren()[ 1 ] = frame
]]--