--[[---------------------------------------------------------------------------
DarkRP custom shipments and guns
---------------------------------------------------------------------------

This file contains your custom shipments and guns.
This file should also contain shipments and guns from DarkRP that you edited.

Note: If you want to edit a default DarkRP shipment, first disable it in darkrp_config/disabled_defaults.lua
    Once you've done that, copy and paste the shipment to this file and edit it.

The default shipments and guns can be found here:
https://github.com/FPtje/DarkRP/blob/master/gamemode/config/addentities.lua

For examples and explanation please visit this wiki page:
https://darkrp.miraheze.org/wiki/DarkRP:CustomShipmentFields


Add shipments and guns under the following line:
---------------------------------------------------------------------------]]
DarkRP.createShipment("Desert eagle", {
    model = "models/weapons/w_pist_deagle.mdl",
    entity = "weapon_deagle2",
    price = 215,
    amount = 10,
    separate = true,
    pricesep = 215,
    noship = true,
    allowed = {TEAM_GUN},
    category = "Pistols",
})

DarkRP.createShipment("Fiveseven", {
    model = "models/weapons/w_pist_fiveseven.mdl",
    entity = "weapon_fiveseven2",
    price = 0,
    amount = 10,
    separate = true,
    pricesep = 205,
    noship = true,
    allowed = {TEAM_GUN},
    category = "Pistols",
})

DarkRP.createShipment("Glock", {
    model = "models/weapons/w_pist_glock18.mdl",
    entity = "weapon_glock2",
    price = 0,
    amount = 10,
    separate = true,
    pricesep = 160,
    noship = true,
    allowed = {TEAM_GUN},
    category = "Pistols",
})

DarkRP.createShipment("P228", {
    model = "models/weapons/w_pist_p228.mdl",
    entity = "weapon_p2282",
    price = 0,
    amount = 10,
    separate = true,
    pricesep = 185,
    noship = true,
    allowed = {TEAM_GUN},
    category = "Pistols",
})

DarkRP.createShipment("AK47", {
    model = "models/weapons/w_rif_ak47.mdl",
    entity = "weapon_ak472",
    price = 2450,
    amount = 10,
    separate = false,
    pricesep = nil,
    noship = false,
    allowed = {TEAM_GUN},
    category = "Rifles",
})

DarkRP.createShipment("MP5", {
    model = "models/weapons/w_smg_mp5.mdl",
    entity = "weapon_mp52",
    price = 2200,
    amount = 10,
    separate = false,
    pricesep = nil,
    noship = false,
    allowed = {TEAM_GUN},
    category = "Rifles",
})

DarkRP.createShipment("M4", {
    model = "models/weapons/w_rif_m4a1.mdl",
    entity = "weapon_m42",
    price = 2450,
    amount = 10,
    separate = false,
    pricesep = nil,
    noship = false,
    allowed = {TEAM_GUN},
    category = "Rifles",
})

DarkRP.createShipment("Mac 10", {
    model = "models/weapons/w_smg_mac10.mdl",
    entity = "weapon_mac102",
    price = 2150,
    amount = 10,
    separate = false,
    pricesep = nil,
    noship = false,
    allowed = {TEAM_GUN}
})

DarkRP.createShipment("Pump shotgun", {
    model = "models/weapons/w_shot_m3super90.mdl",
    entity = "weapon_pumpshotgun2",
    price = 1750,
    amount = 10,
    separate = false,
    pricesep = nil,
    noship = false,
    allowed = {TEAM_GUN},
    category = "Shotguns",
})

DarkRP.createShipment("Silenced Automatic Sniper", {
    model = "models/weapons/w_snip_g3sg1.mdl",
    entity = "ls_sniper",
    price = 3750,
    amount = 10,
    separate = false,
    pricesep = nil,
    noship = false,
    allowed = {TEAM_GUN},
    category = "Snipers",
})

DarkRP.createShipment("Scout", {
    model = "models/weapons/w_snip_scout.mdl",
    entity = "weapon_pistol",
    price = 2500,
    amount = 10,
    separate = false,
    pricesep = nil,
    noship = false,
    allowed = {TEAM_GUN},
    category = "Snipers",
})

DarkRP.createShipment("Pistol", {
    model = "models/weapons/w_pistol.mdl",
    entity = "weapon_pistol",
    price = 1000,
    amount = 10,
    separate = false,
    pricesep = nil,
    noship = false,
    allowed = {TEAM_GUN},
    category = "HL2",
})

DarkRP.createShipment("SMG", {
    model = "models/weapons/w_smg1.mdl",
    entity = "weapon_smg1",
    price = 2200,
    amount = 10,
    separate = false,
    pricesep = nil,
    noship = false,
    allowed = {TEAM_GUN},
    category = "HL2",
})

DarkRP.createShipment("Shotgun", {
    model = "models/weapons/w_shotgun.mdl",
    entity = "weapon_shotgun",
    price = 1750,
    amount = 10,
    separate = false,
    pricesep = nil,
    noship = false,
    allowed = {TEAM_GUN},
    category = "HL2",
})

DarkRP.createCategory{
    name = "Other",
    categorises = "shipments",
    startExpanded = true,
    color = Color(0, 107, 0, 255),
    canSee = fp{fn.Id, true},
    sortOrder = 255,
}

DarkRP.createCategory{
    name = "Rifles",
    categorises = "shipments",
    startExpanded = true,
    color = Color(0, 107, 0, 255),
    canSee = fp{fn.Id, true},
    sortOrder = 100,
}

DarkRP.createCategory{
    name = "Shotguns",
    categorises = "shipments",
    startExpanded = true,
    color = Color(0, 107, 0, 255),
    canSee = fp{fn.Id, true},
    sortOrder = 101,
}

DarkRP.createCategory{
    name = "Snipers",
    categorises = "shipments",
    startExpanded = true,
    color = Color(0, 107, 0, 255),
    canSee = fp{fn.Id, true},
    sortOrder = 102,
}

DarkRP.createCategory{
    name = "Pistols",
    categorises = "weapons",
    startExpanded = true,
    color = Color(0, 107, 0, 255),
    canSee = fp{fn.Id, true},
    sortOrder = 100,
}

DarkRP.createCategory{
    name = "HL2",
    categorises = "shipments",
    startExpanded = true,
    color = Color(0, 107, 0, 255),
    canSee = fp{fn.Id, true},
    sortOrder = 103,
}

DarkRP.createCategory{
    name = "Other",
    categorises = "weapons",
    startExpanded = true,
    color = Color(0, 107, 0, 255),
    canSee = fp{fn.Id, true},
    sortOrder = 255,
}

DarkRP.createCategory{ --idk why this is here, but works anyways
    name = "Other",
    categorises = "vehicles",
    startExpanded = true,
    color = Color(0, 107, 0, 255),
    canSee = fp{fn.Id, true},
    sortOrder = 255,
}

--BLACK MARKET SHIPMENTS--

DarkRP.createShipment("Knife", {
    model = "models/weapons/w_knife_t.mdl",
    entity = "weapon_knife",
    price = 1000,
    amount = 10,
    separate = false,
    pricesep = nil,
    noship = false,
    allowed = {TEAM_BLACK},
    category = "Black Market Weapons",
})

DarkRP.createShipment("C4", {
    model = "models/weapons/w_c4.mdl",
    entity = "weapon_c4",
    price = 5000,
    amount = 1,
    separate = false,
    pricesep = nil, --may need to add this for no shipment
    noship = false, --may need to fix this, it may not work? idk
    allowed = {TEAM_BLACK},
    category = "Black Market Items",
})

DarkRP.createShipment("Crossbow", {
    model = "models/weapons/w_crossbow.mdl",
    entity = "weapon_crossbow",
    price = 5000,
    amount = 10,
    separate = false,
    pricesep = nil,
    noship = false,
    allowed = {TEAM_BLACK},
    category = "Black Market Weapons",
})

DarkRP.createShipment("RPG", {
    model = "models/weapons/w_rocket_launcher.mdl",
    entity = "weapon_rpg",
    price = 5000,
    amount = 10,
    separate = false,
    pricesep = nil,
    noship = false,
    allowed = {TEAM_BLACK},
    category = "Black Market Weapons",
})

DarkRP.createShipment("Lockpick", { --NEED TO FIX
    model = "models/weapons/w_crowbar.mdl",
    entity = "lockpick",
    price = 1250,
    amount = 10,
    separate = false,
    pricesep = nil,
    noship = false,
    allowed = {TEAM_BLACK},
    category = "Black Market Items",
})

DarkRP.createShipment("Crowbar", { --NEED TO FIX
    model = "models/weapons/w_crowbar.mdl",
    entity = "weapon_crowbar",
    price = 1175,
    amount = 10,
    separate = false,
    pricesep = nil,
    noship = false,
    allowed = {TEAM_BLACK},
    category = "Black Market Weapons",
})

DarkRP.createShipment("S.L.A.M", { --NEED TO FIX, HAVE TO BUY AMMO SEPERATELY!
    model = "models/weapons/w_slam.mdl",
    entity = "weapon_slam",
    price = 0,
    amount = 10,
    separate = false,
    pricesep = nil,
    noship = false,
    allowed = {TEAM_BLACK},
    category = "Black Market Weapons",
})

DarkRP.createShipment("Keypad Cracker", {
    model = "models/weapons/w_c4.mdl",
    entity = "keypad_cracker",
    price = 1500,
    amount = 10,
    separate = false,
    pricesep = nil,
    noship = false,
    allowed = {TEAM_BLACK},
    category = "Black Market Items",
})


DarkRP.createCategory{
    name = "Black Market Weapons",
    categorises = "shipments",
    startExpanded = true,
    color = Color(0, 107, 0, 255),
    canSee = fp{fn.Id, true},
    sortOrder = 255,
}

DarkRP.createCategory{
    name = "Black Market Items",
    categorises = "shipments",
    startExpanded = true,
    color = Color(0, 107, 0, 255),
    canSee = fp{fn.Id, true},
    sortOrder = 255,
}

DarkRP.createShipment("Health Vial", {
    model = "models/healthvial.mdl",
    entity = "item_healthvial",
    price = 500,
    amount = 10,
    separate = false,
    pricesep = nil,
    noship = false,
    allowed = {TEAM_MEDIC},
    category = "Medical Items",
})

DarkRP.createShipment("Health Kit", {
    model = "models/items/healthkit.mdl",
    entity = "item_healthkit",
    price = 1000,
    amount = 10,
    separate = false,
    pricesep = nil,
    noship = false,
    allowed = {TEAM_MEDIC},
    category = "Medical Items",
})

DarkRP.createShipment("Armor", {
    model = "models/items/battery.mdl",
    entity = "item_battery",
    price = 2000,
    amount = 10,
    separate = false,
    pricesep = nil,
    noship = false,
    allowed = {TEAM_MEDIC},
    category = "Medical Items",
})

DarkRP.createCategory{
    name = "Medical Items",
    categorises = "shipments",
    startExpanded = true,
    color = Color(0, 107, 0, 255),
    canSee = fp{fn.Id, true},
    sortOrder = 255,
}
--can add grenades to black market dealer later :)
