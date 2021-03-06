--[[---------------------------------------------------------------------------
DarkRP custom vehicles
---------------------------------------------------------------------------

This file contains your custom vehicles.
This file should also contain vehicles from DarkRP that you edited.

For examples and explanation please visit this wiki page:
https://darkrp.miraheze.org/wiki/DarkRP:Vehicles

If you want to keep the vehicle code and not comment it out you can add a vehicle to the "DarkRP.disabledDefaults["vehicles"]" section
in the disabled_defaults.lua in the "darkrp_config" folder

Add vehicles under the following line:
---------------------------------------------------------------------------]]
DarkRP.createVehicle({
	name = "Airboat",
	model = "models/airboat.mdl",
	price = 500
})
DarkRP.createVehicle({
	name = "Jeep",
	model = "models/buggy.mdl",
	price = 200
})

