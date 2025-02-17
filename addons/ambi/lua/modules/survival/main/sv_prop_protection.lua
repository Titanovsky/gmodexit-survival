local classes = {
    [ 'prop_physics' ] = true,
    [ 'prop_dynamic' ] = true,
    [ 'prop_custom' ] = true,
    [ 'survival_build' ] = true,
    [ 'survival_build_oil_pumper' ] = true,
    [ 'sinv_storage' ] = true,
    [ 'survival_build_sleeping_bag' ] = true
}

hook.Add( 'PlayerSpawnedProp', 'Ambi.Survival.PropProtection', function( ePly, sMdl, eObj )
    if not Ambi.Survival.Config.optimization_prop_freeze_on_spawn then return end

    local phys = eObj:GetPhysicsObject()
    if IsValid( phys ) then phys:EnableMotion( false ) end

    eObj:SetCustomCollisionCheck( true )
end )

hook.Add( 'ShouldCollide', 'Ambi.Survival.PropProtection', function( eObj1, eObj2 )
    if not Ambi.Survival.Config.optimization_prop_no_collide_to_prop then return end
    if classes[ eObj1:GetClass() ] and classes[ eObj2:GetClass() ] then return false end
end )

hook.Add( 'OnPhysgunPickup', 'Ambi.Survival.PropProtection', function( ePly, eObj )
    if not Ambi.Survival.Config.optimization_prop_safe_on_pickup then return end
    if not IsValid( eObj ) or not classes[ eObj:GetClass() ] then return end

    eObj.old_collision, eObj.old_material = eObj.old_collision or eObj:GetCollisionGroup(), eObj.old_material or eObj:GetMaterial()

    eObj:SetCollisionGroup( COLLISION_GROUP_WORLD )
    eObj:SetMaterial( 'models/wireframe' )
end )

hook.Add( 'PhysgunDrop', 'Ambi.Survival.PropProtection', function( ePly, eObj )
    if not Ambi.Survival.Config.optimization_prop_safe_on_drop then return end
    if not IsValid( eObj ) or not classes[ eObj:GetClass() ] then return end

    eObj:GetPhysicsObject():EnableMotion( false )

    local around_entities = ents.FindInSphere( eObj:LocalToWorld( eObj:OBBCenter() ), eObj:BoundingRadius() )
    for _, ent in ipairs( around_entities ) do
        if ent:IsPlayer() then return false end
    end

    if ( eObj.old_collision == COLLISION_GROUP_WORLD ) then eObj.old_collision = 0 end

    eObj:SetCollisionGroup( eObj.old_collision or 0 )
    eObj:SetMaterial( eObj.old_material or '' )
    eObj.old_collision, eObj.old_material = nil
end )