local mats = {"particle/smokesprites_0001", "particle/smokesprites_0002", "particle/smokesprites_0003", "particle/smokesprites_0004", "particle/smokesprites_0005", "particle/smokesprites_0006", "particle/smokesprites_0007", "particle/smokesprites_0008", "particle/smokesprites_0009", "particle/smokesprites_0010", "particle/smokesprites_0011", "particle/smokesprites_0012", "particle/smokesprites_0013", "particle/smokesprites_0014", "particle/smokesprites_0015", "particle/smokesprites_0016"}

function EFFECT:Init(data)
    self.Entity = data:GetEntity()
    self.Scale = data:GetScale()
    self.DieTime = CurTime() + data:GetMagnitude() / 2
    self.Pos = data:GetStart()

    if IsValid(self.Entity) then
        self.Emitter = ParticleEmitter(self.Entity:LocalToWorld(self.Pos), false)
    end
end

EFFECT.cooldown = 0

function EFFECT:Think()
    if IsValid(self.Entity) then
        local Pos = self.Entity:LocalToWorld(self.Pos)

        if CurTime() > self.cooldown then
            self.cooldown = CurTime() + 0.06

            if self.Emitter then
                local particle = self.Emitter:Add(mats[math.random(#mats)], Pos)

                if particle then
                    particle:SetDieTime(10)
                    particle:SetVelocity(VectorRand() * 100 * self.Scale)
                    particle:SetAirResistance(0)
                    particle:SetStartAlpha(140)
                    particle:SetEndSize(math.Rand(20, 30) * self.Scale)
                    particle:SetStartSize(75 * self.Scale)
                    particle:SetRoll(math.Rand(-1, 1) * 100)
                    particle:SetColor(55, 55, 55)
                    particle:SetCollide(false)
                    particle:SetGravity(Vector(0, 0, 0))
                end

                particle = self.Emitter:Add("particles/fire1", Pos)

                if particle then
                    particle:SetDieTime(math.random(45, 85) / 10)
                    particle:SetVelocity(VectorRand() * 250 * self.Scale)
                    particle:SetAirResistance(0)
                    particle:SetStartAlpha(255)
                    particle:SetStartSize(50 * self.Scale)
                    particle:SetEndSize(math.Rand(5, 10) * self.Scale)
                    particle:SetRoll(math.Rand(-1, 1) * 180)
                    particle:SetColor(255, 255, 255)
                    particle:SetCollide(false)
                    particle:SetGravity(Vector(0, 0, -70))
                end

                if math.random(1, 5) > 3 then
                    for i = 0, 1 do
                        particle = self.Emitter:Add("particles/flamelet" .. math.random(1, 5), Pos + VectorRand() * 100 * self.Scale)

                        if particle then
                            particle:SetVelocity(self.Scale * 100 * VectorRand())
                            particle:SetDieTime(math.random(30, 60) / 10)
                            particle:SetAirResistance(0)
                            particle:SetStartAlpha(255)
                            particle:SetStartSize(50 * self.Scale)
                            particle:SetEndSize(math.Rand(2, 8) * self.Scale)
                            particle:SetRoll(math.Rand(-1, 1) * 180)
                            particle:SetColor(255, 255, 0)
                            particle:SetGravity(Vector(0, 0, -400))
                            particle:SetCollide(false)
                        end
                    end
                end
            end
        end

        if self.DieTime < CurTime() then
            if self.Emitter then
                self.Emitter:Finish()
            end

            return false
        end

        return true
    end

    if self.Emitter then
        self.Emitter:Finish()
    end

    return false
end

function EFFECT:Render()
end