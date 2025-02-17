local Add = Ambi.Statistic.Survey.Add

Add( 1, 'server1', 'Как Вы узнали про сервер?', {
    [ 1 ] = { answer = 'Нашел во вкладке Sandbox/DarkRP/Stranded', action = function( ePly, nID, nAnswerID ) ePly:ChatPrint( 'Вы молодец!' ) end },
    [ 2 ] = { answer = 'Посоветовал друг', action = function( ePly, nID, nAnswerID ) ePly:ChatPrint( 'Вы молодец!' ) end },
    [ 3 ] = { answer = 'Увидел сервер на видео', action = function( ePly, nID, nAnswerID ) ePly:ChatPrint( 'Вы молодец!' ) end },
    [ 4 ] = { answer = 'Узнал из стороней рекламы ( VK, Steam, Discord )', action = function( ePly, nID, nAnswerID ) ePly:ChatPrint( 'Вы молодец!' ) end },
    [ 5 ] = { answer = 'Нашел по другому', action = function( ePly, nID, nAnswerID ) ePly:ChatPrint( 'Вы молодец!' ) end },
} )

Add( 2, 'server2', 'Почему именно наш сервер?', {
    [ 1 ] = { answer = 'Случайно нашел, решил попробовать', action = function( ePly, nID, nAnswerID ) ePly:ChatPrint( 'Вы молодец!' ) end },
    [ 2 ] = { answer = 'Друг сказал, что сервер хороший', action = function( ePly, nID, nAnswerID ) ePly:ChatPrint( 'Вы молодец!' ) end },
    [ 3 ] = { answer = 'Решил зайти к своему любимому ютуберу', action = function( ePly, nID, nAnswerID ) ePly:ChatPrint( 'Вы молодец!' ) end },
    [ 4 ] = { answer = 'Попробовал все Stranded сервера, не понравились', action = function( ePly, nID, nAnswerID ) ePly:ChatPrint( 'Вы молодец!' ) end },
    [ 5 ] = { answer = 'Стало скучно на других режимах', action = function( ePly, nID, nAnswerID ) ePly:ChatPrint( 'Вы молодец!' ) end },
    [ 6 ] = { answer = 'Из-за большого онлайна', action = function( ePly, nID, nAnswerID ) ePly:ChatPrint( 'Вы молодец!' ) end },
    [ 7 ] = { answer = 'Увидел название, заинтересовало', action = function( ePly, nID, nAnswerID ) ePly:ChatPrint( 'Вы молодец!' ) end },
    [ 8 ] = { answer = 'Увидел, что у вас максимальный рейтинг', action = function( ePly, nID, nAnswerID ) ePly:ChatPrint( 'Вы молодец!' ) end },
    [ 9 ] = { answer = 'Кастомная карта', action = function( ePly, nID, nAnswerID ) ePly:ChatPrint( 'Вы молодец!' ) end },
    [ 10 ] = { answer = 'Быстрая загрузка и сервер мало весит', action = function( ePly, nID, nAnswerID ) ePly:ChatPrint( 'Вы молодец!' ) end }, -- max
} )