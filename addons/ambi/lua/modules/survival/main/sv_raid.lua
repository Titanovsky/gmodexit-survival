local CLASSES = {
    [ 'prop_physics' ] = true,
    [ 'prop_custom' ] = true,
    [ 'survival_build_oil_refinery' ] = true,
    [ 'survival_build_oil_pumper' ] = true,
    [ 'survival_build' ] = true,
    [ 'sinv_storage' ] = true,
    [ 'prop_vehicle_jeep' ] = true,
    [ 'prop_vehicle_airboat' ] = true,
    [ 'mediaplayer_tv' ] = true,
}

hook.Add( 'EntityTakeDamage', 'Ambi.Survival.RaidRules', function( eObj, dmgInfo )
	if CLASSES[ eObj:GetClass() ] and not dmgInfo:IsExplosionDamage() then return true end

    dmgInfo:ScaleDamage( 4.25 )
    
    if ( eObj:GetClass() == 'prop_custom' ) or ( eObj:GetClass() == 'prop_physics' ) then
        eObj:SetHealth( eObj:Health() - dmgInfo:GetDamage() )
        
        if IsValid( eObj ) and ( eObj:Health() <= 0 ) then return eObj:Remove() end
    end
end )

local CLASSES = {
    [ 'fishing_hook' ] = true,
}

local WEPS = {
    [ 'tfa_rustalpha_stone_hatchet' ] = false,
    [ 'surv_axe_stone' ] = false,
    [ 'surv_axe_copper' ] = false,
    [ 'surv_axe_iron' ] = false,
    [ 'surv_axe_steel' ] = false,
    [ 'surv_axe_titan' ] = false,
    [ 'surv_pickaxe_stone' ] = false,
    [ 'surv_pickaxe_copper' ] = false,
    [ 'surv_pickaxe_iron' ] = false,
    [ 'surv_pickaxe_steel' ] = false,
    [ 'surv_pickaxe_titan' ] = false,
}

hook.Add( 'EntityTakeDamage', 'Ambi.Survival.RaidBlockPlayerDamage', function( eObj, dmgInfo )
    local attacker = dmgInfo:GetAttacker()
    local inf = dmgInfo:GetInflictor()

    if eObj:IsPlayer() and ( attacker:IsPlayer() or attacker:IsNPC() ) and CLASSES[ eObj:GetClass() ] then return true end
	if eObj:IsPlayer() and ( attacker:IsPlayer() or attacker:IsNPC() ) and IsValid( inf ) and WEPS[ inf:GetClass() ] then return true end
end )

hook.Add( 'PlayerUse', 'Ambi.Survival.BlockInfinityAmmo', function( ePly, eObj ) 
    if ( eObj:GetClass() == 'prop_vehicle_jeep' ) then 
        if ( eObj:GetDriver() == NULL ) then 
            timer.Simple( 0.15, function() if IsValid( ePly ) then ePly:EnterVehicle( eObj ) end end )
        end

        return false 
    end
end )