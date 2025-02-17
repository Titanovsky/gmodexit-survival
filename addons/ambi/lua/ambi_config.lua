--[[
    Ambi Eco — платформа (экосистема) для создания проектов в игре Garry's Mod

    Github: https://github.com/Titanovsky/ambi-eco
    Documentation: https://titanovskyteam.gitbook.io/ambi-eco
--]]

-- --------------------------------------------------------------------------------------------------------------------------------------
Ambi.Config.dev = true -- Включить режим разработки?
Ambi.Config.language = 'ru' -- Язык сервера

-- --------------------------------------------------------------------------------------------------------------------------------------
--* Важные
Ambi.ConnectModule( 'net', 'Инструмент разработчика: Заменяет функций' )
Ambi.ConnectModule( 'content-loader', 'Интерфейс по работе с контентом из интернета для клинета' )
Ambi.ConnectModule( 'configurator', 'Простая система изменения конфигов' )
Ambi.ConnectModule( 'base-fonts', 'Регистрация шрифтов из Ambi Fonts и Ambi Fonts Extended' )
Ambi.ConnectModule( 'base-notify', 'Регистрация уведомлений' )
Ambi.ConnectModule( 'base-sounds', 'Регистрация звуков из Ambi Sounds и Ambi Sounds Extended' )
Ambi.ConnectModule( 'dev-panels', 'Инструмент разработчика: Важные менюшки' )

-- --------------------------------------------------------------------------------------------------------------------------------------
--* Желательные
Ambi.ConnectModule( 'chatcommands', 'Система чатовых команд' )
Ambi.ConnectModule( 'multihud', 'Систему подключения/отключения разных худов' )
Ambi.ConnectModule( 'infohud', 'Худ для показа информаций о энтити' )
Ambi.ConnectModule( 'player-freeze', 'Специфичная заморозка игрока' )
Ambi.ConnectModule( 'process', 'Система однопоточных процессов для игроков' )
Ambi.ConnectModule( 'autospawn', 'Система спавна энтитей после загрузки сервера' )
Ambi.ConnectModule( 'disable-render-unfocus', 'Отключения рендера, когда игра свёрнута' )

-- --------------------------------------------------------------------------------------------------------------------------------------
Ambi.ConnectModule( 'image', 'Модуль для отправки скринов через чат' )
Ambi.ConnectModule( 'esp' )
Ambi.ConnectModule( 'whitelist', 'Белый список для захода на сервер' )
Ambi.ConnectModule( 'business', 'Business Framework' )
Ambi.ConnectModule( 'process', 'Система однопоточных процессов взаимодействия игрока с чем-либо' )
Ambi.ConnectModule( 'restrict', 'Различные запреты на геймплей' )
Ambi.ConnectModule( 'simple-inventory', 'Простая система инвентаря и крафтинга' )
Ambi.ConnectModule( 'hitmarker', 'Индикаторы нанесения урона ентитям' )
Ambi.ConnectModule( 'territory', 'Система территорий' )
Ambi.ConnectModule( 'quest', 'Система квестов' )
Ambi.ConnectModule( 'kit', 'Наборы для игрока' )
Ambi.ConnectModule( 'statistic', 'Наборы для игрока' )
Ambi.ConnectModule( 'teleportes', 'Телепорты для игрока в виде ентитей' )
Ambi.ConnectModule( 'fishing', 'Рыболовство, взятое с сервера RUS' )
Ambi.ConnectModule( 'farming', 'Агрохозяйство' )
Ambi.ConnectModule( 'qmenu', 'Манипуляция со стандартным Q Меню' )
Ambi.ConnectModule( 'survival', 'Выживашка фреймворк' )

Ambi.ConnectModule( 'project-survival', 'Сборка Выживашки' )