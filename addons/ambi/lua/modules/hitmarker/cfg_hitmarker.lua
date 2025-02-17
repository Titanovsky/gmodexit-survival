Ambi.General.CreateModule( 'HitMarker' )

-- --------------------------------------------------------------------------------------------------------------------------------------------
Ambi.HitMarker.Config.font = '25 Ambi'
Ambi.HitMarker.Config.net_send_client = 'amb_hitmarker_send_client'
Ambi.HitMarker.Config.type = 0
-- 0 - simple count hit ( 10, 43, 90, 20 )
-- 1 - count hit + new count hint ( 10 + 10, 20 + 10, 30 + 40)
-- 2 - count hit every time on different place on screen ( 10 on top, 43 on right, 90 on left, 20 on bottom )

Ambi.HitMarker.Config.exceptions_classes = {
    [ 'bw_teleport' ] = true,
    [ 'bw_pickup' ] = true,
    [ 'arccw_thr_gas' ] = true,
    [ 'arccw_thr_claymore' ] = true,
    [ 'arccw_thr_frag' ] = true,
    [ 'arccw_thr_impact' ] = true,
    [ 'arccw_thr_flare' ] = true,
    [ 'arccw_thr_semtex' ] = true,
    [ 'survival_resource' ] = true,
    [ 'tfa_rustalpha_f1_thrown' ] = true
}