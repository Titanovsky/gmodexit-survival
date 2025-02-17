local C, GUI, Draw = AMB.Ambition.Global.Colors, AMB.UI.GUI, AMB.UI.Draw
-- local Add = AMB.Framework.MainMenu.AddPage

-- AMB.Framework.MainMenu.AddPage( 1, 'Главное', function( vguiCanvas )
--     local w, h = vguiCanvas:GetWide(), vguiCanvas:GetTall()

--     local frame = GUI.DrawPanel( vguiCanvas, w, h, 0, 0, function( self, w, h ) 
--         --Draw.Box( w, h, 0, 0, C.AMB_RED )

--         Draw.Text( 4, 4, LocalPlayer():Gamename(), '32 Arial', C.ABS_BLACK, 'top-left' )
--         Draw.Text( 4, 40, 'Level: '..LocalPlayer():GetLevel()..'  ['..LocalPlayer():GetXP()..' / '..LocalPlayer():GetNextXP()..']', '24 Arial', C.ABS_BLACK, 'top-left' )
--     end )
-- end )