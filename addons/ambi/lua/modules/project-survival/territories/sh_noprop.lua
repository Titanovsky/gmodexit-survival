local C = Ambi.Ambition.Global.Colors
local Add = Ambi.Territory.AddChunk

local TYPE = 'noprop'
local MAP = 'gm_amb_remeselnik_island'

Add( 'island spawns1', '', TYPE, MAP, Vector( 1837, -8938, -1400 ), Vector( 6266, -13685, 11 ), C.ABS_WHITE )
Add( 'desert spawns', '', TYPE, MAP, Vector( 7004, -15831, -4848 ), Vector( 4221, -15161, -4635 ), C.ABS_WHITE )
Add( 'snow spawns', '', TYPE, MAP, Vector( 6922, -11563, -6552 ), Vector( 6228, -11209, -6378 ), C.ABS_BLACK )
Add( 'snow teleport', '', TYPE, MAP, Vector( 5437, -229, -4848 ), Vector( 6296, -707, -4698 ), C.ABS_WHITE )

Add( 'small rt', '', TYPE, MAP, Vector( 7873, -14093, -4848 ), Vector( 5000, -11077, -4181 ), C.FLAT_GREEN )
Add( 'medium rt', '', TYPE, MAP, Vector( 11216, -13747, -4848 ), Vector( 15013, -10027, -4060 ), C.FLAT_BLUE )
Add( 'big rt', '', TYPE, MAP, Vector( 13360, -8521, -4847 ), Vector( 7468, -233, -2718 ), C.FLAT_RED )
Add( 'x18', '', TYPE, MAP, Vector( 9859, -11417, -6717 ), Vector( 14556, -5476, -6036 ), C.AMBI_BLOOD )

local MAP = 'gm_rhine'

Add( 'small rt', '', TYPE, MAP, Vector( 9358, 1760, -15900 ), Vector( 7280, 3880, -15694 ), C.FLAT_GREEN )
Add( 'medium rt', '', TYPE, MAP, Vector( -7695, 2894, -16900 ), Vector( -4941, 4629, -15142 ), C.FLAT_BLUE )
Add( 'big rt', '', TYPE, MAP, Vector( -7440, 8080, -16200 ), Vector( -1766, 11000, -15134 ), C.FLAT_RED )