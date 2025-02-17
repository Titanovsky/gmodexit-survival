local C, GUI, Draw, UI = Ambi.Packages.Out( '@d' )
local CFG = Ambi.Survival.Config

CreateClientConVar( 'ambi_surv_3d2d_players_enable', 1, true, false, 'Включить/Выключить рендер информаций об игроках' )
CreateClientConVar( 'ambi_surv_3d2d_players_max_dist', 1600, true, false, 'Максимальная дистанция рендера', 72, 3200 )

hook.Add( 'PostPlayerDraw', 'Ambi.Survival.Client.Render3D2DPlayers', function( ePly )
    if ( GetConVar( 'ambi_surv_3d2d_players_enable' ):GetInt() == 0 ) then return end
    if ( LocalPlayer():GetPos():Distance( ePly:GetPos() ) > GetConVar( 'ambi_surv_3d2d_players_max_dist' ):GetInt() ) then return end
    if ( ePly == LocalPlayer() ) then return end
    if not ePly:Alive() then return end

    local _,max = ePly:GetRotatedAABB( ePly:OBBMins(), ePly:OBBMaxs() )
    local rot = ( ePly:GetPos() - EyePos() ):Angle().yaw - 90
    local head_bone = ePly:LookupBone( 'ValveBiped.Bip01_Head1' ) or 1
    local head = ePly:GetBonePosition( head_bone ) + Vector( 0, 0, 14 ) or ePly:LocalToWorld( ePly:OBBCenter() ) + Vector( 0, 0, 12 )

    local hp = ( ePly:Health() >= 100 ) and 100 or ePly:Health()

    cam.Start3D2D( head, Angle( 0, rot, 90 ), 0.1 )
        draw.SimpleTextOutlined( ePly:Nick(), UI.SafeFont( '32 Arial' ), 4, 24, C.AMBI_WHITE, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER, 1, C.AMBI_BLACK )
    cam.End3D2D()
end )