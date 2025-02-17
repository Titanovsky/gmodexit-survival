Ambi.General.CreateModule( 'SphereDeath' )

-- ---------------------------------------------------------------------------------------------------------------------------------------------
Ambi.SphereDeath.Config.pos = Vector( 1239, -622, -15904 ) -- Позиция сферы (обычно центр карты)
Ambi.SphereDeath.Config.color = Color( 0, 255, 0 ) -- Цвет сферы
Ambi.SphereDeath.Config.material = Material( 'models/debug/debugwhite', 'nocull 1' ) -- Материал для сферы
Ambi.SphereDeath.Config.radius = 15000 -- Стартовый радиус смерти
Ambi.SphereDeath.Config.steps = 10 -- Сколько шагов до окончания радиуса смерти?
Ambi.SphereDeath.Config.delay = 60 -- Задержка между шагами в секундах? (Задержка * Шаги = Общее Время)
Ambi.SphereDeath.Config.add = -1400 -- На сколько добавляется радиус за каждый шаг?

-- ---------------------------------------------------------------------------------------------------------------------------------------------
Ambi.SphereDeath.Config.damage_enable = true -- Включить дамаг по игроку, если он не в сфере?
Ambi.SphereDeath.Config.damage_amount = 2 -- Если игрок не в сфере, сколько ему будет дамаг?
Ambi.SphereDeath.Config.damage_delay = 4 -- Задержка между проверкой игрока в сфере в секундах

-- ---------------------------------------------------------------------------------------------------------------------------------------------
Ambi.SphereDeath.Config.auto_enable = true -- Включить авто старт сферы смерти?
Ambi.SphereDeath.Config.auto_delay = 60 * 60 -- Задержка между стартами в секундах [НУЖЕН РЕСТАРТ]