net.AddString( 'ambi_hitmarker_send_client' )

hook.Add( 'PostEntityTakeDamage', 'Ambi.HitMarker.Send', function( eObj, dmgInfo )
    if not IsValid( eObj ) then return end
    if ( dmgInfo:GetDamageType() == DMG_CRUSH ) then return end

    local exception = Ambi.HitMarker.Config.exceptions_classes
    if exception[ eObj:GetClass() ] then return end

    local attacker = dmgInfo:GetAttacker()
    if not IsValid( attacker ) or not attacker:IsPlayer() then return end

    local count = math.floor( dmgInfo:GetDamage() )
    if ( count < 1 ) then return end

    local type = dmgInfo:GetDamageType()
    local is_dead = ( eObj:Health() <= 0 ) and true or false
    local is_headshot = false
    if eObj:IsPlayer() then is_headshot = ( eObj:LastHitGroup() == 1 ) and true or false end

    net.Start( 'ambi_hitmarker_send_client' )
        net.WriteUInt( count, 16 )
        net.WriteBit( is_dead )
        net.WriteBit( is_headshot )
    net.Send( attacker )
end )