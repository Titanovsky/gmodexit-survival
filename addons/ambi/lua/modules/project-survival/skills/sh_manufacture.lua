local C = Ambi.General.Global.Colors
local Add = Ambi.Survival.AddSkill
local CATEGORY = 'Manufacture'

-----------------------------------------------------------------------------------------------------
local SKILL, NAME = 'woodcutting', 'Лесорубство'
Add( SKILL, NAME, CATEGORY )

hook.Add( '[Ambi.Survival.SetSkill]', 'Ambi.Survival.SetSkill_'..SKILL, function( ePly, sSkill, nOldCount, nNewCount )
    if ( sSkill ~= SKILL ) then return end
    
    ePly:ChatPrint( 'Ваш новый уровень по лесорубству: '..nNewCount )
end )

hook.Add( '[Ambi.Survival.SetSkillXP]', 'Ambi.Survival.SetSkill_'..SKILL, function( ePly, sSkill, nXP )
    if ( sSkill ~= SKILL ) then return end
    
    ePly:ChatPrint( '[•] Вы получили XP по лесорубству '..nXP )
end )


-----------------------------------------------------------------------------------------------------
local SKILL, NAME = 'mining', 'Шахтёрство'
Add( SKILL, NAME, CATEGORY )

hook.Add( '[Ambi.Survival.SetSkill]', 'Ambi.Survival.SetSkill_'..SKILL, function( ePly, sSkill, nOldCount, nNewCount )
    if ( sSkill ~= SKILL ) then return end
end )

-----------------------------------------------------------------------------------------------------
local SKILL, NAME = 'smelting', 'Выплавка'
Add( SKILL, NAME, CATEGORY )

hook.Add( '[Ambi.Survival.SetSkill]', 'Ambi.Survival.SetSkill_'..SKILL, function( ePly, sSkill, nOldCount, nNewCount )
    if ( sSkill ~= SKILL ) then return end
end )

-----------------------------------------------------------------------------------------------------
local SKILL, NAME = 'crafting', 'Изготовление'
Add( SKILL, NAME, CATEGORY )

hook.Add( '[Ambi.Survival.SetSkill]', 'Ambi.Survival.SetSkill_'..SKILL, function( ePly, sSkill, nOldCount, nNewCount )
    if ( sSkill ~= SKILL ) then return end
end )

-----------------------------------------------------------------------------------------------------
local SKILL, NAME = 'building', 'Строительство'
Add( SKILL, NAME, CATEGORY )

hook.Add( '[Ambi.Survival.SetSkill]', 'Ambi.Survival.SetSkill_'..SKILL, function( ePly, sSkill, nOldCount, nNewCount )
    if ( sSkill ~= SKILL ) then return end
end )

-----------------------------------------------------------------------------------------------------
local SKILL, NAME = 'farming', 'Аграрий'
Add( SKILL, NAME, CATEGORY )

hook.Add( '[Ambi.Survival.SetSkill]', 'Ambi.Survival.SetSkill_'..SKILL, function( ePly, sSkill, nOldCount, nNewCount )
    if ( sSkill ~= SKILL ) then return end
end )

-----------------------------------------------------------------------------------------------------
local SKILL, NAME = 'cooking', 'Кулинария'
Add( SKILL, NAME, CATEGORY )

hook.Add( '[Ambi.Survival.SetSkill]', 'Ambi.Survival.SetSkill_'..SKILL, function( ePly, sSkill, nOldCount, nNewCount )
    if ( sSkill ~= SKILL ) then return end
end )