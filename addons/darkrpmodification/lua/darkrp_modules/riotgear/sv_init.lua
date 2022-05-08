if GetGlobalBool("DarkRP_LockDown") then
   for k, v in ipairs(player.GetAll()) do --CP LOCKDOWN GEAR tango
    	if v:Team() == TEAM_POLICE or v:Team() == TEAM_CHIEF or v:Team() == TEAM_MAYOR then
    		v:SetArmor(100)
		v:Give("weapon_mp52", false)
		v:GiveAmmo(60, "smg1", true)
		v:SelectWeapon("weapon_mp52") --remove if it gets annoying
		if not v:isChief() then
			v:SetModel("models/combine_soldier.mdl")
		end
	end
    end
end
