local C, UT = Ambi.General.Global.Colors, Ambi.General.Utility

local PLAYER = FindMetaTable( 'Player' )

function PLAYER:DropWeapon( sWeapon )
    local wep = Ambi.Survival.Config.drop_weapons_convert[ sWeapon or '' ]
    if not wep then return end
    
    if ( sWeapon == 'tfa_rustalpha_stone_hatchet' ) then self:StripWeapon( 'tfa_rustalpha_stone_hatchet' ) return end

    local pos, ang = UT.GetFrontPos( self, 44 ), self:EyeAngles()
    local ent = ents.Create( 'sinv_item' )
    ent:SetPos( pos )
    ent:SetAngles( ang )
    ent:Spawn()
    ent:SetHeader( wep.weapon )
    ent:SetItem( wep.weapon, 1 )
    ent:CPPISetOwner( self )

    local primary = self:GetWeapon( sWeapon ):GetPrimaryAmmoType()
    local clip1, clip2 = self:GetWeapon( sWeapon ):Clip1(), self:GetAmmoCount( primary )
    if not clip1 or ( clip1 < 0 ) then clip1 = 0 end
    if not clip2 or ( clip2 < 0 ) then clip2 = 0 end

    if wep.ammo and ( clip1 + clip2 > 0 ) then
        local ent = ents.Create( 'sinv_item' )
        ent:SetPos( pos )
        ent:SetAngles( ang )
        ent:Spawn()
        ent:SetHeader( wep.ammo )
        ent:SetItem( wep.ammo, clip1 + clip2 )
        ent:CPPISetOwner( self )

        self:SetAmmo( 0, primary )

        timer.Create( 'AmbSimpleInventoryDropItem:'..tostring( ent ), 60 * 6, 1, function()
            if IsValid( ent ) then ent:Remove() end
        end )
    elseif ( sWeapon == 'tfa_rustalpha_f1_grenade' ) then
        ent:SetItem( wep.weapon, self:GetAmmoCount( 10 ) + clip1 )
        self:SetAmmo( 0, 10 )
    end

    self:StripWeapon( sWeapon )

    timer.Create( 'AmbSimpleInventoryDropItem:'..tostring( ent ), 60 * 6, 1, function()
        if IsValid( ent ) then ent:Remove() end
    end )
end

util.AddNetworkString( 'amb_survival_drop_weapon' )
net.Receive( 'amb_survival_drop_weapon', function( _, ePly )
    if not IsValid( ePly ) or not ePly:Alive() then return end
    
    local wep = ePly:GetActiveWeapon()
    if not IsValid( wep ) then return end

    ePly:DropWeapon( wep:GetClass() )
end )