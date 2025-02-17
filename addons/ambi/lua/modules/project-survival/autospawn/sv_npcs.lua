local Add = Ambi.AutoSpawn.Add

local MAP = 'gm_amb_remeselnik_island'

------------------------------------------------------------------------------------------
Add( 'quest giver', 'quest_giver', 'Для квеста', MAP, Vector( 3780, -11856, -360 ), Angle( 0, 90, 0 ) )

------------------------------------------------------------------------------------------
local SHOP = {
    { sale = 'wood', sale_count = 2,    purchase = 'coin', purchase_count = 1 },
    { sale = 'stone', sale_count = 1,   purchase = 'coin', purchase_count = 2 },
    { sale = 'copper', sale_count = 1,  purchase = 'coin', purchase_count = 4 },
    { sale = 'iron', sale_count = 1,    purchase = 'coin', purchase_count = 8 },
    { sale = 'steel', sale_count = 1,   purchase = 'coin', purchase_count = 25 },
    { sale = 'apple', sale_count = 1,   purchase = 'coin', purchase_count = 5 },

    { sale = 'coin', sale_count = 20, purchase = 'steel', purchase_count = 1 },
    { sale = 'coin', sale_count = 4, purchase = 'iron', purchase_count = 1 },
    { sale = 'coin', sale_count = 1, purchase = 'wood', purchase_count = 20 },
    { sale = 'coin', sale_count = 1, purchase = 'stone', purchase_count = 15 },
}

Add( 'trader1', 'survival_trader', 'Первый продавец', MAP, Vector( 5331, -10667, -400 ), Angle( 0, -90, 0 ), function( eObj ) 
    Ambi.Survival.AddTrader( eObj, SHOP )
end )

------------------------------------------------------------------------------------------
local MAP = 'gm_rhine'

Add( 'quest giver', 'quest_giver', 'Для квеста', MAP, Vector( -8319, -1806, -15877 ), Angle( 0, 0, 0 ) )
Add( 'trader1', 'survival_trader', 'Первый продавец', MAP, Vector( -8047, -1463, -15878 ), Angle( 0, 90, 0 ), function( eObj ) 
    Ambi.Survival.AddTrader( eObj, SHOP )
end )