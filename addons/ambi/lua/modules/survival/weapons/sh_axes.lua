local function AddWeapon( sClass, sName, nEnd )
    nEnd = nEnd or 0.9

	local SWEP = {}
	SWEP.Primary = {}

	SWEP.Base = 'tfa_rustalpha_meleebase'

	SWEP.Category = 'Выживашка.Топоры'
	SWEP.Spawnable = true
	SWEP.AdminOnly = false

	SWEP.Author = 'Ambition' -- original: YuRaNnNzZZ
	SWEP.PrintName = sName

	SWEP.Type = 'Melee Weapon'
	SWEP.Type_Displayed = 'Инструмент'

	SWEP.ViewModel = 'models/ambition/survival/weapons/'..sClass..'.mdl'
	SWEP.UseHands = true
	SWEP.WorldModel = 'models/weapons/yurie_rustalpha/wm-hatchet.mdl'
	SWEP.HoldType = 'melee'
    SWEP.Slot = 2
    SWEP.Offset = {
        Pos = {
            Up = -3.5,
            Right = 1.5,
            Forward = 6
        },
        Ang = {
            Up = 0,
            Right = 10,
            Forward = 180
        },
        Scale = 0.9
    }

    SWEP.ViewModelFOV = 54

    SWEP.Idle_Mode = 1

    SWEP.Primary.Damage = 25

    SWEP.EventTable = {
        [ACT_VM_DRAW] = {
            {time = 0, type = "sound", value = Sound("YURIE_RUSTALPHA.Draw")}
        },
    }

    SWEP.Primary.MaxCombo = -1
    SWEP.Primary.Attacks = {
        {
            ["act"] = ACT_VM_SWINGMISS, -- Animation; ACT_VM_THINGY, ideally something unique per-sequence
            ["len"] = 16 * 3, -- Trace distance
            ["dir"] = Vector(0, 0, 0), -- Trace arc cast
            ["dmg"] = SWEP.Primary.Damage, --Damage
            ["dmgtype"] = DMG_CLUB, --DMG_SLASH,DMG_CRUSH, etc.
            ["delay"] = 12 / 30, --Delay
            ["spr"] = false, --Allow attack while sprinting?
            ["snd"] = Sound("YURIE_RUSTALPHA.Melee.Swing"),
            ["snd_delay"] = 0.15,
            ["viewpunch"] = Angle(0, 0, 0), --viewpunch angle
            ["end"] = nEnd, --time before next attack
            ["hull"] = 16, --Hullsize
            ["direction"] = "F", --Swing dir,
            ["hitflesh"] = "",
            ["hitworld"] = "",
            ["combotime"] = 0
        }
    }

    SWEP.AllowSprintAttack = false
    SWEP.RunSightsPos = Vector(0, 0, 0)
    SWEP.RunSightsAng = Vector(-20, 0, 0)

    SWEP.ViewModelBoneMods = {
        ["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, -128), angle = Angle(0, 0, 0) }
    }

    -- SWEP.InspectPos = Vector(-3.25, -9, -5.5)
    -- SWEP.InspectAng = Vector(34, -24, 12)

    SWEP.SwingHitAnimation = ACT_VM_SWINGHIT

	AMB.RegEntity.Register( sClass, 'weapons', SWEP )
end

AddWeapon( 'surv_axe_stone', '1. Топор Каменный', 1.25 )
AddWeapon( 'surv_axe_copper', '2. Топор Медный', 0.95 )
AddWeapon( 'surv_axe_iron', '3. Топор Железный', 0.85 )
AddWeapon( 'surv_axe_steel', '4. Топор Стальной', 0.75 )
AddWeapon( 'surv_axe_titan', '5. Топор Титановый', 0.70 )

AddWeapon( 'surv_axe_uranium', 'Топор для Titanium', 0.05 )
--[[
AddWeapon( 'surv_axe_stone', '1. Топор Каменный' )
AddWeapon( 'surv_axe_aluminum', '2. Топор Алюминиевый' )
AddWeapon( 'surv_axe_copper', '3. Топор Медный' )
AddWeapon( 'surv_axe_zink', '4. Топор Цинковый' )
AddWeapon( 'surv_axe_iron', '5. Топор Железный' )
AddWeapon( 'surv_axe_steel', '6. Топор Стальной' )
AddWeapon( 'surv_axe_titan', '7. Топор Титановый' )
AddWeapon( 'surv_axe_gold', '8. Топор Золотой' )
AddWeapon( 'surv_axe_uranium', '9. Топор Урановый' )
AddWeapon( 'surv_axe_thorium', '10. Топор Ториумный' )
]]--