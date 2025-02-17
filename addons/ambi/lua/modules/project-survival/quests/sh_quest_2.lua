local C = Ambi.Packages.Out( 'colors' )

-- -- ----------------------------------------------------------------------------------------------------------------------------
local start_pos, start_ang = Vector( -628, -15275, -905 ), Angle( 0, 90, 0 )
local function AddPostTime( nTime, ePly, fCallback )
    timer.Simple( nTime, function()
        if IsValid( ePly ) then fCallback() end
    end )
end

local function NPCQuestGiverTalk( ePly, nTime, sText )
    AddPostTime( nTime, ePly, function() 
        ePly:ChatSend( '~AMBI_GREEN~ Квестодатель: ~WHITE~ '..sText ) 
        ePly:PlaySound( 'buttons/button1.wav' )
    end )
end

-- -- ----------------------------------------------------------------------------------------------------------------------------
local QUEST = Ambi.Quest.Create( 'q2', 'Трудоголик' )

QUEST:AddStep( 1, 'Добыть дерево', 'farm', 100, function( ePly ) 
    if ePly:Alive() then ePly:Give( 'surv_axe_copper' ) end
end )

QUEST:AddStep( 2, 'Добыть камень', 'farm', 60, function( ePly ) 
    if ePly:Alive() then ePly:Give( 'surv_pickaxe_copper' ) end

    ePly:AddItem( 'stone', 100, true, true )
end )

QUEST:AddStep( 3, 'Добыть серу', 'farm', 10, function( ePly ) 
    NPCQuestGiverTalk( ePly, 2, 'Серные камни имеют жёлтый оттенок' )

    ePly:AddItem( 'wood', 100, true, true )
end )

QUEST:AddStep( 4, 'Залутайте ящик', 'use', 4, function( ePly ) 
    NPCQuestGiverTalk( ePly, 2, 'Ящики находятся на Small RT, Medium RT, Big RT' )
    NPCQuestGiverTalk( ePly, 8, 'Будь аккуратней, на Medium RT нужен Лёгкий Антирад Костюм' )
    NPCQuestGiverTalk( ePly, 12, 'А для Big RT и Лабы Х-18 нужен Тяжёлый Антирад Костюм' )

    ePly:SetESPMarker( 'Телепорт Small RT', Vector( 5959, -11474, -350 ), 'icon16/bullet_red.png', C.AMBI_GREEN )
    ePly:SetESPMarker( 'Small RT', Vector( 10901, -12417, -4848 ), 'icon16/bullet_red.png', C.AMBI_GREEN )
    ePly:AddItem( 'antirad suit', 1, true, true )
end )

QUEST:AddStep( 5, 'Убейте антилоп', 'use', 2, function( ePly ) 
    --ePly:SetESPMarker( 'Стоянка Антилоп', Vector( 11585, -13749, -4783 ), 'icon16/bullet_red.png', C.AMBI_GREEN )

    if ePly:Alive() then
        ePly:AddItem( 'stone ammo', 10, true, true )
        ePly:Give( 'tfa_rustalpha_handcannon' ) 
    end
end )

-- --------------------------------------------------------------------------------------------------------------
QUEST.GiveReward = function( self, ePly )
    ePly:AddXP( 5000 )
    ePly:Give( 'surv_pickaxe_iron' )
    ePly:Give( 'surv_axe_iron' )
    ePly:ChatSend( '~AMBI~ Titanovsky: ~WHITE~ Ну вот и всё, теперь тебе осталось добраться до Марса и ты пройдёшь всю игру :)' ) 
end 

-- --------------------------------------------------------------------------------------------------------------
if CLIENT then return end

local CLASS = QUEST.class

hook.Add( '[Ambi.Survival.FarmResource]', 'Ambi.Survival.CheckForQuest2 (FarmRes)', function( ePly, sResource, nCount, eObj )
    if ( sResource == 'wood' ) and ePly:CheckQuest( CLASS, 1 ) then ePly:AddQuestCount( nCount ) end
    if ( sResource == 'stone' ) and ePly:CheckQuest( CLASS, 2 ) then ePly:AddQuestCount( nCount ) end
    if ( sResource == 'sulfur' ) and ePly:CheckQuest( CLASS, 3 ) then ePly:AddQuestCount( nCount ) end
end )

hook.Add( 'PlayerUse', 'Ambi.Survival.CheckForQuest2 (Looting)', function( ePly, eObj )
    if IsValid( eObj ) and ( eObj:GetClass() == 'sinv_loot' ) and ePly:CheckQuest( CLASS, 4 ) then ePly:AddQuestCount( 1 ) end
end )

hook.Add( 'OnNPCKilled', 'Ambi.Survival.CheckForQuest2 (NPCKilled)', function( eNPC, eAttacker )
    if ( eNPC:GetClass() == 'npc_antlion' ) and eAttacker:IsPlayer() and eAttacker:CheckQuest( CLASS, 5 ) then eAttacker:AddQuestCount( 1 ) end
end )