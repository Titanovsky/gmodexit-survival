-- Edited version of https://github.com/Facepunch/garrysmod/blob/master/garrysmod/gamemodes/sandbox/entities/effects/balloon_pop.lua
function EFFECT:Init(data)
    local vOffset = data:GetOrigin()
    local NumParticles = 32
    local emitter = ParticleEmitter(vOffset, true)

    for i = 0, NumParticles do
        local Pos = Vector(math.Rand(-1, 1), math.Rand(-1, 1), math.Rand(-1, 1))
        local particle = emitter:Add("particles/balloon_bit", vOffset + Pos * 8)

        if (particle) then
            particle:SetVelocity(Pos * 500)
            particle:SetLifeTime(0)
            particle:SetDieTime(2)
            particle:SetStartAlpha(255)
            particle:SetEndAlpha(255)
            local Size = math.Rand(5, 10)
            particle:SetStartSize(Size)
            particle:SetEndSize(0)
            particle:SetRoll(math.Rand(0, 360))
            particle:SetRollDelta(math.Rand(-2, 2))
            particle:SetAirResistance(0)
            particle:SetGravity(Vector(0, 0, -700))
            particle:SetMaterial("models/darky_m&bypolat/rust/minicopter/minicoptor prt 1")
            particle:SetCollide(true)
            particle:SetAngleVelocity(Angle(math.Rand(-160, 160), math.Rand(-160, 160), math.Rand(-160, 160)))
            particle:SetBounce(1)
            particle:SetLighting(true)
        end
    end

    emitter:Finish()
end

function EFFECT:Think()
    return false
end

function EFFECT:Render()
end