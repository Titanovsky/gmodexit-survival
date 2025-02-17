Ambi.Restrict = Ambi.Restrict or {}

function Ambi.Restrict.Add( sName, sType, tCheck )
    if not Ambi.Restrict.Config[ sType ] then return end

    Ambi.Restrict.Config[ sType ][ sName ] = tCheck
end
