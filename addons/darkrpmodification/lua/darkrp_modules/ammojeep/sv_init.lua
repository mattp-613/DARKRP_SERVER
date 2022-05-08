--disables ammo from being taken from the jeep
hook.Add( "PlayerUse", "ammojeep", function( ply, ent )
	if ( !IsValid( ent ) or !ent:IsVehicle() ) then return end
	
	if ( ply:GetEyeTrace().HitGroup == 5 ) then
		return false
	end
end )
