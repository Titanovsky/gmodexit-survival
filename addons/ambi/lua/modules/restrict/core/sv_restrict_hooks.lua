hook.Add( 'PlayerSpawnProp', 'Ambi.Restrict.BlockedProps', function( ePly, sModel )
    if not Ambi.Restrict.Check( ePly, sModel, 'props', true ) then return false end
end )

hook.Add( 'PlayerSpawnRagdoll', 'Ambi.Restrict.BlockedRagdolls', function( ePly, sModel )
    if not Ambi.Restrict.Check( ePly, sModel, 'ragdolls', true ) then return false end
end )

hook.Add( 'PlayerSpawnSENT', 'Ambi.Restrict.BlockedSENTs', function( ePly, sClass ) 
    if not Ambi.Restrict.Check( ePly, sClass, 'sents', true ) then return false end
end )

hook.Add( 'PlayerSpawnNPC', 'Ambi.Restrict.BlockedNPCs', function( ePly, sClass, sWeapon ) 
    if not Ambi.Restrict.Check( ePly, sClass, 'npcs', true ) then return false end
end )

hook.Add( 'PlayerSpawnVehicle', 'Ambi.Restrict.BlockedVehicles', function( ePly, sModel, sName, tInfo )
    if not Ambi.Restrict.Check( ePly, sName, 'vehicles', true ) then return false end
end )

hook.Add( 'PlayerSpawnEffect', 'Ambi.Restrict.BlockedEffects', function( ePly, sModel ) 
    if not Ambi.Restrict.Check( ePly, sModel, 'effects', true ) then return false end
end )

hook.Add( 'PlayerSpawnSWEP', 'Ambi.Restrict.BlockedWeapons', function( ePly, sWeapon, tWeaponInfo ) 
    if not Ambi.Restrict.Check( ePly, sWeapon, 'sents', true ) then return false end
end )

hook.Add( 'PlayerGiveSWEP', 'Ambi.Restrict.BlockedWeapons', function( ePly, sWeapon ) 
    if not Ambi.Restrict.Check( ePly, sWeapon, 'weapons', true ) then return false end
end )

hook.Add( 'CanProperty', 'Ambi.Restrict.BlockedProperties', function( ePly, sProperty, eObj ) 
    if eObj.CPPIGetOwner and ( eObj:CPPIGetOwner() ~= ePly ) and not ePly:IsSuperAdmin() then ePly:ChatPrint( 'Не ваша энтитя!' ) return false end
    if not Ambi.Restrict.Check( ePly, sProperty, 'properties', true ) then return false end
end )

hook.Add( 'CanTool', 'Ambi.Restrict.BlockedTools', function( ePly, tTraceInfo, sTool ) 
    if not Ambi.Restrict.Check( ePly, sTool, 'tools', true ) then return false end -- todo: потом всё заполнить так, чтобы хуки рабоатли
end )

hook.Add( 'PhysgunPickup' , 'Ambi.Restrict.BlockedPhysgunPickup', function( ePly, eObj )
    if ePly:IsSuperAdmin() and not eObj:IsPlayer() then return true end
end )

hook.Add( 'OnPhysgunReload', 'Ambi.Restrict.Blocked', function( eWeapon, ePly )
    if not Ambi.Restrict.Config.can_physgun_reload then return false end
end )

hook.Add( 'GravGunPickupAllowed' , 'Ambi.Restrict.BlockedGravGunPickup', function( ePly, eObj )
    if ePly:IsSuperAdmin() then return true end
    
    if not Ambi.Restrict.Config.can_gravitygun_pickup then return false end
end )

hook.Add( 'GravGunPunt' , 'Ambi.Restrict.BlockedGravGunPunt', function( ePly, eObj )
    if ePly:IsSuperAdmin() then return true end
    
    if not Ambi.Restrict.Config.can_gravitygun_punt then return false end
end )

hook.Add( 'PlayerSay', 'Ambi.Restrict.BlockedChatSay', function( ePly, sText, bTeamChat )
    --if not ePly:IsAuth() then return false end
end )

hook.Add( 'PlayerCanSeePlayersChat', 'Ambi.Restrict.BlockedChatDistanceMessage', function( sText, bTeamChat, eListener, eTalker ) 
    if not ( eListener:GetPos():Distance( eTalker:GetPos() ) < Ambi.Restrict.Config.chat_max_distance ) then return false end
end )

hook.Add( 'PlayerCanHearPlayersVoice', 'Ambi.Restrict.BlockedVoiceDistance', function( eListener, eTalker )
    if not ( eListener:GetPos():Distance( eTalker:GetPos() ) < Ambi.Restrict.Config.voice_max_distance ) then return false end
end )

hook.Add( 'PlayerNoClip', 'Ambi.Restrict.BlockedNoClip', function( ePly )
    if not Ambi.Restrict.Config.can_noclip then return false end
end )

hook.Add( 'PlayerDeathSound', 'Ambi.Restrict.BlockedDeathSound', function()
    if not Ambi.Restrict.Config.can_death_sound then return false end
end )