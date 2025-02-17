local Add = Ambi.Survival.AddSkill
local CATEGORY = 'Practice'

-----------------------------------------------------------------------------------------------------
local SKILL, NAME = 'fishing', 'Рыболовство'
Add( SKILL, NAME, CATEGORY )

hook.Add( '[Ambi.Survival.SetSkill]', 'Ambi.Survival.SetSkill_'..SKILL, function( ePly, sSkill, nOldCount, nNewCount )
    if ( sSkill ~= SKILL ) then return end
end )

-----------------------------------------------------------------------------------------------------
local SKILL, NAME = 'hunting', 'Охота'
Add( SKILL, NAME, CATEGORY )

hook.Add( '[Ambi.Survival.SetSkill]', 'Ambi.Survival.SetSkill_'..SKILL, function( ePly, sSkill, nOldCount, nNewCount )
    if ( sSkill ~= SKILL ) then return end
end )

-----------------------------------------------------------------------------------------------------
local SKILL, NAME = 'swimming', 'Плавание'
Add( SKILL, NAME, CATEGORY )

hook.Add( '[Ambi.Survival.SetSkill]', 'Ambi.Survival.SetSkill_'..SKILL, function( ePly, sSkill, nOldCount, nNewCount )
    if ( sSkill ~= SKILL ) then return end
end )

-----------------------------------------------------------------------------------------------------
local SKILL, NAME = 'taming', 'Укрощение'
Add( SKILL, NAME, CATEGORY )

hook.Add( '[Ambi.Survival.SetSkill]', 'Ambi.Survival.SetSkill_'..SKILL, function( ePly, sSkill, nOldCount, nNewCount )
    if ( sSkill ~= SKILL ) then return end
end )

-----------------------------------------------------------------------------------------------------
local SKILL, NAME = 'oratory', 'Красноречие'
Add( SKILL, NAME, CATEGORY )

hook.Add( '[Ambi.Survival.SetSkill]', 'Ambi.Survival.SetSkill_'..SKILL, function( ePly, sSkill, nOldCount, nNewCount )
    if ( sSkill ~= SKILL ) then return end
end )

-----------------------------------------------------------------------------------------------------
local SKILL, NAME = 'fitness', 'Здоровье'
Add( SKILL, NAME, CATEGORY )

hook.Add( '[Ambi.Survival.SetSkill]', 'Ambi.Survival.SetSkill_'..SKILL, function( ePly, sSkill, nOldCount, nNewCount )
    if ( sSkill ~= SKILL ) then return end
end )

-----------------------------------------------------------------------------------------------------
local SKILL, NAME = 'control guns', 'Владение Огнестрельным Оружием'
Add( SKILL, NAME, CATEGORY )

hook.Add( '[Ambi.Survival.SetSkill]', 'Ambi.Survival.SetSkill_'..SKILL, function( ePly, sSkill, nOldCount, nNewCount )
    if ( sSkill ~= SKILL ) then return end
end )

-----------------------------------------------------------------------------------------------------
local SKILL, NAME = 'control melee', 'Владение Ближним Оружием'
Add( SKILL, NAME, CATEGORY )

hook.Add( '[Ambi.Survival.SetSkill]', 'Ambi.Survival.SetSkill_'..SKILL, function( ePly, sSkill, nOldCount, nNewCount )
    if ( sSkill ~= SKILL ) then return end
end )

-----------------------------------------------------------------------------------------------------
local SKILL, NAME = 'collection', 'Собирательство'
Add( SKILL, NAME, CATEGORY )

hook.Add( '[Ambi.Survival.SetSkill]', 'Ambi.Survival.SetSkill_'..SKILL, function( ePly, sSkill, nOldCount, nNewCount )
    if ( sSkill ~= SKILL ) then return end
end )