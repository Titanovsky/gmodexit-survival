Ambi.Statistic.Survey = Ambi.Statistic.Survey or {}
Ambi.Statistic.Survey.table = Ambi.Statistic.Survey.table or {}

local C, GUI, Draw, UI, CL = Ambi.Packages.Out( '@d, ContentLoader' )
local W, H = ScrW(), ScrH()

local COLOR_BACKGROUND = ColorAlpha( C.ABS_BLACK, 230 )
local COLOR_ANSWER = ColorAlpha( C.AMBI_GREEN, 200 )

-- --------------------------------------------------------------------------------------------------------------------------------------------
function Ambi.Statistic.Survey.CallQuestion( nID )
    if not Ambi.Statistic.Survey.Get( nID ) then return end

    local tab = Ambi.Statistic.Survey.Get( nID )
    local text = tab.question

    local frame = Ambi.UI.GUI.DrawFrame( nil, W / 2, H / 2, 0, 0, '', true, true, true, function( self, w, h ) 
        draw.RoundedBox( 0, 0, 0, w, h, COLOR_BACKGROUND )
        draw.SimpleTextOutlined( text, UI.SafeFont( '28 Ambi Bold' ), w / 2, 24, C.ABS_WHITE, TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP, 1, C.ABS_BLACK )
    end )
    frame:Center()

    local panel = GUI.DrawScrollPanel( frame, frame:GetWide() - 8, frame:GetTall() - 72, 4, 64 )
    for id, answer_info in ipairs( tab.answers ) do
        local answer = GUI.DrawPanel( nil, panel:GetWide(), 46, 0, ( 46 + 2 ) * ( id - 1 ), function( self, w, h )
            draw.RoundedBox( 0, 0, 0, w, h, COLOR_BACKGROUND )
            draw.SimpleTextOutlined( id..'.  '..answer_info.answer, UI.SafeFont( '20 Ambi' ), 4, h / 2, C.ABS_WHITE, TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER, 1, C.ABS_BLACK )
        end )
        panel:AddItem( answer )

        surface.SetFont( UI.SafeFont( '20 Ambi' ) )
        local x_size, _ = surface.GetTextSize( id..'.  '..answer_info.answer )

        local send = GUI.DrawButton( answer, 24, 24, 4 + x_size + 4, answer:GetTall() / 2 - 24 / 2, nil, nil, nil, function()
            net.Start( 'ambi_statistic_survey_ready_answer' )
                net.WriteUInt( nID, 8 )
                net.WriteUInt( id, 4 )
            net.SendToServer()

            frame:Remove()
        end, function( self, w, h ) 
            draw.RoundedBox( 4, 0, 0, w, h, COLOR_ANSWER )
            draw.SimpleTextOutlined( '+', UI.SafeFont( '28 Ambi' ), w / 2, h / 2, C.ABS_WHITE, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER, 1, C.ABS_BLACK )
        end )
    end
end