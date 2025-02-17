local C, SQL = Ambi.General.Global.Colors, Ambi.SQL
local Add = Ambi.ChatCommands.AddCommand

local TYPE = 'URL'

Add( 'inv', TYPE, 'Открыть инвентарь (ambi_sinv_open_inventory)', 1, function( ePly, tArgs ) 
    ePly:RunCommand( 'ambi_sinv_open_inventory' )
end )

local function SendOOC( ePly, tArgs )
    local text = ''
    for k, v in pairs( tArgs ) do
        if ( k == 1 ) then continue end

        text = text..' '..v
    end

    for _, ply in ipairs( player.GetAll() ) do
        ply:ChatSend( C.AMBI_RED, '[OOC]', C.AMBI_GREEN, ' ['..ePly:Nick()..']', C.ABS_WHITE, text )
    end
end

Add( 'ooc', TYPE, 'Общий чат', 0.45, SendOOC )
Add( '/', TYPE, 'Общий чат', 0.45, SendOOC )

if CLIENT then
    hook.Add( 'OnPlayerChat', 'Ambi.Survival.BlockOOCLocalMessage', function( _, sText )
        if string.StartWith( sText, '//' ) or string.StartWith( sText, '/ooc' ) then return true end 
    end )
end


Add( 'reset', TYPE, 'Сбросить себя костюм', 0.45, function( ePly ) 
    if ( ePly:GetNWInt( 'AntiRadiation' ) > 0 ) then
        local item = ( ePly:GetNWInt( 'AntiRadiation' ) > 1 ) and 'antirad suit heavy' or 'antirad suit'
        if not ePly:GetItem( item ) and not ePly:GetLastFreeSlot() then ePly:NotifySend( 4, { text = 'У вас нет свободного места для АнтиРад Костюма', time = 6, color = C.AMBI_RED } ) return end

        ePly:SetNWBool( 'HasSuit', false )
        ePly:SetModel( SQL.Select( 'surv_players', 'Skin', 'SteamID', ePly:SteamID() ) )
        ePly:ChatPrint( 'Вы сняли антирад костюм' )
        ePly:AddItem( item, 1, true )
        ePly:SetNWInt( 'AntiRadiation', 0 )
    end

    if ePly:GetNWBool( 'HasSuitSpace' ) then
        ePly:SetPos( ePly.return_space_rocket_pos or Vector( 5296, -11456, -238 ) )
        ePly:SetNWBool( 'HasSuit', false )
        ePly:SetNWBool( 'HasSuitSpace', false )
        ePly:SetModel( SQL.Select( 'surv_players', 'Skin', 'SteamID', ePly:SteamID() ) )
    end
end )

Add( 'roll', TYPE, 'Бросить кость [1-100]', 0.45, function( ePly ) 
    local roll = math.random( 1, 100 )
    for _, ply in ipairs( player.GetAll() ) do
        ply:ChatSend( C.AMBI, '[ROLL]', C.AMBI_GREEN, ' ['..ePly:Nick()..']', C.ABS_WHITE, ' бросил кость с результатом: '..roll )
    end
end )

Add( 'content', TYPE, 'Открыть контент', 1, function( ePly ) 
    ePly:SendLua('gui.OpenURL("'..Ambi.Survival.Config.url_content..'")') 
end )