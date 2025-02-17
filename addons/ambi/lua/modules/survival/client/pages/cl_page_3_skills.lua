local C, GUI, Draw = AMB.Ambition.Global.Colors, AMB.UI.GUI, AMB.UI.Draw
-- local Add = AMB.Framework.MainMenu.AddPage

-- AMB.Framework.MainMenu.AddPage( 3, 'Навыки', function( vguiCanvas )
--     local w, h = vguiCanvas:GetWide(), vguiCanvas:GetTall()

--     local skills = GUI.DrawScrollPanel( vguiCanvas, w, h, 0, 0, function( self, w, h ) end )

--     local i = 0
--     for header, skill in SortedPairsByMemberValue( AMB.Survival.GetSkills(), 'category' ) do
--         i = i + 1

--         local panel = GUI.DrawPanel( skills, skills:GetWide(), 74, 4, ( 74 + 1 ) * ( i - 1 ), function( self, w, h )
--             --Draw.Box( w, h, 0, 0, C.AMB_GRAY, 4, 'all' )
--             Draw.Text( w / 2, 0, skill.name, '24 Arial', C.ABS_BLACK, 'top-center' )

--             Draw.Text( w / 2, 28, LocalPlayer():GetSkill( header ), '20 Arial Bold', C.ABS_BLACK, 'top-center' )
--         end )

--         local skill, xp, max = LocalPlayer():GetSkill( header ), LocalPlayer():GetSkillXP( header ), LocalPlayer():GetSkillXPMax( header )

--         local panel_max_w = math.floor( panel:GetWide() / 1.4 )
--         local panel_max = GUI.DrawPanel( panel, panel_max_w, 20, panel:GetWide() / 2 - panel_max_w / 2, panel:GetTall() - 20 - 4, function( self, w, h ) 
--             Draw.Box( w, h, 0, 0, ( skill == 10 ) and C.FLAT_BLUE or C.ABS_WHITE )

--             Draw.Box( w, 2, 0, 0, C.ABS_BLACK ) -- top
--             Draw.Box( w, 2, 0, h - 2, C.ABS_BLACK ) -- bottom
--             Draw.Box( 2, h - 2, 0, 2, C.ABS_BLACK ) -- left
--             Draw.Box( 2, h - 2, w - 2, 2, C.ABS_BLACK ) -- right
--         end )

--         if ( skill >= 10 ) then continue end
        
--         local text_xp = GUI.DrawPanel( panel, 100, 22, panel:GetWide() / 2 - panel_max_w / 2 - 100 - 4, panel:GetTall() - 20 - 4, function( self, w, h )
--             Draw.Text( w - 1, 0, xp, '22 Arial', C.ABS_BLACK, 'top-right' )
--         end )

--         local text_max = GUI.DrawPanel( panel, 100, 22, panel:GetWide() / 2 - panel_max_w / 2 + panel_max_w + 2, panel:GetTall() - 20 - 4, function( self, w, h )
--             Draw.Text( 0, 0, max, '22 Arial', C.ABS_BLACK, 'top-left' )
--         end )

--         -- w = 200
--         -- xp = 300
--         -- max = 600
--         -- 1: max / xp = 600 / 300 = 2
--         -- 2: w 
--         local panel_xp_w = panel_max_w / ( max / xp )
--         local panel_xp = GUI.DrawPanel( panel_max, panel_xp_w, 16, 2, 2, function( self, w, h ) 
--             Draw.Box( w, h, 0, 0, C.AMB_GREEN )
--         end )
--     end
-- end )