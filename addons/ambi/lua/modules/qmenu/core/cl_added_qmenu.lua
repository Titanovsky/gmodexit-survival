local C, GUI = Ambi.General.Global.Colors, AMB.UI.GUI
local CFG = Ambi.QMenu.Config
local DrawBox, DrawText, DrawTextOutline = draw.RoundedBox, draw.SimpleText, draw.SimpleTextOutlined

-- ## Tools ############################################

hook.Add( 'AmbitionAccountAuthorization', 'AMB.QMenu.AddTools', function()
    --[[
    local toolPanelList = g_SpawnMenu.ToolMenu.ToolPanels[1].List
    local categories = toolPanelList.pnlCanvas:GetChildren()
    local construction = categories[ 2 ]:GetChildren()
    local render = categories[ 4 ]:GetChildren()
    local building = categories[ 5 ]:GetChildren()

    building[ 1 ]:SetText( '' )
    building[ 1 ].Paint = function( self, w, h ) 
        draw.RoundedBox( 4, 0, 0, w, h, C.AMB_BLUE )
        draw.SimpleTextOutlined( 'Строительство', '16 Arial Bold', w / 2, h / 2, C.AMB_WHITE, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER, 1, C.ABS_BLACK )
    end

    for i, panel in ipairs( building ) do
        panel:SetTextColor( C.AMB_BLACK )
        panel:SetFont( '14 Arial' )
    end
    ]]--
end )