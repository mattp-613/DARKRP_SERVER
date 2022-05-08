--[[---------------------------------------------------------------------------
DarkRP custom entities
---------------------------------------------------------------------------

This file contains your custom entities.
This file should also contain entities from DarkRP that you edited.

Note: If you want to edit a default DarkRP entity, first disable it in darkrp_config/disabled_defaults.lua
    Once you've done that, copy and paste the entity to this file and edit it.

The default entities can be found here:
https://github.com/FPtje/DarkRP/blob/master/gamemode/config/addentities.lua

For examples and explanation please visit this wiki page:
https://darkrp.miraheze.org/wiki/DarkRP:CustomEntityFields

Add entities under the following line:
---------------------------------------------------------------------------]]
DarkRP.createEntity("Drug lab", {
    ent = "drug_lab",
    model = "models/props_lab/crematorcase.mdl",
    price = 400,
    max = 3,
    cmd = "buydruglab",
    allowed = TEAM_BLACK
})

DarkRP.createEntity("Tip Jar", {
    ent = "darkrp_tip_jar",
    model = "models/props_lab/jar01a.mdl",
    price = 0,
    max = 2,
    cmd = "tipjar",
    allowTools = true
})

DarkRP.createEntity("Gun lab", {
    ent = "gunlab",
    model = "models/props_c17/TrapPropeller_Engine.mdl",
    price = 500,
    max = 2,
    cmd = "buygunlab",
    allowed = TEAM_GUN
})

DarkRP.createEntity("Health Charger", {
    ent = "item_healthcharger",
    model = "models/props_combine/health_charger001.mdl",
    price = 3000,
    max = 1,
    cmd = "buyhealthcharger",
    allowed = TEAM_MEDIC,
    allowTools = true
})

DarkRP.createEntity("Armor Charger", {
    ent = "item_suitcharger",
    model = "models/props_combine/suit_charger001.mdl",
    price = 5000,
    max = 1,
    cmd = "buyarmorcharger",
    allowed = TEAM_MEDIC,
    allowTools = true
})	

DarkRP.createEntity("Topaz Printer", {
	ent = "topaz_money_printer",
	model = "models/props_c17/consolebox01a.mdl",
	price = 1000,
	max = 2,
	cmd = "buytopazprinter",
	category = "Printers"
})

DarkRP.createEntity("Amethyst Printer", {
	ent = "amethyst_money_printer",
	model = "models/props_c17/consolebox01a.mdl",
	price = 1500,
	max = 2,
	cmd = "buyamethystprinter",
	category = "Printers"
})

DarkRP.createEntity("Emerald Printer", {
	ent = "emerald_money_printer",
	model = "models/props_c17/consolebox01a.mdl",
	price = 2500,
	max = 2,
	cmd = "buyemeraldprinter",
	category = "Printers"
	
})

DarkRP.createEntity("Ruby Printer", {
	ent = "ruby_money_printer",
	model = "models/props_c17/consolebox01a.mdl",
	price = 5000,
	max = 2,
	cmd = "buyrubyprinter",
	category = "Printers"
})

DarkRP.createEntity("Sapphire Printer", {
	ent = "sapphire_money_printer",
	model = "models/props_c17/consolebox01a.mdl",
	price = 7500,
	max = 2,
	cmd = "buysapphireprinter",
	category = "Printers"
})

DarkRP.createCategory{
    name = "Printers",
    categorises = "entities",
    startExpanded = true,
    color = Color(0, 107, 0, 255),
    canSee = fp{fn.Id, true},
    sortOrder = 255,
}	
