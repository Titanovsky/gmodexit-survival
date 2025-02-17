local C = Ambi.General.Global.Colors

-- ---------------------------------------------------------------------------------------------------- --
local Add = Ambi.Survival.AddNPCType

local TYPE = 'zombie_x18_toxic'
local COLOR = Color( 64, 121, 55, 255 )
Add( TYPE, 'npc_fastzombie', function( eNPC )
    eNPC:SetColor( COLOR )
    eNPC:SetModelScale( 0.75 )
    eNPC:SetHealth( 5000 )
    eNPC.multiply_damage = 1.5
    eNPC.type_animal = TYPE
    eNPC:SetNWInt( 'Level', 1 )
    eNPC:SetBodygroup( 0, 0 )
end )

local TYPE = 'zombie_x18_fried'
local COLOR = Color( 255, 187, 0, 255 )
Add( TYPE, 'npc_fastzombie', function( eNPC )
    eNPC:SetColor( COLOR )
    eNPC:SetHealth( 5000 )
    eNPC.multiply_damage = 1.5
    eNPC.fire_damage = true
    eNPC.type_animal = TYPE
    eNPC:SetNWInt( 'Level', 1 )
    eNPC:SetBodygroup( 0, 0 )
    eNPC:SetColor( COLOR )
    eNPC:SetMaterial( 'phoenix_storms/plastic' )
end )

hook.Add( 'EntityTakeDamage', 'Ambi.Survival.SettingDamageNPCS', function( eTarget, dmgInfo )
    local attacker = dmgInfo:GetAttacker()
    if not IsValid( attacker ) or not attacker:IsNPC() then return end

    if attacker.fire_damage and IsValid( eTarget ) and eTarget:IsPlayer() and eTarget:Alive() then eTarget:Ignite( 1, 5 ) end
    if attacker.multiply_damage and IsValid( eTarget ) and eTarget:IsPlayer() and eTarget:Alive() then 
        dmgInfo:SetDamage( dmgInfo:GetDamage() * attacker.multiply_damage )
    end
end )

-- ---------------------------------------------------------------------------------------------------- --
local Add = Ambi.Survival.AddNPCPoint

local MAP = 'gm_amb_remeselnik_island'

Add( 'x18_big_rt1', MAP, Vector( 12308, -5090, -4229 ), {  
    { delay = 500, type = 'zombie_x18_toxic' },
} )

Add( 'x18_big_rt2', MAP, Vector( 10433, -5809, -4221 ), {  
    { delay = 500, type = 'zombie_x18_toxic' },
} )

Add( 'x18_big_rt3', MAP, Vector( 10947, -3975, -4245 ), {  
    { delay = 500, type = 'zombie_x18_toxic' },
} )

Add( 'x18_big_rt4', MAP, Vector( 8950, -2942, -3290 ), {  
    { delay = 500, type = 'zombie_x18_toxic' },
} )

Add( 'x18_big_rt5', MAP, Vector( 8580, -1400, -3294 ), {  
    { delay = 500, type = 'zombie_x18_toxic' },
} )

local MAP = 'gm_rhine'

Add( 'x18_big_rt1', MAP, Vector( -2682, 8510, -15621 ), {  
    { delay = 500, type = 'zombie_x18_toxic' },
} )

Add( 'x18_big_rt2', MAP, Vector( -3854, 8496, -15630 ), {  
    { delay = 500, type = 'zombie_x18_toxic' },
} )

Add( 'x18_big_rt3', MAP, Vector( -4450, 9354, -15619 ), {  
    { delay = 500, type = 'zombie_x18_toxic' },
} )

Add( 'x18_big_rt4', MAP, Vector( -5286, 9218, -15657 ), {  
    { delay = 500, type = 'zombie_x18_toxic' },
} )

Add( 'x18_big_rt5', MAP, Vector( -3977, 9375, -15505 ), {  
    { delay = 500, type = 'zombie_x18_toxic' },
} )

-------------------------------------------------------------------------------------------------------
local function AddZombie( nCount, vPos )
    Add( 'x18_zombie'..nCount, MAP, vPos, {  
        { delay = 500, type = 'zombie_x18_toxic' },
        { delay = 500, type = 'zombie_x18_fried' },
    } )
end

local MAP = 'gm_amb_remeselnik_island'

AddZombie( 1, Vector( 9988, -7810, -6663 ) )
AddZombie( 2, Vector( 10316, -7810, -6663  ) )
AddZombie( 3, Vector( 10897, -7811, -6664 ) )
AddZombie( 4, Vector( 11325, -7809, -6664 ) )
AddZombie( 5, Vector( 11793, -7807, -6664 ) )
AddZombie( 6, Vector( 13172, -7825, -6665 ) )
AddZombie( 7, Vector( 12719, -7815, -6660 ) )
AddZombie( 8, Vector( 12086, -7799, -6670 ) )
AddZombie( 9, Vector( 12067, -7248, -6667 ) )
AddZombie( 10, Vector( 12368, -7235, -6667 ) )
AddZombie( 11, Vector( 11801, -7187, -6668 ) )
AddZombie( 12, Vector( 11790, -6732, -6664 ) )
AddZombie( 13, Vector( 11777, -6187, -6669 ) )
AddZombie( 14, Vector( 12382, -6737, -6670 ) )
AddZombie( 15, Vector( 12558, -6276, -6663 ) )
AddZombie( 16, Vector( 12226, -6162, -6665 ) )

local MAP = 'gm_rhine'

AddZombie( 1, Vector( -4526, 9285, -16081 ) )
AddZombie( 2, Vector( -4541, 9643, -16075  ) )
AddZombie( 3, Vector( -4094, 9755, -16077 ) )
AddZombie( 4, Vector( -4078, 9172, -16074 ) )
AddZombie( 5, Vector( -3450, 9475, -16074 ) )
AddZombie( 6, Vector( -3434, 10378, -16069 ) )
AddZombie( 7, Vector( -3743, 10126, -16075 ) )
AddZombie( 8, Vector( -3443, 10088, -16066 ) )
AddZombie( 9, Vector( -3804, 10706, -16069 ) )
AddZombie( 10, Vector( -3784, 8642, -16080 ) )
AddZombie( 11, Vector( -3454, 8358, -16073 ) )
AddZombie( 12, Vector( -3512, 8826, -16076 ) )
AddZombie( 13, Vector( -4013, 8369, -16082 ) )
AddZombie( 14, Vector( -4308, 8799, -16072 ) )
AddZombie( 15, Vector( -4182, 10246, -16075 ) )
AddZombie( 16, Vector( -4150, 10638, -16080 ) )