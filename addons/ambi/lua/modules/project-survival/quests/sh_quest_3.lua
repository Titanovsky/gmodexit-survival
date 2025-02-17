local C = Ambi.Packages.Out( 'colors' )

-- -- ----------------------------------------------------------------------------------------------------------------------------
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
local QUEST = Ambi.Quest.Create( 'q3', 'Мини-Коптер' )

QUEST:AddStep( 1, 'Убить антилоп', 'kill', 5, function( ePly ) 
    NPCQuestGiverTalk( ePly, 0, 'Слушай, если ты выполнишь моё задание, то я...' )
    NPCQuestGiverTalk( ePly, 2, 'Расскажу тебе как собрать Minicopter!' )
end )

QUEST:AddStep( 2, 'Собрать части Mini-Copter', 'collect', 3, function( ePly ) 
    NPCQuestGiverTalk( ePly, 0, 'Части миникоптера можно найти на Big RT...' )
    NPCQuestGiverTalk( ePly, 3, 'Они попадаются в ящиках с ресами...' )
    NPCQuestGiverTalk( ePly, 6, 'Но будь аккуратен, там много радиаций!' )
end )

QUEST:AddStep( 3, 'Скрафтить Mini-Copter', 'craft', 1, function( ePly ) 
    NPCQuestGiverTalk( ePly, 0, 'Вот держи чертёж, собери остальные ресурсы и сделай коптер!' )
    NPCQuestGiverTalk( ePly, 2, 'Q Menu >> Buildings >> Minicopter' )
end )

-- --------------------------------------------------------------------------------------------------------------
QUEST.GiveReward = function( self, ePly )
    ePly:AddXP( 15000 )

    NPCQuestGiverTalk( ePly, 0.1, 'Ух ты, да ты гений инженерной мысли!' )
end 

-- -- ----------------------------------------------------------------------------------------------------------------------------
if CLIENT then return end

local CLASS = QUEST.class

hook.Add( 'OnNPCKilled', 'Ambi.Survival.CheckForQuest3 (NPCKilled)', function( eNPC, eAttacker )
    if ( eNPC:GetClass() == 'npc_antlion' ) and eAttacker:IsPlayer() and eAttacker:CheckQuest( CLASS, 1 ) then eAttacker:AddQuestCount( nCount ) end
end )

hook.Add( '[Ambi.SimpleInventory.AddItem]', 'Ambi.Survival.CheckForQuest3', function( ePly, sClass )
    if ( sClass == 'minicopter parts' ) and ePly:CheckQuest( CLASS, 2 ) then ePly:AddQuestCount( 1 ) end
end )

hook.Add( '[Ambi.Survival.CraftBuildings]', 'Ambi.Survival.CheckForQuest3', function( ePly, tObj )
    if ( tObj.class == 'rust_minicopter' ) and ePly:CheckQuest( CLASS, 3 ) then ePly:AddQuestCount( 1 ) end
end )