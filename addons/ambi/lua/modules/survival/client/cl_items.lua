local C, GUI, Draw, UI = Ambi.Packages.Out( '@d' )
local w, h = ScrW(), ScrH()

local function ShowClasses()
    local ww, hh = w / 1.2, h / 1.2
    local i = 0

    local frame = GUI.DrawFrame( nil, ww, hh, w / 2 - ww / 2, h / 2 - hh / 2, '', true, true, true, function( self, w, h )
        Draw.Box( w, h, 0, 0, C.AMBI_BLACK )

        Draw.Text( 4, 4, 'Всего: '..i, UI.SafeFont( '22 Arial' ), C.ABS_WHITE, 'top-left' )
    end )

    local list = GUI.DrawScrollPanel( frame, frame:GetWide(), frame:GetTall() - 32 - 4, 0, 32 )

    local count = 0
    for class, info in SortedPairsByMemberValue( Ambi.SimpleInventory.classes, 'category' ) do
        i = i + 1

        Ambi.SimpleInventory.DownloadIcon( class )
        local icon = Material( '../data/ambi/cache/simpleinventory/icons/'..Ambi.SimpleInventory.Config.directory_icons..'/'..class..'.png' )
        
        local j = i
        local panel = GUI.DrawPanel( list, 1200, 100, 4, ( 100 + 4 ) * ( i - 1 ), function( self, w, h )
            Draw.Box( w, h, 0, 0, C.PANEL )
            Draw.Text( 4, 4, class..' | '..info.name..'  |  '..info.category, UI.SafeFont( '22 Arial' ), ( j % 2 == 0 ) and C.FLAT_BLUE or C.AMBI, 'top-left' )

            if not icon:IsError() then Draw.Material( 64, 64, 4, h - 64 - 4, icon ) end
        end )
    end
end
concommand.Add( 'ambi_surv_items', ShowClasses )