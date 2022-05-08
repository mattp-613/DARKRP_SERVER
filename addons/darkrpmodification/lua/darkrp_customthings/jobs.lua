--[[---------------------------------------------------------------------------
DarkRP custom jobs
---------------------------------------------------------------------------
This file contains your custom jobs.
This file should also contain jobs from DarkRP that you edited.

Note: If you want to edit a default DarkRP job, first disable it in darkrp_config/disabled_defaults.lua
      Once you've done that, copy and paste the job to this file and edit it.

The default jobs can be found here:
https://github.com/FPtje/DarkRP/blob/master/gamemode/config/jobrelated.lua

For examples and explanation please visit this wiki page:
https://darkrp.miraheze.org/wiki/DarkRP:CustomJobFields

Add your custom jobs under the following line:
---------------------------------------------------------------------------]]

TEAM_CITIZEN = DarkRP.createJob("Citizen", {
    color = Color(20, 150, 20, 255),
    model = {
        "models/player/Group01/Female_01.mdl",
        "models/player/Group01/Female_02.mdl",
        "models/player/Group01/Female_03.mdl",
        "models/player/Group01/Female_04.mdl",
        "models/player/Group01/Female_06.mdl",
        "models/player/group01/male_01.mdl",
        "models/player/Group01/Male_02.mdl",
        "models/player/Group01/male_03.mdl",
        "models/player/Group01/Male_04.mdl",
        "models/player/Group01/Male_05.mdl",
        "models/player/Group01/Male_06.mdl",
        "models/player/Group01/Male_07.mdl",
        "models/player/Group01/Male_08.mdl",
        "models/player/Group01/Male_09.mdl"
    },
    description = [[The Citizen is the most basic level of society you can hold besides being a hobo. You have no specific role in city life. You can be a mechanic, a builder, a bus driver, or a professional vortigaunt exterminator.]],
    weapons = {},
    command = "citizen",
    max = 0,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Citizens",
})

TEAM_GANG = DarkRP.createJob("Gangster", {
    color = Color(75, 75, 75, 255),
    model = {
        "models/player/Group03/Female_01.mdl",
        "models/player/Group03/Female_02.mdl",
        "models/player/Group03/Female_03.mdl",
        "models/player/Group03/Female_04.mdl",
        "models/player/Group03/Female_06.mdl",
        "models/player/group03/male_01.mdl",
        "models/player/Group03/Male_02.mdl",
        "models/player/Group03/male_03.mdl",
        "models/player/Group03/Male_04.mdl",
        "models/player/Group03/Male_05.mdl",
        "models/player/Group03/Male_06.mdl",
        "models/player/Group03/Male_07.mdl",
        "models/player/Group03/Male_08.mdl",
        "models/player/Group03/Male_09.mdl"},
    description = [[The lowest person of crime. A gangster generally works for the Mob Boss who runs the crime family. The Mob Boss sets your agenda and you follow it or you might be punished.]],
    weapons = {"unarrest_stick", "weapon_glock2"},
    command = "gangster",
    max = 4,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Gangsters",
})

TEAM_MOB = DarkRP.createJob("Mob Boss", {
    color = Color(25, 25, 25, 255),
    model = "models/player/gman_high.mdl",
    description = [[The Mob Boss is the boss of the criminals in the city. With his power he coordinates the gangsters and forms an efficient crime organization.]],
    weapons = {"unarrest_stick", "weapon_glock2"},
    command = "mobboss",
    max = 1,
    salary = GAMEMODE.Config.normalsalary * 1.34,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Gangsters",
    PlayerDeath = function(ply, weapon, killer)
		ply:teamBan()
		ply:changeTeam(GAMEMODE.DefaultTeam, true)
		if killer:IsPlayer() then
			DarkRP.notifyAll(0, 4, "The mob Boss has been killed and is therefore demoted.")
		else
			DarkRP.notifyAll(0, 4, "The mob Boss has died and is therefore demoted.")
		end
	end
})

TEAM_GUN = DarkRP.createJob("Gun Dealer", {
    color = Color(255, 140, 0, 255),
    model = "models/player/monk.mdl",
    description = [[A Gun Dealer is the only person who can sell guns to other people. Make sure you aren't caught selling illegal firearms to the public! You might get arrested!]],
    weapons = {},
    command = "gundealer",
    max = 3,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Citizens",
})

TEAM_BLACK = DarkRP.createJob("Black Market Dealer", {
    color = Color(51, 51, 0, 255),
    model = "models/player/eli.mdl",
    description = [[A Black Market Dealer sells niche products for criminals to use. You can sell drugs with your drug lab to criminals for a health and speed bonus.]],
    weapons = {},
    command = "blackmarket",
    max = 3,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Criminals",
})

TEAM_MEDIC = DarkRP.createJob("Medic", {
    color = Color(47, 79, 79, 255),
    model = "models/player/kleiner.mdl",
    description = [[With your medical knowledge you work to restore players to full health. You can sell medical goods, health/suit chargers, and heal people with your medical kit item.]],
    weapons = {"weapon_medic_medkit"},
    command = "medic",
    max = 3,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    medic = true,
    category = "Citizens",
})

TEAM_POLICE = DarkRP.createJob("Civil Protection", {
    color = Color(25, 25, 170, 255),
    model = {"models/player/police.mdl", "models/player/police_fem.mdl"},
    description = [[The protector of every citizen that lives in the city. You have the power to arrest criminals and protect innocents. Hit a player with your arrest baton to put them in jail. Bash a player with a stunstick and they may learn to obey the law. The Battering Ram can break down the door of a criminal, with a warrant for their arrest. The Battering Ram can also unfreeze frozen props (if enabled). Type /wanted <name> to alert the public to the presence of a criminal. When a lockdown starts, you are given an MP5 and armor.]],
    weapons = {"arrest_stick", "unarrest_stick", "weapon_glock2", "stunstick", "door_ram", "weaponchecker"},
    command = "cp",
    max = 4,
    salary = GAMEMODE.Config.normalsalary * 4,
    admin = 0,
    vote = false,
    hasLicense = true,
    ammo = {
        ["pistol"] = 60,
    },
    category = "Civil Protection",
    --LOCKDOWN RIOT POLICE ACTIVATE!-- uncommented, because global variable won't work. I put this script inside
    --[[  if GetGlobalBool("DarkRP_LockDown") then
	PlayerSpawn = function(ply)
		ply:SetArmor(100)
		ply:Give("weapon_mp52", false)
		ply:GiveAmmo(60, "smg1", true)
	end
    end
    --]]
})

TEAM_CHIEF = DarkRP.createJob("Civil Protection Chief", {
    color = Color(20, 20, 255, 255),
    model = "models/player/barney.mdl",
    description = [[The Chief is the leader of the Civil Protection unit. Coordinate the police force to enforce law in the city. Type /jailpos to set the Jail Position. When a lockdown starts, you are given an MP5 and armor.]],
    weapons = {"arrest_stick", "unarrest_stick", "weapon_deagle2", "stunstick", "door_ram", "weaponchecker"},
    command = "chief",
    max = 1,
    salary = GAMEMODE.Config.normalsalary * 5,
    admin = 0,
    vote = false,
    hasLicense = true,
    chief = true,
    ammo = {
        ["pistol"] = 60,
    },
    category = "Civil Protection",
})

TEAM_MAYOR = DarkRP.createJob("Mayor", {
	color = Color(150, 20, 20, 255),
	model = {"models/player/breen.mdl", "models/player/mossman.mdl"},
	description = [[The Mayor of the city creates laws to serve the greater good of the people.
	If you are the mayor you may create and accept warrants.
	Type /wanted <name>  to warrant a player
	Type /jailpos to set the Jail Position
	Type /lockdown initiate a lockdown of the city.
	Everyone must be inside during a lockdown.
	/unlockdown to end a lockdown
	
	You are given a huge salary because you are expected
	to use the money to fund projects and help your citizens.
	Failure to do this will result in assassination.
	
	Example projects would be a welfare system, bribing
	the Mob Boss for protection, paying hobos to 
	build a park, or even arming your police officers
	and creating an opressive regime. The choice is 
	yours!]],
	weapons = {"arrest_stick", "unarrest_stick", "door_ram"},
	command = "mayor",
	max = 1,
	salary = GAMEMODE.Config.normalsalary * 20, -- original was 1.89
	admin = 0,
	vote = true,
	hasLicense = true,
	mayor = true,
	candemote = false,
	category = "Civil Protection",
	PlayerDeath = function(ply, weapon, killer)
		ply:teamBan()
		ply:changeTeam(GAMEMODE.DefaultTeam, true)
		if killer:IsPlayer() then
			DarkRP.notifyAll(0, 4, "The mayor has been killed and is therefore demoted.")
		else
			DarkRP.notifyAll(0, 4, "The mayor has died and is therefore demoted.")
		end
	end
})

TEAM_HOBO = DarkRP.createJob("Hobo", {
    color = Color(80, 45, 0, 255),
    model = "models/player/corpse1.mdl",
    description = [[The second lowest member of society. Everybody laughs at you. You have no home. Beg for your food and money, Mic spam and sing/scream loudly for everyone who passes to get money. Make your own wooden home somewhere in a corner or outside someone else's door]],
    weapons = {"weapon_bugbait"},
    command = "hobo",
    max = 0,
    salary = 0,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    hobo = true,
    category = "Citizens",
})

TEAM_HITMAN = DarkRP.createJob("Hitman", {
    color = Color(160, 160, 160, 255),
    model = "models/player/arctic",
    description = [[The professional killer, you kill for money. 
    You can do hits.
    /requesthit while looking at you will get someone to buy a hit from you
    /hitprice sets your price of hits.]],
    weapons = {"weapon_scout"},
    command = "hit_man",
    max = 2,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Criminals"
})

TEAM_HACKER = DarkRP.createJob("Hacker", {
    color = Color(0, 76, 153, 255),
    model = "models/player/magnusson.mdl",
    description = [[A professional hacker who can hack keypad doors.]],
    weapons = {"hacker_cracker"},
    command = "hacker",
    max = 2,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Criminals"
})

TEAM_THIEF = DarkRP.createJob("Thief", {
    color = Color(64, 64, 64, 255),
    model = "models/player/t_phoenix.mdl",
    description = [[A professional thief who can pick doors.]],
    weapons = {"thief_lockpick"},
    command = "thief",
    max = 2,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Criminals"
})

TEAM_SECURITY = DarkRP.createJob("Security Guard", {
    color = Color(102, 178, 255, 255),
    model = "models/player/odessa.mdl",
    description = [[A security guard can be hired by people to protect their business or themselves. You are licensed by the government to have weapons.]],
    weapons = {"stunstick", "weaponchecker"},
    command = "security",
    max = 3,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = true,
    category = "Other"
})

TEAM_ASIAN = DarkRP.createJob("Asian Store Owner", {
    color = Color(204, 204, 0, 255),
    model = "models/player/hostage/hostage_01.mdl",
    description = [[You are the town's Asian convenience store owner. You must speak in a broken English Asian accent, be racist towards black customers and shoot shoplifters without warning.]],
    weapons = {},
    command = "asian",
    max = 2,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Citizens"
})

TEAM_ASIAN = DarkRP.createJob("Vortigaunt", {
    color = Color(0, 51, 0, 255),
    model = "models/player/vortigaunt.mdl",
    description = [[You are a worthless alien. You have no rights, and are even lower than a hobo. The mayor can order genocides, people can shoot you for no reason. If you chose to play as a vortigaunt, prepare to be oppressed. You can form societies and bases with other vortigaunts and buy weapons and supplies from humans sympathetic to your cause. You can shoot back at people who shoot at you for being an alien, but that will start a vortigaunt genocide if you kill a human!]],
    weapons = {"weapon_bugbait"},
    command = "vortigaunt",
    max = 0,
    salary = GAMEMODE.Config.normalsalary * 0,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Other"
})

--[[---------------------------------------------------------------------------
Define which team joining players spawn into and what team you change to if demoted
---------------------------------------------------------------------------]]
GAMEMODE.DefaultTeam = TEAM_CITIZEN
--[[---------------------------------------------------------------------------
Define which teams belong to civil protection
Civil protection can set warrants, make people wanted and do some other police related things
---------------------------------------------------------------------------]]
GAMEMODE.CivilProtection = {
    [TEAM_POLICE] = true,
    [TEAM_CHIEF] = true,
    [TEAM_MAYOR] = true,
}
--[[---------------------------------------------------------------------------
Jobs that are hitmen (enables the hitman menu)
---------------------------------------------------------------------------]]
DarkRP.addHitmanTeam(TEAM_HITMAN)
