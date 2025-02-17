Ambi.Survival.props = Ambi.Survival.props or {}
Ambi.Survival.objects = Ambi.Survival.objects or {}

function Ambi.Survival.AddProp( sName, sCategory, sModel, tCraft, fPostAction )
    Ambi.Survival.props[ sName or '' ] = {
        category = sCategory or '',
        model = sModel or '',
        craft = tCraft or {},
        post = fPostAction
    }
end

function Ambi.Survival.AddObject( sName, sCategory, sDescription, sClass, sModel, tCraft, fPostAction )
    Ambi.Survival.objects[ sName or '' ] = {
        category = sCategory or '',
        class = sClass or '',
        desc = sDescription or '',
        model = sModel or '',
        craft = tCraft or {},
        post = fPostAction
    }
end

function Ambi.Survival.FindObjectByClass( sClass )
    for name, v in pairs( Ambi.Survival.objects ) do
        if v.class == sClass then return Ambi.Survival.objects[ name ] end
    end
end

function Ambi.Survival.FindPropByModel( sModel )
    for name, v in pairs( Ambi.Survival.props ) do
        if v.model == sModel then return Ambi.Survival.props[ name ] end
    end
end