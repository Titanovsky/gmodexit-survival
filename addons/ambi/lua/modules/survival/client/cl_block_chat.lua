local BLOCK_TYPES = {
    [ 'joinleave' ] = true,
    [ 'teamchange' ] = true,
    [ 'namechange' ] = true,
}

hook.Add( 'ChatText', 'Ambi.Survival.BlockChats', function( _, _, _, sType )
	if BLOCK_TYPES[ sType ] then return true end
end )