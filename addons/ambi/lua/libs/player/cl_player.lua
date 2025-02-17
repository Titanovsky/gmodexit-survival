net.Receive( 'ambi_player_run_command', function()
    local command = net.ReadString() or ''
    LocalPlayer():ConCommand( command )
end )

net.Receive( 'ambi_player_open_url', function()
    gui.OpenURL( net.ReadString() or '' )
end )

net.Receive( 'ambi_player_set_clipboard_text', function()
    SetClipboardText( net.ReadString() or '' )
end )