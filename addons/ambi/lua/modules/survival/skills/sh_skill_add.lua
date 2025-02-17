Ambi.Survival.skills = AMB.Survival.skills or {}

function Ambi.Survival.AddSkill( sSkill, sName, sCategory, sDescription )
    Ambi.Survival.skills[ string.lower( tostring( sSkill ) ) ] = {
        category = sCategory or '',
        name = sName or '',
        desc = sDescription or ''
    }
end
