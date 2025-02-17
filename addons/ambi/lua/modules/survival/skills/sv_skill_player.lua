local Files, C = Ambi.Files, Ambi.General.Global.Colors
local PLAYER = FindMetaTable( 'Player' )

Files.Folders.Create( 'skills', true )

local function SaveSkill( ePly )
    local skills = {}
    for skill, _ in pairs( Ambi.Survival.skills ) do
        skills[ skill ] = { count = ePly:GetNWInt( 'Skill '..skill ), xp = ePly:GetNWInt( 'SkillXP '..skill ) }
    end

    Files.Create( 'skills/'..ePly:SteamID64()..'.json', Files.JSON.In( skills ), true )
end

function PLAYER:SetSkill( sSkill, nCount )
    sSkill = string.lower( tostring( sSkill ) )

    if ( nCount > Ambi.Survival.Config.skills_max_count ) then return end

    local old_count = self:GetNWInt( 'Skill '..sSkill )
    self:SetNWInt( 'Skill '..sSkill, nCount )
    self:SetNWInt( 'SkillXP '..sSkill, 0 )
    SaveSkill( self )

    hook.Call( '[Ambi.Survival.SetSkill]', nil, self, sSkill, old_count, self:GetNWInt( 'Skill '..sSkill ) )
end

function PLAYER:AddSkill( sSkill, nCount )
    sSkill = string.lower( tostring( sSkill ) )

    self:SetSkill( sSkill,  self:GetNWInt( 'Skill '..sSkill ) + nCount )

    hook.Call( '[Ambi.Survival.AddSkill]', nil, self, sSkill, nCount )
end

function PLAYER:SetSkillXP( sSkill, nCount )
    sSkill = string.lower( tostring( sSkill ) )
    if ( self:GetSkill( sSkill ) >= Ambi.Survival.Config.skills_max_count ) then return end

    local max = self:GetSkillXPMax( sSkill )

    if ( nCount == max ) then
        self:AddSkill( sSkill, 1 )
    elseif ( nCount > max ) then
        local remains = nCount - max 

        self:AddSkill( sSkill, 1 )
        self:SetSkillXP( sSkill, remains )
    else
        self:SetNWInt( 'SkillXP '..sSkill, nCount )
        SaveSkill( self )
    end

    hook.Call( '[Ambi.Survival.SetSkillXP]', nil, self, sSkill, nCount )
end

function PLAYER:AddSkillXP( sSkill, nCount )
    sSkill = string.lower( tostring( sSkill ) )

    self:SetSkillXP( sSkill,  self:GetNWInt( 'SkillXP '..sSkill ) + nCount )
    self:NotifySend( 4, { time = 4, text = '+'..sSkill..' '..nCount, color = C.AMBI_BLUE } )
end

hook.Add( 'PlayerInitialSpawn', 'Ambi.Survival.SetSkills', function( ePly )
    local ID = ePly:SteamID64()

    local content = Files.Read( 'skills/'..ID..'.json', true )
    if not content then SaveSkill( ePly ) return end

    local skills = Files.JSON.Out( content )
    for skill, tab in pairs( skills ) do 
        ePly:SetNWInt( 'Skill '..skill, tab.count ) 
        ePly:SetNWInt( 'SkillXP '..skill, tab.xp )
    end
end )