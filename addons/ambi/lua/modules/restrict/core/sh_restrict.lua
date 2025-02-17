local C = Ambi.Ambition.Global.Colors
local CFG = Ambi.Restrict.Config

local function Error( ePly, sText )
    if not sText then return end

    ePly:NotifySend( 4, { type = 1, time = 10, sound = 'Error', color = C.AmbiI_ERROR, text = sText } )
end

function Ambi.Restrict.Check( ePly, sName, sType, bNotify )
    if not ePly or not IsValid( ePly ) or not ePly:IsPlayer() then return false end
    if not sType or not isstring( sType ) then return false end

    local tab = Ambi.Restrict.Config.types[ sType ]
    if not tab then return false end

    if ePly:IsSuperAdmin() then return true end

    if not tab.available then 
        if bNotify then Error( ePly, sType..' запрещёны!' ) end 

        return false 
    end

    if Ambi.Restrict.GetMaxLimit( ePly, sType ) then 
        if bNotify then Error( ePly, 'Общий лимит '..sType..' достигнут!' ) end 

        return false 
    end

    local check = Ambi.Restrict.Config[ sType ][ sName ]
    if check then
        for criteria, Get in pairs( check ) do
            if not Get( ePly ) then 
                if bNotify then Error( ePly, 'Вы не проходите по критерию '..tostring( criteria ) ) end 

                return false 
            end
        end
    end

    return true
end

function Ambi.Restrict.GetMaxLimit( ePly, sType )
    if not ePly or not IsValid( ePly ) or not ePly:IsPlayer() then return true end
    if not sType or not isstring( sType ) then return true end

    if ( sType == 'tools' ) or ( sType == 'properties' ) then return false end

    local tab = Ambi.Restrict.Config.types[ sType ]
    if not tab then return true end

    return ( ePly:GetCount( sType ) >= tab.limit )
end