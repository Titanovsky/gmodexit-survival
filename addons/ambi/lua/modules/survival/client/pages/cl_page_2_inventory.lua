local C, GUI, Draw = AMB.Ambition.Global.Colors, AMB.UI.GUI, AMB.UI.Draw
-- local Add = AMB.Framework.MainMenu.AddPage

-- AMB.Framework.MainMenu.AddPage( 2, 'Инвентарь', function( vguiCanvas )
--     local w, h = vguiCanvas:GetWide(), vguiCanvas:GetTall()

--     local inventory = GUI.DrawPanel( vguiCanvas, w / 2, h, 0, 0, function( self, w, h ) end )
--     AMB.SimpleInventory.ShowInventory( inventory )

--     local craft = GUI.DrawPanel( vguiCanvas, inventory:GetWide() - 2, h, inventory:GetWide() + 2, 0, function( self, w, h ) end )
--     AMB.SimpleInventory.ShowCrafting( craft, LocalPlayer():GetCrafts() )
-- end )