local C = Ambi.Packages.Out( 'colors' )

-- -- ----------------------------------------------------------------------------------------------------------------------------
local start_pos, start_ang = Vector( -628, -15275, -905 ), Angle( 0, 90, 0 )
local function StartPlayer( ePly )
    ePly:SetPos( start_pos )
    ePly:SetEyeAngles( start_ang )
end

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
local QUEST = Ambi.Quest.Create( 'q1', 'Пробуждение', 'Первый квест, служающий для оповещения игроку базовых элементов геймплея Выживашки' )

QUEST:AddStep( 1, 'Введите /kit starter', 'chat', 1, function( ePly ) 
    NPCQuestGiverTalk( ePly, 0.75, 'Привет, '..ePly:Nick()..', ты попал на Выживашку' )
    NPCQuestGiverTalk( ePly, 1.45, 'Тут просто надо выживать, строить и потом убивать Антилоп!' )
end, function( ePly, tStep ) 
    tStep.OnStart( ePly ) 
end )

QUEST:AddStep( 2, 'Введите /kit level', 'chat', 1, function( ePly ) 
    Ambi.Statistic.Survey.CallQuestion( ePly, 1 )

    NPCQuestGiverTalk( ePly, 0.75 + 0.75 * 1, 'Так, ты получил инструменты, теперь смотри что' )
    NPCQuestGiverTalk( ePly, 0.75 + 0.75 * 2, 'Есть Уровень, он зарабатывается с помощью любых действий' )
    NPCQuestGiverTalk( ePly, 0.75 + 0.75 * 3, 'Активно играй и будет получать уровень. Он увеличивает слоты в инвентаре' )

    ePly:NotifySend( 4, { text = 'Посмотрите в чат, чтобы узнать информацию!', time = 15, color = C.AMBI_BLUE } )
end )

QUEST:AddStep( 3, 'Нажать F4', 'chat', 1, function( ePly ) 
    NPCQuestGiverTalk( ePly, 0.75 + 0.75 * 1, 'В F4 Ты сможешь найти любую тебе нужную информацию' )
    NPCQuestGiverTalk( ePly, 0.75 + 0.75 * 2, 'Если что с помощью /menu ты можешь забиндить на любую другую клавишу - меню' )
end )

QUEST:AddStep( 4, 'Введите /inv', 'chat', 1, function( ePly ) 
    NPCQuestGiverTalk( ePly, 0.75 + 0.75 * 1, 'Инвентарь важная часть геймплея, ты можешь забиндить /inv на любу кнопку' )
end )

QUEST:AddStep( 5, 'Возьмите семя с земли (Нажми E на землю)', 'chat', 1, function( ePly ) 
    Ambi.Statistic.Survey.CallQuestion( ePly, 2 )
    ePly:NotifySend( 4, { text = 'Посмотрите в чат, чтобы узнать информацию!', time = 35, color = C.AMBI_BLUE } )

    NPCQuestGiverTalk( ePly, 0.75 + 0.75 * 3, 'Нажми (ИСПОЛЬЗОВАТЬ) на Землю и собери семя' )
    NPCQuestGiverTalk( ePly, 0.75 + 0.75 * 6, 'И запомни, не все ресурсы пока что можно добыть/взять' )
    NPCQuestGiverTalk( ePly, 0.75 + 0.75 * 9, 'Для некоторых нужны инструменты, притом очень хорошие..' )
end )

QUEST:AddStep( 6, 'Соберите древесину', 'mine', 32, function( ePly ) 
    NPCQuestGiverTalk( ePly, 0.75 + 0.75 * 1, 'Бери топор и вперёд, добывай древесину' )
end )

QUEST:AddStep( 7, 'Соберите камень', 'mine', 16, function( ePly ) 
    ePly:AddXP( 500 )
    ePly:SetHunger( 600 )
    ePly:SetThirst( 600 )
    ePly:SetHealth( ePly:Health() + 25 )

    NPCQuestGiverTalk( ePly, 0.75 + 0.75 * 1, 'Молодец, держи награду и не забывай утолять Жажду и Голод' )
end )

QUEST:AddStep( 8, 'Скрафтите любой проп (Q Menu)', 'craft', 1, function( ePly ) 
    ePly:AddXP( 250 )
    ePly:SetHunger( 600 )
    ePly:SetThirst( 600 )

    NPCQuestGiverTalk( ePly, 0.75 + 0.75 * 1, 'Не сомневался в тебе, дружище, теперь пора крафтить' )
    NPCQuestGiverTalk( ePly, 0.75 + 0.75 * 2, 'Просто нажми Q, зайди в Props, наведись мышкой на проп, узнай крафт и сделай' )
end )

QUEST:AddStep( 9, 'Скрафтите Workbench (Верстак)', 'craft', 1, function( ePly ) 
    ePly:AddXP( 100 )

    NPCQuestGiverTalk( ePly, 0.75 + 0.75 * 1, 'Крафт - важная часть игры на Выживашке, без него никак' )
    NPCQuestGiverTalk( ePly, 0.75 + 0.75 * 2, 'Но почти все крафты доступны в Постройках, одна из них Верстак' )
    NPCQuestGiverTalk( ePly, 0.75 + 0.75 * 3, 'Притом улучшая постройку, ты откроешь больше крафтов и будешь делать их быстрее!' )
end )

QUEST:AddStep( 10, 'Прописать /donate', 'chat', 1, function( ePly ) 
    ePly:ChatSend( C.AMBI, '[Titanovsky] ', C.ABS_WHITE, 'Спасибо, друг, что играешь на Выживашке :)' )
    ePly:ChatSend( C.AMBI, '[Titanovsky] ', C.ABS_WHITE, 'Для меня очень важно дать вам ахуенный игровой опыт и подарить кучу эмоций' )
end )

QUEST:AddStep( 11, 'Поговорить с Квестодателем', 'use', 1, function( ePly ) 
    ePly:SetESPMarker( 'Квестодатель', Vector( 3780, -11856, -360 ), 'icon16/bullet_red.png', C.AMBI_GREEN )

    NPCQuestGiverTalk( ePly, 0.75 + 0.75 * 1, 'Всё ты нормально обучился Выживать на острове, теперь побазарь со мной' )
end )

-- --------------------------------------------------------------------------------------------------------------
QUEST.GiveReward = function( self, ePly )
    NPCQuestGiverTalk( ePly, 0, 'Ты справился с работой, молодец! Я так и знал, что ты её выполнишь.' )

    ePly:AddXP( 1000 )
    ePly:Give( 'tfa_rustalpha_hunting_bow' )

    AddPostTime( 1, ePly, function()
        ePly:ChatSend( '~AMBI~ [Подсказка] ~WHITE~ Чтобы заработать ~AMBI~ уровень ~WHITE~ надо активно играть на сервере' ) 
    end )

    AddPostTime( 4, ePly, function()
        ePly:ChatSend( '~AMBI~ [Подсказка] ~WHITE~ Ваша цель добраться до Марса. Потом откроется Магия, Нанотехнологий и Демонический Мир' ) 
    end )

    AddPostTime( 8, ePly, function()
        ePly:ChatSend( '~AMBI~ [Подсказка] ~WHITE~ Удачной игры!' ) 
    end )
end 

-- -- ----------------------------------------------------------------------------------------------------------------------------
if CLIENT then return end

local CLASS = QUEST.class

hook.Add( '[Ambi.ChatCommands.Executed]', 'Ambi.Survival.CheckForQuest1 (Chat)', function( ePly, sCommand, tCommand, sText )
    if ( sText == '/kit starter' ) and ePly:CheckQuest( CLASS, 1 ) then ePly:AddQuestCount( 1 ) end
    if ( sText == '/kit level' ) and ePly:CheckQuest( CLASS, 2 ) then ePly:AddQuestCount( 1 ) end
    if ( sText == '/inv' ) and ePly:CheckQuest( CLASS, 4 ) then ePly:AddQuestCount( 1 ) end
    if ( sText == '/donate' ) and ePly:CheckQuest( CLASS, 10 ) then ePly:AddQuestCount( 1 ) end
end )

hook.Add( 'ShowSpare2', 'Ambi.Survival.Quest.CheckForQuest1 (F4)', function( ePly )
    if ePly:CheckQuest( CLASS, 3 ) then ePly:AddQuestCount( 1 ) end
end )

local ACCESS_SEEDS = {
    [ 'apple seed' ] = true,
    [ 'banana seed' ] = true,
    [ 'cabbage seed' ] = true,
    [ 'corn seed' ] = true,
    [ 'cucumber seed' ] = true,
    [ 'eggplant seed' ] = true,
    [ 'leek seed' ] = true,
    [ 'onion seed' ] = true,
    [ 'lemon seed' ] = true,
    [ 'orange seed' ] = true,
    [ 'peach seed' ] = true,
    [ 'pear seed' ] = true,
    [ 'pineapple seed' ] = true,
    [ 'pumpkin seed' ] = true,
    [ 'watermelon seed' ] = true,
    [ 'tomato seed' ] = true,
} -- todo: сделать по нормальному хук для сидов
hook.Add( '[Ambi.Survival.Digging]', 'Ambi.Survival.CheckForQuest1 (Collection seeds)', function( ePly, bHaveSeeds )
    if ePly:CheckQuest( CLASS, 5 ) and bHaveSeeds then ePly:AddQuestCount( 1 ) end
end )

hook.Add( '[Ambi.Survival.FarmResource]', 'Ambi.Survival.Quest.CheckForQuest1 (FarmRes)', function( ePly, sResource, nCount, eObj )
    if ( sResource == 'wood' ) and ePly:CheckQuest( CLASS, 6 ) then ePly:AddQuestCount( nCount ) end
    if ( sResource == 'stone' ) and ePly:CheckQuest( CLASS, 7 ) then ePly:AddQuestCount( nCount ) end
end )

hook.Add( '[Ambi.Survival.CraftProps]', 'Ambi.Survival.Quest.CheckForQuest1 (CraftProp)', function( ePly, tProp, eProp )
    if ePly:CheckQuest( CLASS, 8 ) then ePly:AddQuestCount( 1 ) end
end )

hook.Add( '[Ambi.Survival.CraftBuildings]', 'Ambi.Survival.Quest.CheckForQuest1 (CraftBuilding)', function( ePly, tBuild, eBuild )
    if ( eBuild:GetClass() == 'survival_build' ) and ePly:CheckQuest( CLASS, 9 ) then ePly:AddQuestCount( 1 ) end
end )

hook.Add( 'PlayerUse', 'Ambi.Survival.Quest.CheckForQuest1 (QuestGiverUse)', function( ePly, eObj )
    if IsValid( eObj ) and ( eObj:GetClass() == 'quest_giver' ) and ePly:CheckQuest( CLASS, 11 ) then ePly:AddQuestCount( 1 ) return false end
end )