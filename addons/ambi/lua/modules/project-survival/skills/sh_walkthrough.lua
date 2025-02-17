local Add = Ambi.Survival.AddSkill

-- ================================================================================================================== --
-- ==================================== I WALKTHROUGH =============================================================== --
-- ================================================================================================================== --
local CATEGORY = 'Space'

local SKILL, NAME = 'astronomy', 'Астрономия'
Add( SKILL, NAME, CATEGORY )

hook.Add( '[Ambi.Survival.SetSkill]', 'Ambi.Survival.SetSkill_'..SKILL, function( ePly, sSkill, nOldCount, nNewCount )
    if ( sSkill ~= SKILL ) then return end
end )

-- ================================================================================================================== --
-- ==================================== II WALKTHROUGH ============================================================== --
-- ================================================================================================================== --
local CATEGORY = 'Magic'

local SKILL, NAME = 'magic', 'Магия'
Add( SKILL, NAME, CATEGORY )

hook.Add( '[Ambi.Survival.SetSkill]', 'Ambi.Survival.SetSkill_'..SKILL, function( ePly, sSkill, nOldCount, nNewCount )
    if ( sSkill ~= SKILL ) then return end
end )

-----------------------------------------------------------------------------------------------------------------
local SKILL, NAME = 'alchemy', 'Алхимия'
Add( SKILL, NAME, CATEGORY )

hook.Add( '[Ambi.Survival.SetSkill]', 'Ambi.Survival.SetSkill_'..SKILL, function( ePly, sSkill, nOldCount, nNewCount )
    if ( sSkill ~= SKILL ) then return end
end )

-- ================================================================================================================== --
-- ==================================== III WALKTHROUGH ============================================================= --
-- ================================================================================================================== --
local CATEGORY = 'Nano'

local SKILL, NAME = 'nano', 'Нанотехнологии'
Add( SKILL, NAME, CATEGORY )

hook.Add( '[Ambi.Survival.SetSkill]', 'Ambi.Survival.SetSkill_'..SKILL, function( ePly, sSkill, nOldCount, nNewCount )
    if ( sSkill ~= SKILL ) then return end
end )

-- ================================================================================================================== --
-- ==================================== IV WALKTHROUGH ============================================================== --
-- ================================================================================================================== --
local CATEGORY = 'The Last Emperor'

local SKILL, NAME = 'demonizm', 'Демонизм'
Add( SKILL, NAME, CATEGORY )

hook.Add( '[Ambi.Survival.SetSkill]', 'Ambi.Survival.SetSkill_'..SKILL, function( ePly, sSkill, nOldCount, nNewCount )
    if ( sSkill ~= SKILL ) then return end
end )