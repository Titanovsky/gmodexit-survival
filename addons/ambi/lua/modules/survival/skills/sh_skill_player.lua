local PLAYER = FindMetaTable( 'Player' )

function Ambi.Survival.GetSkill( sSkill )
    return Ambi.Survival.skills[ tostring( sSkill ) ]
end

function Ambi.Survival.GetSkills()
    return Ambi.Survival.skills
end

function PLAYER:GetSkill( sSkill )
    sSkill = string.lower( tostring( sSkill ) )

    if not Ambi.Survival.GetSkill( sSkill ) then return end

    return self:GetNWInt( 'Skill '..sSkill )
end

function PLAYER:GetSkillXP( sSkill )
    sSkill = string.lower( tostring( sSkill ) )

    if not Ambi.Survival.GetSkill( sSkill ) then return end

    return self:GetNWInt( 'SkillXP '..sSkill )
end

function PLAYER:GetSkillXPMax( sSkill )
    sSkill = string.lower( tostring( sSkill ) )

    if not Ambi.Survival.GetSkill( sSkill ) then return end

    return ( self:GetSkill( sSkill ) + 1 ) * 100
end