return {





	['wood'] = {
    label = 'Wood',
    weight = 1,
    stack = true,
    close = true,
    description = nil
},

['metal'] = {
    label = 'Metal',
    weight = 1,
    stack = true,
    close = true,
    description = nil
},

['rope'] = {
    label = 'Rope',
    weight = 1,
    stack = true,
    close = true,
    description = nil
},

['shovel'] = {
    label = 'Shovel',
    weight = 1,
    stack = true,
    close = true,
    description = nil
},
	['handcuffs'] = {		
    label = 'handcuffs',
    weight = 1,
    },
	['lockpick'] = {
    label = 'Lockpick',
    weight = 160,
    client = {
	export = 'ars_policejob.breakCuffs'
    }
    },
	['testburger'] = {
		label = 'Test Burger',
		weight = 220,
		degrade = 60,
		client = {
			image = 'burger_chicken.png',
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			export = 'ox_inventory_examples.testburger'
		},
		server = {
			export = 'ox_inventory_examples.testburger',
			test = 'what an amazingly delicious burger, amirite?'
		},
		buttons = {
			{
				label = 'Lick it',
				action = function(slot)
					print('You licked the burger')
				end
			},
			{
				label = 'Squeeze it',
				action = function(slot)
					print('You squeezed the burger :(')
				end
			},
			{
				label = 'What do you call a vegan burger?',
				group = 'Hamburger Puns',
				action = function(slot)
					print('A misteak.')
				end
			},
			{
				label = 'What do frogs like to eat with their hamburgers?',
				group = 'Hamburger Puns',
				action = function(slot)
					print('French flies.')
				end
			},
			{
				label = 'Why were the burger and fries running?',
				group = 'Hamburger Puns',
				action = function(slot)
					print('Because they\'re fast food.')
				end
			}
		},
		consume = 0.3
	},
['mushroom_amanita']    = { label = 'Amanita',      weight = 50,  stack = true, close = true, description = 'Common mushroom' },
['mushroom_boletus']    = { label = 'Boletus',      weight = 60,  stack = true, close = true },
['mushroom_chanterelle']= { label = 'Chanterelle',  weight = 55,  stack = true, close = true },
['mushroom_truffle']    = { label = 'Black Truffle',weight = 80,  stack = true, close = true },
['mushroom_glowing']    = { label = 'Glowing Shroom',weight = 100,stack = true, close = true },
	['bandage'] = {
		label = 'Bandage',
		weight = 115,
		client = {
			anim = { dict = 'missheistdockssetup1clipboard@idle_a', clip = 'idle_a', flag = 49 },
			prop = { model = `prop_rolled_sock_02`, pos = vec3(-0.14, -0.14, -0.08), rot = vec3(-50.0, -50.0, 0.0) },
			disable = { move = true, car = true, combat = true },
			usetime = 2500,
		}
	},

	['black_money'] = {
		label = 'Dirty Money',
	},

	['burger'] = {
		label = 'Burger',
		weight = 220,
		client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			notification = 'You ate a delicious burger'
		},
	},

	['sprunk'] = {
		label = 'Sprunk',
		weight = 350,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_can_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'You quenched your thirst with a sprunk'
		}
	},

	['parachute'] = {
		label = 'Parachute',
		weight = 8000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 1500
		}
	},

	['garbage'] = {
		label = 'Garbage',
	},

	['paperbag'] = {
		label = 'Paper Bag',
		weight = 1,
		stack = false,
		close = false,
		consume = 0
	},

	['identification'] = {
		label = 'Identification',
		client = {
			image = 'card_id.png'
		}
	},

	['panties'] = {
		label = 'Knickers',
		weight = 10,
		consume = 0,
		client = {
			status = { thirst = -100000, stress = -25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_cs_panties_02`, pos = vec3(0.03, 0.0, 0.02), rot = vec3(0.0, -13.5, -1.5) },
			usetime = 2500,
		}
	},

	['lockpick'] = {
		label = 'Lockpick',
		weight = 160,
	},

	['phone'] = {
		label = 'Phone',
		weight = 190,
		stack = false,
		consume = 0,
		client = {
			add = function(total)
				if total > 0 then
					pcall(function() return exports.npwd:setPhoneDisabled(false) end)
				end
			end,

			remove = function(total)
				if total < 1 then
					pcall(function() return exports.npwd:setPhoneDisabled(true) end)
				end
			end
		}
	},

	['money'] = {
		label = 'Money',
	},

	['mustard'] = {
		label = 'Mustard',
		weight = 500,
		client = {
			status = { hunger = 25000, thirst = 25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_food_mustard`, pos = vec3(0.01, 0.0, -0.07), rot = vec3(1.0, 1.0, -1.5) },
			usetime = 2500,
			notification = 'You.. drank mustard'
		}
	},

	['water'] = {
		label = 'Water',
		weight = 500,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
			usetime = 2500,
			cancel = true,
			notification = 'You drank some refreshing water'
		}
	},

	['radio'] = {
		label = 'Radio',
		weight = 1000,
		stack = false,
		allowArmed = true
	},

	['armour'] = {
		label = 'Bulletproof Vest',
		weight = 3000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 3500
		}
	},

	['clothing'] = {
		label = 'Clothing',
		consume = 0,
	},

	['mastercard'] = {
		label = 'Fleeca Card',
		stack = false,
		weight = 10,
		client = {
			image = 'card_bank.png'
		}
	},

	['scrapmetal'] = {
		label = 'Scrap Metal',
		weight = 80,
	},

	["camera_viewer"] = {
		label = "Camera Viewer",
		weight = 1000,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "camera_viewer.png",
		}
	},

	["usb_green"] = {
		label = "USB Drive",
		weight = 1000,
		stack = true,
		close = false,
		description = "A green USB flash drive",
		client = {
			image = "usb_green.png",
		}
	},

	["farm_mango"] = {
		label = "Mango",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "farm_mango.png",
		}
	},

	["red_cats"] = {
		label = "red cats",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "kitty_red.png",
		}
	},

	["walkstick"] = {
		label = "Walking Stick",
		weight = 1000,
		stack = true,
		close = true,
		description = "Walking stick for ya'll grannies out there.. HAHA",
		client = {
			image = "walkstick.png",
		}
	},

	["chop-rim"] = {
		label = "Rim",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chop-rim.png",
		}
	},

	["cookedveganburgerpatty"] = {
		label = "Cooked Vegan Burger patty",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "cookedveganburgerpatty.png",
		}
	},

	["farm_apple_juice"] = {
		label = "Apple Juice",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "farm_apple_juice.png",
		}
	},

	["raw_ham"] = {
		label = "Raw Ham",
		weight = 250,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "raw_ham.png",
		}
	},

	["tomato_ketchup"] = {
		label = "Tomato Ketchup",
		weight = 100,
		stack = true,
		close = false,
		description = "Tomato Ketchup Yeah",
		client = {
			image = "tomato_ketchup.png",
		}
	},

	["nos"] = {
		label = "NOS Bottle",
		weight = 300,
		stack = false,
		close = true,
		description = "A full bottle of NOS",
		client = {
			image = "nos.png",
		}
	},

	["red_snapper"] = {
		label = "Red Snapper",
		weight = 2500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "red_snapper.png",
		}
	},

	["dualpress"] = {
		label = "Dual Pill Press",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "pillpress.png",
		}
	},

	["mining_storage"] = {
		label = "Mining Storage",
		weight = 500,
		stack = false,
		close = true,
		description = "Classic's washing pan",
		client = {
			image = "mining_storage.png",
		}
	},

	["schnapps"] = {
		label = "Peach Schnapps",
		weight = 200,
		stack = true,
		close = true,
		description = "A bottle of Peach Schnapps",
		client = {
			status = {
				thirst = 25,
			},
			image = "schnapps.png",
		}
	},

	["skin_deer_low"] = {
		label = "Worn Deer Pelt",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "skin_deer_low.png",
		}
	},

	["finescale"] = {
		label = "Fine Scale",
		weight = 1000,
		stack = true,
		close = false,
		description = "Scale Used for Fine Powders and Materials.",
		client = {
			image = "finescale.png",
		}
	},

	["noscan"] = {
		label = "Empty NOS Bottle",
		weight = 300,
		stack = true,
		close = true,
		description = "An Empty bottle of NOS",
		client = {
			image = "noscan.png",
		}
	},

	["pocketwatch"] = {
		label = "Pocket Watch",
		weight = 200,
		stack = true,
		close = true,
		description = "A pocket watch",
		client = {
			image = "pocketwatch.png",
		}
	},

	["fnx45_part_3"] = {
		label = "fnx45 part",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "fnx45_part_3.png",
		}
	},

	["batbase"] = {
		label = "Bat Base",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "batbase.png",
		}
	},

	["weed_amnesia_seed"] = {
		label = "Amnesia Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of Amnesia",
		client = {
			image = "weed_seed.png",
		}
	},

	["ecola"] = {
		label = "eCola",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				thirst = 29,
			},
			image = "ecola.png",
		}
	},

	["worms"] = {
		label = "Worms",
		weight = 10,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "worms.png",
		}
	},

	["red_xtc3"] = {
		label = "Red XTC",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "unstamped_red3.png",
		}
	},

	["brokenphone"] = {
		label = "Broken Phone",
		weight = 200,
		stack = true,
		close = false,
		description = "Broken Phone",
		client = {
			image = "brokenphone.png",
		}
	},

	["skybar_caramel"] = {
		label = "Caramel",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "skybar_caramel.png",
		}
	},

	["origami6"] = {
		label = "Origami Pig",
		weight = 100,
		stack = false,
		close = 1,
		description = "",
		client = {
			image = "origami6.png",
		}
	},

	["white_pl3"] = {
		label = "White pl",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "PL_white3.png",
		}
	},

	["chewyblunt"] = {
		label = "Chewy",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "blunt.png",
		}
	},

	["fakedrivelicence"] = {
		label = "Fake Drivers Licence",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "fakedriver.png",
		}
	},

	["rolex"] = {
		label = "Golden Watch",
		weight = 400,
		stack = true,
		close = true,
		description = "A golden watch seems like the jackpot to me!",
		client = {
			image = "rolex.png",
		}
	},

	["white_aliens2"] = {
		label = "White aliens",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "alien_white2.png",
		}
	},

	["speedball"] = {
		label = "The SpeedBall",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				thirst = 49,
			},
			image = "speedball.png",
		}
	},

	["white_trolls3"] = {
		label = "White trolls",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "troll_white3.png",
		}
	},

	["nachos"] = {
		label = "Nachos",
		weight = 200,
		stack = true,
		close = true,
		description = "A bag of Nachos",
		client = {
			image = "nachos.png",
		}
	},

	["skybar_strawberry"] = {
		label = "Strawberry",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "skybar_strawberry.png",
		}
	},

	["tires"] = {
		label = "Drift Smoke Tires",
		weight = 300,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "tires.png",
		}
	},

	["skybar_orange_juice"] = {
		label = "Orange Juice",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "skybar_orange_juice.png",
		}
	},

	["stingray"] = {
		label = "Stingray",
		weight = 1000,
		stack = true,
		close = false,
		description = "A Fish",
		client = {
			image = "stingray.png",
		}
	},

	["firework1"] = {
		label = "2Brothers",
		weight = 1000,
		stack = true,
		close = true,
		description = "Fireworks",
		client = {
			image = "firework1.png",
		}
	},

	["emerald"] = {
		label = "Emerald",
		weight = 100,
		stack = true,
		close = false,
		description = "A Emerald that shimmers",
		client = {
			image = "emerald.png",
		}
	},

	["blue_aliens3"] = {
		label = "blue aliens",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "alien_blue3.png",
		}
	},

	["red_aliens"] = {
		label = "red aliens",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "alien_red.png",
		}
	},

	["steel"] = {
		label = "Steel",
		weight = 100,
		stack = true,
		close = false,
		description = "Nice piece of metal that you can probably use for something",
		client = {
			image = "steel.png",
		}
	},

	["filled_evidence_bag"] = {
		label = "Evidence Bag",
		weight = 200,
		stack = false,
		close = false,
		description = "A filled evidence bag to see who committed the crime >:(",
		client = {
			image = "evidence.png",
		}
	},

	["orange"] = {
		label = "Orange",
		weight = 200,
		stack = true,
		close = false,
		description = "An Orange.",
		client = {
			image = "orange.png",
		}
	},

	["bag"] = {
		label = "bag for something",
		weight = 1500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "bag.png",
		}
	},

	["empty_weed_bag"] = {
		label = "Empty Weed Bag",
		weight = 0,
		stack = true,
		close = true,
		description = "A small empty bag",
		client = {
			image = "weed_baggy_empty.png",
		}
	},

	["seat"] = {
		label = "Seat Cosmetics",
		weight = 300,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "seat.png",
		}
	},

	["phone_blue"] = {
		label = "Blue Phone",
		weight = 700,
		stack = false,
		close = true,
		description = "Neat blue phone ya got there",
		client = {
			image = "phone_blue.png",
		}
	},

	["broken_handcuffs"] = {
		label = "Broken Handcuffs",
		weight = 100,
		stack = true,
		close = true,
		description = "It's broken, maybe you can repair it?",
		client = {
			image = "broken_handcuffs.png",
		}
	},

	["huntingbait"] = {
		label = "Hunting Bait",
		weight = 150,
		stack = true,
		close = true,
		description = "Hunting Bait",
		client = {
			image = "huntingbait.png",
		}
	},

	["weed_ak47_seed"] = {
		label = "AK47 Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of AK47",
		client = {
			image = "weed_seed.png",
		}
	},

	["heroinburner"] = {
		label = "Heroin Burner",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "gta5phone.png",
		}
	},

	["morphine_prescription"] = {
		label = "Morphin Prescription",
		weight = 250,
		stack = true,
		close = false,
		description = "I Cant Feel Anything",
		client = {
			image = "adderalprescription.png",
		}
	},

	["debarkedlog"] = {
		label = "Debarked Log",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "debarkedlog.png",
		}
	},

	["blue_playboys"] = {
		label = "blue Fruit",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "playboy_blue.png",
		}
	},

	["shrooms"] = {
		label = "Shrooms",
		weight = 250,
		stack = true,
		close = false,
		description = "Holy Shit ake mushroom",
		client = {
			image = "shrooms.png",
		}
	},

	["orange_cats4"] = {
		label = "orange cats",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "kitty_orange4.png",
		}
	},

	["wraithradar"] = {
		label = "Wraith Radar Remote",
		weight = 100,
		stack = true,
		close = true,
		description = "Remote for Police Radar Control",
		client = {
			image = "wraithradar.png",
		}
	},

	["chop-bumper"] = {
		label = "Bumper",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chop-bumper.png",
		}
	},

	["avocatcard"] = {
		label = "avocat card",
		weight = 1000,
		stack = true,
		close = true,
		description = "Might be useful to have when robbing Bobcat Security",
		client = {
			image = "avocatcard.png",
		}
	},

	["receipt"] = {
		label = "Receipt",
		weight = 1,
		stack = true,
		close = true,
		client = {
			image = "receipt.png",
		}
	},

	["methkey"] = {
		label = "Key A",
		weight = 200,
		stack = true,
		close = false,
		description = "Random Key, with \"Walter\" Engraved on the Back...",
		client = {
			image = "key.png",
		}
	},

	["origami3"] = {
		label = "Origami Poop",
		weight = 100,
		stack = false,
		close = 1,
		description = "",
		client = {
			image = "origami3.png",
		}
	},

	["mdwoods"] = {
		label = "MDWOODS",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "mdwoods.png",
		}
	},

	["r-espressomartini"] = {
		label = "Espresso Martini",
		weight = 100,
		stack = true,
		close = true,
		description = "An Espresso Martini Cocktail",
		client = {
			image = "v-espressomartini.png",
		}
	},

	["scotch"] = {
		label = "Scotch",
		weight = 200,
		stack = true,
		close = true,
		description = "A bottle of Scotch",
		client = {
			status = {
				thirst = 29,
			},
			image = "scotch.png",
		}
	},

	["emsbag"] = {
		label = "emsbag",
		weight = 150,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "emsbag.png",
		}
	},

	["red_xtc2"] = {
		label = "Red XTC",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "unstamped_red2.png",
		}
	},

	["medfruits"] = {
		label = "Mediterranean Fruits",
		weight = 200,
		stack = true,
		close = true,
		client = {
			image = "medfruits.png",
		}
	},

	["tuna"] = {
		label = "Tuna",
		weight = 10000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "tuna.png",
		}
	},

	["chop-internals"] = {
		label = "Internals",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chop-internals.png",
		}
	},

	["casino_member"] = {
		label = "Casino Membership",
		weight = 500,
		stack = false,
		close = false,
		description = "Diamond Casino Member Card",
		client = {
			image = "casino_member.png",
		}
	},

	["rosso"] = {
		label = "Rosso Wine",
		weight = 300,
		stack = true,
		close = true,
		client = {
			image = "rosso.png",
		}
	},

	["weed_og-kush_seed"] = {
		label = "OGKush Seed",
		weight = 100,
		stack = true,
		close = true,
		description = "A weed seed of OG Kush",
		client = {
			image = "weed_seed.png",
		}
	},

	["chop-hood"] = {
		label = "Hood",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chop-hood.png",
		}
	},

	["hydrochloric_acid"] = {
		label = "Hydrochloric Acid",
		weight = 500,
		stack = true,
		close = true,
		description = "Chemicals, handle with care!",
		client = {
			image = "hydrochloric_acid.png",
		}
	},

	["headlights"] = {
		label = "Xenon Headlights",
		weight = 300,
		stack = false,
		close = true,
		description = "8k HID headlights",
		client = {
			image = "headlights.png",
		}
	},

	["phone_case_1"] = {
		label = "Phone Case 1",
		weight = 200,
		stack = false,
		close = true,
		description = "Stylish phone case 1",
		client = {
			image = "phone_case_1.png",
		}
	},

	["stone"] = {
		label = "Stone",
		weight = 1000,
		stack = true,
		close = false,
		description = "Stone woo",
		client = {
			image = "stone.png",
		}
	},

	["origami18"] = {
		label = "Origami Mouse",
		weight = 100,
		stack = false,
		close = 1,
		description = "",
		client = {
			image = "origami18.png",
		}
	},

	["ecolalight"] = {
		label = "eCola Light",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				thirst = 20,
			},
			image = "ecolalight.png",
		}
	},

	["payticket"] = {
		label = "Receipt",
		weight = 150,
		stack = true,
		close = false,
		description = "Cash these in at the bank!",
		client = {
			image = "ticket.png",
		}
	},

	["burger-tomato"] = {
		label = "Tomato",
		weight = 125,
		stack = true,
		close = true,
		description = "An Ingredient",
		client = {
			image = "tomato.png",
		}
	},

	["ducttape"] = {
		label = "Duct Tape",
		weight = 300,
		stack = false,
		close = true,
		description = "Good for quick fixes",
		client = {
			image = "bodyrepair.png",
		}
	},

	["bluntwrap"] = {
		label = "Blunt Wrap",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "bluntwrap.png",
		}
	},

	["thermite_bomb"] = {
		label = "bomb for something",
		weight = 1500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cutter.png",
		}
	},

	["pig_leather"] = {
		label = "Pig Skin",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "pig_leather.png",
		}
	},

	["tequila-crate"] = {
		label = "Tequila Crate",
		weight = 3000,
		stack = true,
		close = true,
		description = "A Crate of 8 Tequila Bottles",
		client = {
			image = "tequila-crate.png",
		}
	},

	["xtcburner"] = {
		label = "XTC Burner",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "gta5phone.png",
		}
	},

	["tomato_paste"] = {
		label = "Tomato Paste",
		weight = 100,
		stack = true,
		close = false,
		description = "Tomato Paste Yeah",
		client = {
			image = "tomato_paste.png",
		}
	},

	["origami1"] = {
		label = "Origami Scorpion",
		weight = 100,
		stack = false,
		close = 1,
		description = "",
		client = {
			image = "origami1.png",
		}
	},

	["blue_xtc2"] = {
		label = "Blue XTC",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "unstamped_blue2.png",
		}
	},

	["baggedcracked"] = {
		label = "Bag Of Crack",
		weight = 250,
		stack = true,
		close = false,
		description = "Bags Of Crack",
		client = {
			image = "crackbag1.png",
		}
	},

	["highnoon"] = {
		label = "Highnoon",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				thirst = 46,
			},
			image = "highnoon.png",
		}
	},

	["skybar_tequila"] = {
		label = "Tequila",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "skybar_tequila.png",
		}
	},

	["burgerpatty"] = {
		label = "Burger Patty",
		weight = 500,
		stack = true,
		close = false,
		description = "Raw Patty",
		client = {
			image = "burgerpatty.png",
		}
	},

	["piranha"] = {
		label = "Piranha",
		weight = 1500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "piranha.png",
		}
	},

	["white_trolls4"] = {
		label = "White trolls",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "troll_white4.png",
		}
	},

	["eggplant"] = {
		label = "Eggplant",
		weight = 50,
		stack = true,
		close = false,
		description = "Eggplant Yeah",
		client = {
			image = "eggplant.png",
		}
	},

	["meatdeer"] = {
		label = "Deer Horns",
		weight = 100,
		stack = true,
		close = false,
		description = "Deer Horns",
		client = {
			image = "deerhorns.png",
		}
	},

	["red_aliens4"] = {
		label = "red aliens",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "alien_red4.png",
		}
	},

	["camera_pd"] = {
		label = "PD Camera",
		weight = 3000,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "camera_pd.png",
		}
	},

	["xanax"] = {
		label = "Zany",
		weight = 100,
		stack = true,
		close = true,
		description = "Ahhh Sweet Comfort",
		client = {
			image = "xanax.png",
		}
	},

	["treasurekey"] = {
		label = "Treasure key",
		weight = 200,
		stack = true,
		close = false,
		description = "A key? Maybe for treasure",
		client = {
			image = "treasurekey.png",
		}
	},

	["bolt_cutter"] = {
		label = "Bolt Cutter",
		weight = 50,
		stack = true,
		close = true,
		description = "Wanna cut some metal items ?",
		client = {
			image = "bolt_cutter.png",
		}
	},

	["cheesecake"] = {
		label = "Cheese Cake",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 10,
			},
			image = "cheesecake.png",
		}
	},

	["mozz"] = {
		label = "Mozzarella",
		weight = 100,
		stack = true,
		close = true,
		description = "Shredded mozzarella",
		client = {
			image = "mozzarella.png",
		}
	},

	["emerald_necklace"] = {
		label = "Emerald Necklace",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "emerald_necklace.png",
		}
	},

	["usb_red"] = {
		label = "USB Drive",
		weight = 1000,
		stack = true,
		close = false,
		description = "A red USB flash drive",
		client = {
			image = "usb_red.png",
		}
	},

	["specialchocolate"] = {
		label = "Special Chocolate",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "specialchocolate.png",
		}
	},

	["weed_purple-haze_seed"] = {
		label = "Purple Haze Seed",
		weight = 100,
		stack = true,
		close = true,
		description = "A weed seed of Purple Haze",
		client = {
			image = "weed_seed.png",
		}
	},

	["laptop_red"] = {
		label = "Laptop Pacific",
		weight = 1000,
		stack = false,
		close = true,
		description = "A laptop that you got from Plague",
		client = {
			image = "laptop_red.png",
		}
	},

	["sweetredpapper"] = {
		label = "Sweet Red Papper",
		weight = 100,
		stack = true,
		close = false,
		description = "Sweet Red Papper Yeah",
		client = {
			image = "sweetredpapper.png",
		}
	},

	["fruit-box"] = {
		label = "Fruit Box",
		weight = 2000,
		stack = true,
		close = true,
		description = "A Crate of 20 Fruit Mixes for Drinks",
		client = {
			image = "fruit-box.png",
		}
	},

	["farm_fertilizer"] = {
		label = "Agricultural Fertilizer",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "farm_fertilizer.png",
		}
	},

	["tree_lumber"] = {
		label = "Lumber",
		weight = 50,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "lumber.png",
		}
	},

	["pineapplesheet"] = {
		label = "Pineapple Sheet",
		weight = 100,
		stack = true,
		close = true,
		description = "When You Hold It Upside It Means Something Different",
		client = {
			image = "pineapplesheet.png",
		}
	},

	["pacific_key3"] = {
		label = "Bank Data Key",
		weight = 1000,
		stack = false,
		close = true,
		description = "A data key stolen from the pacific bank.",
		client = {
			image = "pacific_key3.png",
		}
	},

	["ruby"] = {
		label = "Ruby",
		weight = 100,
		stack = true,
		close = false,
		description = "A Ruby that shimmers",
		client = {
			image = "ruby.png",
		}
	},

	["chop-seat"] = {
		label = "Seat",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chop-seat.png",
		}
	},

	["cocainekey"] = {
		label = "Key B",
		weight = 200,
		stack = true,
		close = false,
		description = "Random Key, with a \"Razorblade\" Engraved on the Back...",
		client = {
			image = "key.png",
		}
	},

	["ephedrine"] = {
		label = "Ephedrine",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "ephedrine.png",
		}
	},

	["lsd_vial_three"] = {
		label = "Tier 3 LSD Vial",
		weight = 100,
		stack = true,
		close = true,
		description = "Vial Of LSD",
		client = {
			image = "lsd_vial_three.png",
		}
	},

	["cactusbulb"] = {
		label = "Cactus Bulb",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cactusbulb.png",
		}
	},

	["white_xtc2"] = {
		label = "White XTC",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "unstamped_white2.png",
		}
	},

	["alla"] = {
		label = "Alla Sauce",
		weight = 150,
		stack = true,
		close = true,
		client = {
			image = "alla.png",
		}
	},

	["goldearring"] = {
		label = "Golden Earrings",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "gold_earring.png",
		}
	},

	["orange_xtc2"] = {
		label = "Orange XTC",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "unstamped_orange2.png",
		}
	},

	["vodka"] = {
		label = "Vodka",
		weight = 500,
		stack = true,
		close = true,
		description = "For all the thirsty out there",
		client = {
			image = "vodka.png",
		}
	},

	["orange_aliens"] = {
		label = "orange aliens",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "alien_orange.png",
		}
	},

	["camera_citizen"] = {
		label = "Camera",
		weight = 3000,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "camera_citizen.png",
		}
	},

	["deer_horn"] = {
		label = "Deer Horn",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "deer_horn.png",
		}
	},

	["skybar_chocolate"] = {
		label = "Chocolate",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "skybar_chocolate.png",
		}
	},

	["margheritabox"] = {
		label = "Margherita Box",
		weight = 500,
		stack = true,
		close = true,
		description = "A fresh pizza box",
		client = {
			image = "pizza_box.png",
		}
	},

	["ccookie"] = {
		label = "Cranberry Cookie",
		weight = 200,
		stack = true,
		close = true,
		description = "Cranberry Cookie Cocktail",
		client = {
			status = {
				thirst = 22,
			},
			image = "ccookie.png",
		}
	},

	["whiskey-box"] = {
		label = "Whiskey Box",
		weight = 1600,
		stack = true,
		close = true,
		description = "A Box of 6 Whiskey Bottles",
		client = {
			image = "whiskey-box.png",
		}
	},

	["phone_white"] = {
		label = "White Phone",
		weight = 700,
		stack = false,
		close = true,
		description = "Neat white phone ya got there",
		client = {
			image = "phone_white.png",
		}
	},

	["marinara"] = {
		label = "Marinara Sauce",
		weight = 150,
		stack = true,
		close = true,
		client = {
			image = "marinara.png",
		}
	},

	["diamond"] = {
		label = "Diamond",
		weight = 100,
		stack = true,
		close = false,
		description = "A Diamond that shimmers",
		client = {
			image = "diamond.png",
		}
	},

	["blue_pl2"] = {
		label = "blue pl",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "PL_blue2.png",
		}
	},

	["mdt_tablet"] = {
		label = "MDT Tablet",
		weight = 500,
		stack = true,
		close = true,
		description = "A police-issued tablet to access the MDT system",
		client = {
			image = "mdt_tablet.png",
		}
	},

	["bscoke"] = {
		label = "BurgerShot Coke",
		weight = 200,
		stack = true,
		close = true,
		description = "BurgerShot Cola",
		client = {
			status = {
				thirst = 44,
			},
			image = "burger-softdrink.png",
		}
	},

	["shot-redsnapper"] = {
		label = "RedSnapper Shot",
		weight = 200,
		stack = true,
		close = true,
		description = "A Shot of Red Snapper.",
		client = {
			image = "shot-redsnapper.png",
		}
	},

	["police_stormram"] = {
		label = "Stormram",
		weight = 18000,
		stack = true,
		close = true,
		description = "A nice tool to break into doors",
		client = {
			image = "police_stormram.png",
		}
	},

	["lsd_one_vial"] = {
		label = "Tier 1 LSD Vial",
		weight = 100,
		stack = true,
		close = true,
		description = "Vial Of LSD",
		client = {
			image = "lsd_one_vial.png",
		}
	},

	["rawburgerpatty"] = {
		label = "Burger patty",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "rawburgerpatty.png",
		}
	},

	["lysergic_acid"] = {
		label = "Lysergic Acid",
		weight = 100,
		stack = true,
		close = true,
		description = "Acid to make acid?",
		client = {
			image = "lysergic_acid.png",
		}
	},

	["whiskey"] = {
		label = "Whiskey",
		weight = 500,
		stack = true,
		close = true,
		description = "For all the thirsty out there",
		client = {
			image = "whiskey.png",
		}
	},

	["silverearring"] = {
		label = "Silver Earrings",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "silver_earring.png",
		}
	},

	["bigfruit"] = {
		label = "The Big Fruit",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				thirst = 49,
			},
			image = "bigfruit.png",
		}
	},

	["farm_cucumber_harvested"] = {
		label = "Cucumber",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "farm_cucumber_harvested.png",
		}
	},

	["samsungphone"] = {
		label = "Samsung S10",
		weight = 500,
		stack = true,
		close = true,
		description = "Very expensive phone",
		client = {
			image = "samsungphone.png",
		}
	},

	["r-class"] = {
		label = "Class",
		weight = 100,
		stack = true,
		close = true,
		description = "Class Non-Alcoholic Cocktail",
		client = {
			image = "v-class.png",
		}
	},

	["stripedbass"] = {
		label = "Striped Bass",
		weight = 1000,
		stack = true,
		close = false,
		description = "A Fish",
		client = {
			image = "stripedbass.png",
		}
	},

	["rum"] = {
		label = "Rum",
		weight = 200,
		stack = true,
		close = true,
		description = "A bottle of Rum",
		client = {
			status = {
				thirst = 28,
			},
			image = "rum.png",
		}
	},

	["gauva"] = {
		label = "Gauva",
		weight = 100,
		stack = true,
		close = true,
		description = "Gauva Yeah",
		client = {
			image = "gauva.png",
		}
	},

	["meatlion"] = {
		label = "Cougar Claws",
		weight = 100,
		stack = true,
		close = false,
		description = "Cougar Claw",
		client = {
			image = "cougarclaw.png",
		}
	},

	["smiley_tabs"] = {
		label = "Smiley tabs",
		weight = 100,
		stack = true,
		close = true,
		description = "You Are Cute When You Smile - Creepy Dudes",
		client = {
			image = "smiley_tabs.png",
		}
	},

	["mango"] = {
		label = "Mango",
		weight = 100,
		stack = true,
		close = true,
		description = "Orange Yeah",
		client = {
			image = "mango.png",
		}
	},

	["stickynote"] = {
		label = "Sticky note",
		weight = 100,
		stack = false,
		close = false,
		description = "Sometimes handy to remember something :)",
		client = {
			image = "stickynote.png",
		}
	},

	["skybar_ban_straw_juice"] = {
		label = "Banana & Strawberry Juice",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "skybar_ban_straw_juice.png",
		}
	},

	["white_uninflated_balloon"] = {
		label = "White Uninflated Balloon",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "white_uninflated_balloon.png",
		}
	},

	["metal_spring"] = {
		label = "Metal Spring",
		weight = 150,
		stack = true,
		close = true,
		description = "Durable spring used in weapon mechanisms",
		client = {
			image = "metal_spring.png",
		}
	},

	["zipties"] = {
		label = "Zipties",
		weight = 200,
		stack = true,
		close = true,
		description = "Plastic zipties",
		client = {
			image = "zipties.png",
		}
	},

	["farm_lemon"] = {
		label = "Limon",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "farm_lemon.png",
		}
	},

	["paintinge"] = {
		label = "Painting #1",
		weight = 2100,
		stack = false,
		close = false,
		description = "Art Gallery Painting #1",
		client = {
			image = "paintinge.png",
		}
	},

	["farm_apple"] = {
		label = "Apple",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "farm_apple.png",
		}
	},

	["bakingsoda"] = {
		label = "Baking Soda",
		weight = 300,
		stack = true,
		close = false,
		description = "Household Baking Soda!",
		client = {
			image = "bakingsoda.png",
		}
	},

	["heroin_ready"] = {
		label = "Heroin Syringe",
		weight = 250,
		stack = true,
		close = false,
		description = "Go On, Chase The Dragon",
		client = {
			image = "heroin_ready.png",
		}
	},

	["10pnuggets"] = {
		label = "10 Chicken Nuggets",
		weight = 200,
		stack = true,
		close = true,
		description = "Nice to eat",
		client = {
			image = "10pnuggets.png",
		}
	},

	["grouper"] = {
		label = "Grouper",
		weight = 3500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "grouper.png",
		}
	},

	["realestatetablet"] = {
		label = "Real Estate Tablet",
		weight = 100,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "realestatetablet.png",
		}
	},

	["silverore"] = {
		label = "Silver Ore",
		weight = 1000,
		stack = true,
		close = false,
		description = "Silver Ore",
		client = {
			image = "silverore.png",
		}
	},

	["orange_xtc4"] = {
		label = "Orange XTC",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "unstamped_orange4.png",
		}
	},

	["farm_shovel"] = {
		label = "Shovel",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "farm_shovel.png",
		}
	},

	["white_trolls"] = {
		label = "White trolls",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "troll_white.png",
		}
	},

	["phone_case_5"] = {
		label = "Phone Case 5",
		weight = 200,
		stack = false,
		close = true,
		description = "Stylish phone case 5",
		client = {
			image = "phone_case_5.png",
		}
	},

	["skybar_berry_hydrating"] = {
		label = "Berry Hydrating",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "skybar_berry_hydrating.png",
		}
	},

	["suspension4"] = {
		label = "Tier 4 Suspension",
		weight = 300,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "suspension4.png",
		}
	},

	["transmission1"] = {
		label = "Tier 1 Transmission",
		weight = 300,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "transmission1.png",
		}
	},

	["fakecert"] = {
		label = "Fake Certificate",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "fakecert.png",
		}
	},

	["blue_xtc3"] = {
		label = "Blue XTC",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "unstamped_blue3.png",
		}
	},

	["slicedonion"] = {
		label = "Sliced Onions",
		weight = 500,
		stack = true,
		close = false,
		description = "Sliced Onion",
		client = {
			image = "burger-slicedonion.png",
		}
	},

	["cooked_sausage"] = {
		label = "Cooked Sausage",
		weight = 250,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cooked_sausage.png",
		}
	},

	["drillbit"] = {
		label = "Drill Bit",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "drillbit.png",
		}
	},

	["campfire"] = {
		label = "Campfire",
		weight = 200,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "campfire.png",
		}
	},

	["cooked_bacon"] = {
		label = "Cooked Bacon",
		weight = 250,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cooked_bacon.png",
		}
	},

	["farm_wheat"] = {
		label = "Wheat Seeds",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "farm_wheat.png",
		}
	},

	["lemon"] = {
		label = "Lemon",
		weight = 200,
		stack = true,
		close = false,
		description = "A Lemon.",
		client = {
			image = "lemon.png",
		}
	},

	["paper"] = {
		label = "Roll of Paper",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "paperroll.png",
		}
	},

	["screwdriverset"] = {
		label = "Toolkit",
		weight = 1000,
		stack = true,
		close = false,
		description = "Very useful to screw... screws...",
		client = {
			image = "screwdriverset.png",
		}
	},

	["firework3"] = {
		label = "WipeOut",
		weight = 1000,
		stack = true,
		close = true,
		description = "Fireworks",
		client = {
			image = "firework3.png",
		}
	},

	["meatcow"] = {
		label = "Cow Pelt",
		weight = 100,
		stack = true,
		close = false,
		description = "Cow Pelt",
		client = {
			image = "cowpelt.png",
		}
	},

	["amarone"] = {
		label = "Amarone Wine",
		weight = 300,
		stack = true,
		close = true,
		client = {
			image = "amarone.png",
		}
	},

	["housered"] = {
		label = "House Red Wine",
		weight = 300,
		stack = true,
		close = true,
		client = {
			image = "housered.png",
		}
	},

	["trout"] = {
		label = "Trout",
		weight = 750,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "trout.png",
		}
	},

	["creampie"] = {
		label = "Creampie",
		weight = 200,
		stack = true,
		close = true,
		description = "BurgerShot Apple Pie",
		client = {
			status = {
				hunger = 25,
			},
			image = "burger-creampie.png",
		}
	},

	["stretcher"] = {
		label = "Stretcher",
		weight = 500,
		stack = true,
		close = true,
		description = "Fix me up doc",
		client = {
			image = "stretcher.png",
		}
	},

	["r-manhattan"] = {
		label = "Manhattan",
		weight = 100,
		stack = true,
		close = true,
		description = "A Manhattan Cocktail",
		client = {
			image = "v-manhattan.png",
		}
	},

	["burger-sodasyrup"] = {
		label = "Soda Syrup",
		weight = 125,
		stack = true,
		close = true,
		description = "An Ingredient",
		client = {
			image = "bs_ingredients_hfcs.png",
		}
	},

	["casinochips"] = {
		label = "Casino Chips",
		weight = 100,
		stack = true,
		close = false,
		description = "Chips For Casino Gambling",
		client = {
			image = "casinochips.png",
		}
	},

	["vodka-crate"] = {
		label = "Vodka Crate",
		weight = 2000,
		stack = true,
		close = true,
		description = "A Crate of 10 Vodka Bottles",
		client = {
			image = "vodka-crate.png",
		}
	},

	["farm_milk"] = {
		label = "Fresh Milk",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "farm_milk.png",
		}
	},

	["haddock"] = {
		label = "Haddock",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "haddock.png",
		}
	},

	["barbera"] = {
		label = "Barbera Wine",
		weight = 300,
		stack = true,
		close = true,
		client = {
			image = "barbera.png",
		}
	},

	["orange_pl"] = {
		label = "orange pl",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "PL_orange.png",
		}
	},

	["chop-trunk"] = {
		label = "Trunk",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chop-trunk.png",
		}
	},

	["coca"] = {
		label = "Coca Unpack",
		weight = 400,
		stack = true,
		close = false,
		description = "Unpackaged Coke",
		client = {
			image = "coca.png",
		}
	},

	["c4"] = {
		label = "C4",
		weight = 1000,
		stack = true,
		close = true,
		description = "Sometimes you'd wish for everything to burn",
		client = {
			image = "c4.png",
		}
	},

	["wet_weed"] = {
		label = "Moist Weed",
		weight = 3000,
		stack = true,
		close = false,
		description = "Wet weed that needs to be treated!",
		client = {
			image = "wet_weed.png",
		}
	},

	["laptop_green"] = {
		label = "Laptop Fleeca",
		weight = 1000,
		stack = false,
		close = true,
		description = "A laptop that you got from Ph03nix",
		client = {
			image = "laptop_green.png",
		}
	},

	["orange_trolls3"] = {
		label = "orange trolls",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "troll_orange3.png",
		}
	},

	["prosciuttiobox"] = {
		label = "Prosciutto Box",
		weight = 500,
		stack = true,
		close = true,
		description = "A fresh pizza box",
		client = {
			image = "pizza_box.png",
		}
	},

	["laptop_blue"] = {
		label = "Laptop Paleto",
		weight = 1000,
		stack = false,
		close = true,
		description = "A laptop that you got from Ramsay",
		client = {
			image = "laptop_blue.png",
		}
	},

	["caraudiosystem"] = {
		label = "Car Audio System",
		weight = 1500,
		stack = true,
		close = true,
		description = "Hm.. lets do some fun in the car..",
		client = {
			image = "caraudiosystem.png",
		}
	},

	["red_aliens3"] = {
		label = "red aliens",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "alien_red3.png",
		}
	},

	["iron"] = {
		label = "Iron",
		weight = 100,
		stack = true,
		close = false,
		description = "Handy piece of metal that you can probably use for something",
		client = {
			image = "iron.png",
		}
	},

	["isosafrole"] = {
		label = "isosafrole",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "isosafrole.png",
		}
	},

	["farm_turnip_harvested"] = {
		label = "Turnip",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "farm_turnip_harvested.png",
		}
	},

	["red_xtc4"] = {
		label = "Red XTC",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "unstamped_red4.png",
		}
	},

	["weed_purplehaze"] = {
		label = "Purple Haze 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g Purple Haze",
		client = {
			image = "weed_baggy.png",
		}
	},

	["fleeca_bankcard"] = {
		label = "Bank Keycard",
		weight = 1000,
		stack = false,
		close = true,
		description = "A keycard stolen from a fleeca bank.",
		client = {
			image = "fleeca_bankcard.png",
		}
	},

	["blue_cats3"] = {
		label = "blue cats",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "kitty_blue3.png",
		}
	},

	["phone_green_light"] = {
		label = "Green Light Phone",
		weight = 700,
		stack = false,
		close = true,
		description = "Neat green light phone ya got there",
		client = {
			image = "phone_green_light.png",
		}
	},

	["red_xtc"] = {
		label = "Red XTC",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "unstamped_red.png",
		}
	},

	["phone_case_9"] = {
		label = "Phone Case 9",
		weight = 200,
		stack = false,
		close = true,
		description = "Stylish phone case 9",
		client = {
			image = "phone_case_9.png",
		}
	},

	["lfries"] = {
		label = "Large Fries",
		weight = 200,
		stack = true,
		close = true,
		description = "Nice to eat",
		client = {
			image = "lfries.png",
		}
	},

	["dextroblunts"] = {
		label = "Dextro Blunts",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "dextroblunts.png",
		}
	},

	["blue_pl4"] = {
		label = "blue pl",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "PL_blue4.png",
		}
	},

	["blue_trolls"] = {
		label = "blue trolls",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "troll_blue.png",
		}
	},

	["red_playboys"] = {
		label = "red Fruit",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "playboy_red.png",
		}
	},

	["casino_vip"] = {
		label = "V.I.P Membership",
		weight = 500,
		stack = false,
		close = false,
		description = "Diamond Casino V.I.P Card",
		client = {
			image = "casino_vip.png",
		}
	},

	["origami21"] = {
		label = "Origami Wolf",
		weight = 100,
		stack = false,
		close = 1,
		description = "",
		client = {
			image = "origami21.png",
		}
	},

	["specialbrownie"] = {
		label = "Special Brownie",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "specialbrownie.png",
		}
	},

	["casino_psqs"] = {
		label = "Casino Ps & Qs",
		weight = 0,
		stack = false,
		close = false,
		description = "Casino Ps & Qs",
		client = {
			image = "casino_psqs.png",
		}
	},

	["adderal"] = {
		label = "Madderal",
		weight = 100,
		stack = true,
		close = true,
		description = "If Only This Helped With The Pain inside",
		client = {
			image = "adderal.png",
		}
	},

	["blue_playboys2"] = {
		label = "blue Fruit",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "playboy_blue2.png",
		}
	},

	["blue_trolls2"] = {
		label = "blue trolls",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "troll_blue2.png",
		}
	},

	["loosecoke"] = {
		label = "Loose Coke",
		weight = 100,
		stack = true,
		close = true,
		description = "Cut Cocaine",
		client = {
			image = "loosecoke.png",
		}
	},

	["chop-tyre"] = {
		label = "Tyre",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chop-tyre.png",
		}
	},

	["weedgrinder"] = {
		label = "Weed Grinder",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "weedgrinder.png",
		}
	},

	["transmission2"] = {
		label = "Tier 2 Transmission",
		weight = 300,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "transmission2.png",
		}
	},

	["lettuce"] = {
		label = "Lettuce",
		weight = 100,
		stack = true,
		close = false,
		description = "Some big taco brother",
		client = {
			image = "lettuce.png",
		}
	},

	["skin_deer_medium"] = {
		label = "Supple Deer Pelt",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "skin_deer_medium.png",
		}
	},

	["beancoffee"] = {
		label = "Coffe Beans",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 45,
			},
			image = "beancoffee.png",
		}
	},

	["orange_aliens4"] = {
		label = "orange aliens",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "alien_orange4.png",
		}
	},

	["beer"] = {
		label = "Beer",
		weight = 500,
		stack = true,
		close = true,
		description = "Nothing like a good cold beer!",
		client = {
			image = "beer.png",
		}
	},

	["shotnuggets"] = {
		label = "Shot Nuggets",
		weight = 200,
		stack = true,
		close = true,
		description = "Burgershot Nuggets",
		client = {
			status = {
				hunger = 61,
			},
			image = "burger-shotnuggets.png",
		}
	},

	["recyclablematerial"] = {
		label = "Recycle Box",
		weight = 100,
		stack = true,
		close = false,
		description = "A box of Recyclable Materials",
		client = {
			image = "recyclablematerial.png",
		}
	},

	["steeltrash"] = {
		label = "Steel Trash",
		weight = 200,
		stack = true,
		close = false,
		description = "A steel can",
		client = {
			image = "steelcan.png",
		}
	},

	["blue_aliens"] = {
		label = "blue aliens",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "alien_blue.png",
		}
	},

	["packagedweed"] = {
		label = "Weed Pack",
		weight = 700,
		stack = true,
		close = false,
		description = "Some packaged weed.",
		client = {
			image = "packagedweed.png",
		}
	},

	["mechboard"] = {
		label = "Mechanic Sheet",
		weight = 300,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "mechboard.png",
		}
	},

	["ruby_earring_silver"] = {
		label = "Ruby Earrings Silver",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "ruby_earring_silver.png",
		}
	},

	["weed_ak47"] = {
		label = "AK47 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g AK47",
		client = {
			image = "weed_baggy.png",
		}
	},

	["white_playboys3"] = {
		label = "White Fruit",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "playboy_white3.png",
		}
	},

	["goldpan"] = {
		label = "Gold Panning Tray",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "goldpan.png",
		}
	},

	["vanpanther"] = {
		label = "Rare Panther",
		weight = 2500,
		stack = false,
		close = false,
		description = "Rare statue from bank vault!",
		client = {
			image = "vanPanther.png",
		}
	},

	["weed_whitewidow_seed"] = {
		label = "White Widow Seed",
		weight = 0,
		stack = true,
		close = false,
		description = "A weed seed of White Widow",
		client = {
			image = "weed_seed.png",
		}
	},

	["xtcbaggy"] = {
		label = "Bag of XTC",
		weight = 400,
		stack = true,
		close = true,
		description = "Pop those pills baby",
		client = {
			image = "xtc_baggy.png",
		}
	},

	["red_cats4"] = {
		label = "red cats",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "kitty_red4.png",
		}
	},

	["friedpick"] = {
		label = "Fried Pickles",
		weight = 200,
		stack = true,
		close = true,
		description = "A plate of fried pickles",
		client = {
			image = "friedpick.png",
		}
	},

	["meatcoyote"] = {
		label = "Coyote Pelt",
		weight = 100,
		stack = true,
		close = false,
		description = "Coyote Pelt",
		client = {
			image = "coyotepelt.png",
		}
	},

	["iflag"] = {
		label = "Irish Flag",
		weight = 200,
		stack = true,
		close = true,
		description = "Irish Flag Cocktail",
		client = {
			status = {
				thirst = 24,
			},
			image = "iflag.png",
		}
	},

	["leancup"] = {
		label = "Empty Cup",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "leancup.png",
		}
	},

	["green_uninflated_balloon"] = {
		label = "Green Uninflated Balloon",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "green_uninflated_balloon.png",
		}
	},

	["chop-nos"] = {
		label = "NOS",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chop-nos.png",
		}
	},

	["needle"] = {
		label = "Syringe",
		weight = 250,
		stack = true,
		close = false,
		description = "I Swear Officer, Its For Diabetes",
		client = {
			image = "syringe.png",
		}
	},

	["brakes2"] = {
		label = "Tier 2 Brakes",
		weight = 300,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "brakes2.png",
		}
	},

	["twerks_candy"] = {
		label = "Twerks",
		weight = 100,
		stack = true,
		close = true,
		description = "Some delicious candy :O",
		client = {
			image = "twerks_candy.png",
		}
	},

	["orangejuice"] = {
		label = "Orange Juice",
		weight = 100,
		stack = true,
		close = true,
		description = "Orange Juice Yeah",
		client = {
			image = "orangejuice.png",
		}
	},

	["orange_pl3"] = {
		label = "orange pl",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "PL_orange3.png",
		}
	},

	["firstaid"] = {
		label = "First Aid",
		weight = 2500,
		stack = true,
		close = true,
		description = "You can use this First Aid kit to get people back on their feet",
		client = {
			image = "firstaid.png",
		}
	},

	["specialcookie"] = {
		label = "Special Cookie",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "specialcookie.png",
		}
	},

	["policecard"] = {
		label = "Police card",
		weight = 100,
		stack = false,
		close = false,
		description = "A card containing all your information to identify yourself",
		client = {
			image = "id_card.png",
		}
	},

	["cryptostick"] = {
		label = "Crypto Stick",
		weight = 200,
		stack = false,
		close = true,
		description = "Why would someone ever buy money that doesn't exist.. How many would it contain..?",
		client = {
			image = "cryptostick.png",
		}
	},

	["blue_cats"] = {
		label = "blue cats",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "kitty_blue.png",
		}
	},

	["lighter"] = {
		label = "Lighter",
		weight = 100,
		stack = true,
		close = true,
		description = "On new years eve a nice fire to stand next to",
		client = {
			image = "lighter.png",
		}
	},

	["flour"] = {
		label = "Flour",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "flour.png",
		}
	},

	["underglow_controller"] = {
		label = "Neon Controller",
		weight = 300,
		stack = true,
		close = true,
		description = "RGB LED Vehicle Remote",
		client = {
			image = "underglow_controller.png",
		}
	},

	["cheeseburger"] = {
		label = "Cheese Burger",
		weight = 200,
		stack = true,
		close = true,
		description = "Nice to eat",
		client = {
			image = "cheeseburger.png",
		}
	},

	["aluminum"] = {
		label = "Aluminium",
		weight = 100,
		stack = true,
		close = false,
		description = "Nice piece of metal that you can probably use for something",
		client = {
			image = "aluminum.png",
		}
	},

	["phone_case_6"] = {
		label = "Phone Case 6",
		weight = 200,
		stack = false,
		close = true,
		description = "Stylish phone case 6",
		client = {
			image = "phone_case_6.png",
		}
	},

	["laptop"] = {
		label = "Laptop",
		weight = 1000,
		stack = true,
		close = true,
		description = "Expensive laptop",
		client = {
			image = "laptop.png",
		}
	},

	["fnx45_part_1"] = {
		label = "fnx45 part",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "fnx45_part_1.png",
		}
	},

	["farm_turnip"] = {
		label = "Turnip Seeds",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "farm_turnip.png",
		}
	},

	["trimming_scissors"] = {
		label = "Trimming Scissors",
		weight = 100,
		stack = true,
		close = false,
		description = "Very Sharp Trimming Scissors",
		client = {
			image = "trimming_scissors.png",
		}
	},

	["copperore"] = {
		label = "Copper Ore",
		weight = 1000,
		stack = true,
		close = false,
		description = "Copper, a base ore.",
		client = {
			image = "copperore.png",
		}
	},

	["aluminumcan"] = {
		label = "Aluminium Can",
		weight = 200,
		stack = true,
		close = false,
		description = "Alumunim Cans",
		client = {
			image = "aluminiumcan.png",
		}
	},

	["origami17"] = {
		label = "Origami Monkey",
		weight = 100,
		stack = false,
		close = 1,
		description = "",
		client = {
			image = "origami17.png",
		}
	},

	["frozennugget"] = {
		label = "Frozen Nuggets",
		weight = 500,
		stack = true,
		close = false,
		description = "Bag of Frozen Nuggets",
		client = {
			image = "burger-frozennugget.png",
		}
	},

	["brakes3"] = {
		label = "Tier 3 Brakes",
		weight = 300,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "brakes3.png",
		}
	},

	["weed_brick"] = {
		label = "Weed Brick",
		weight = 1000,
		stack = true,
		close = true,
		description = "1KG Weed Brick to sell to large customers.",
		client = {
			image = "weed_brick.png",
		}
	},

	["diamond_ring_silver"] = {
		label = "Diamond Ring Silver",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "diamond_ring_silver.png",
		}
	},

	["grapes"] = {
		label = "Grapes",
		weight = 150,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "grapes.png",
		}
	},

	["camera_ems"] = {
		label = "EMS Camera",
		weight = 3000,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "camera_ems.png",
		}
	},

	["chop-transmission"] = {
		label = "Transmission",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chop-transmission.png",
		}
	},

	["orange_pl4"] = {
		label = "orange pl",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "PL_orange4.png",
		}
	},

	["ecocoffee"] = {
		label = "The Eco-ffee",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				thirst = 46,
			},
			image = "ecoffee.png",
		}
	},

	["emerald_ring"] = {
		label = "Emerald Ring",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "emerald_ring.png",
		}
	},

	["greenpepper"] = {
		label = "Green Pepper",
		weight = 150,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "greenpepper.png",
		}
	},

	["security_card_01"] = {
		label = "Security Card A",
		weight = 100,
		stack = true,
		close = true,
		description = "A security card... I wonder what it goes to",
		client = {
			image = "security_card_01.png",
		}
	},

	["goldbar"] = {
		label = "Gold Bar",
		weight = 500,
		stack = true,
		close = true,
		description = "Looks pretty expensive to me",
		client = {
			image = "goldbar.png",
		}
	},

	["pacific_key4"] = {
		label = "Bank Data Key",
		weight = 1000,
		stack = false,
		close = true,
		description = "A data key stolen from the pacific bank.",
		client = {
			image = "pacific_key4.png",
		}
	},

	["g6_route_gps"] = {
		label = "Gruppe 6 Route GPS",
		weight = 300,
		stack = true,
		close = true,
		description = "Digital route sheet with GPS navigation for Gruppe 6 employees",
		client = {
			image = "g6_route_gps.png",
		}
	},

	["uncut_diamond"] = {
		label = "Uncut Diamond",
		weight = 100,
		stack = true,
		close = false,
		description = "A rough Diamond",
		client = {
			image = "uncut_diamond.png",
		}
	},

	["cupoflean"] = {
		label = "Lean Cup",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cupoflean.png",
		}
	},

	["newoil"] = {
		label = "Car Oil",
		weight = 300,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "caroil.png",
		}
	},

	["painkillers"] = {
		label = "Painkillers",
		weight = 100,
		stack = true,
		close = true,
		description = "For pain you can't stand anymore, take this pill that'd make you feel great again",
		client = {
			image = "painkillers.png",
		}
	},

	["heroincut"] = {
		label = "Cut Heroin",
		weight = 250,
		stack = true,
		close = false,
		description = "Cut Heroin",
		client = {
			image = "heroincut.png",
		}
	},

	["origami16"] = {
		label = "Origami Butterfly",
		weight = 100,
		stack = false,
		close = 1,
		description = "",
		client = {
			image = "origami16.png",
		}
	},

	["origami19"] = {
		label = "Origami Cockatiel",
		weight = 100,
		stack = false,
		close = 1,
		description = "",
		client = {
			image = "origami19.png",
		}
	},

	["farm_orange_juice"] = {
		label = "Orange Juice",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "farm_orange_juice.png",
		}
	},

	["oxy"] = {
		label = "Doliprane",
		weight = 700,
		stack = true,
		close = true,
		description = "The Label Has Been Ripped Off",
		client = {
			image = "oxy.png",
		}
	},

	["mcchicken"] = {
		label = "McChicken Burger",
		weight = 200,
		stack = true,
		close = true,
		description = "Nice to eat",
		client = {
			image = "mcchicken.png",
		}
	},

	["farm_beetroot_harvested"] = {
		label = "Beetroot",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "farm_beetroot_harvested.png",
		}
	},

	["casino_burger"] = {
		label = "Casino Burger",
		weight = 0,
		stack = false,
		close = false,
		description = "Casino Burger",
		client = {
			image = "casino_burger.png",
		}
	},

	["ironore"] = {
		label = "Iron Ore",
		weight = 1000,
		stack = true,
		close = false,
		description = "Iron, a base ore.",
		client = {
			image = "ironore.png",
		}
	},

	["wheelchair"] = {
		label = "wheelchair",
		weight = 500,
		stack = false,
		close = true,
		description = "Crip Gang",
		client = {
			image = "wheelchair.png",
		}
	},

	["internals"] = {
		label = "Internal Cosmetics",
		weight = 300,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "internals.png",
		}
	},

	["dolceto"] = {
		label = "Dolceto Wine",
		weight = 300,
		stack = true,
		close = true,
		client = {
			image = "dolceto.png",
		}
	},

	["phone_pink"] = {
		label = "Pink Phone",
		weight = 700,
		stack = false,
		close = true,
		description = "Neat pink phone ya got there",
		client = {
			image = "phone_pink.png",
		}
	},

	["origami7"] = {
		label = "Origami Phoenix",
		weight = 100,
		stack = false,
		close = 1,
		description = "",
		client = {
			image = "origami7.png",
		}
	},

	["carbon"] = {
		label = "Carbon",
		weight = 1000,
		stack = true,
		close = false,
		description = "Carbon, a base ore.",
		client = {
			image = "carbon.png",
		}
	},

	["milk"] = {
		label = "Milk",
		weight = 300,
		stack = true,
		close = true,
		description = "Carton of Milk",
		client = {
			status = {
				thirst = 15,
			},
			image = "burger-milk.png",
		}
	},

	["watermelon"] = {
		label = "WaterMelon Slice",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 14,
				thirst = 46,
			},
			image = "watermelon.png",
		}
	},

	["engine3"] = {
		label = "Tier 3 Engine",
		weight = 300,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "engine3.png",
		}
	},

	["cokestagetwo"] = {
		label = "Raw Cocaine",
		weight = 100,
		stack = true,
		close = false,
		description = "Raw cocaine",
		client = {
			image = "cokestagetwo.png",
		}
	},

	["gauvawine"] = {
		label = "Gauva Wine",
		weight = 1500,
		stack = true,
		close = true,
		description = "Gauva Wine Yeah",
		client = {
			image = "gauvawine.png",
		}
	},

	["meatrabbit"] = {
		label = "Rabbit Fur",
		weight = 100,
		stack = true,
		close = false,
		description = "Rabbit Fur",
		client = {
			image = "rabbitfur.png",
		}
	},

	["fakelawyer"] = {
		label = "Fake Laywer Pass",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "fakelawyer.png",
		}
	},

	["fitbit"] = {
		label = "Fitbit",
		weight = 500,
		stack = false,
		close = true,
		description = "I like fitbit",
		client = {
			image = "fitbit.png",
		}
	},

	["weed"] = {
		label = "Weed Unpack",
		weight = 400,
		stack = true,
		close = true,
		description = "Unpackaged Weed",
		client = {
			image = "weed.png",
		}
	},

	["bottle"] = {
		label = "Empty Bottle",
		weight = 100,
		stack = true,
		close = false,
		description = "A glass bottle",
		client = {
			image = "bottle.png",
		}
	},

	["mining_copperfragment"] = {
		label = "Copper Fragment",
		weight = 500,
		stack = true,
		close = true,
		description = "Copper fragment from mining",
		client = {
			image = "mining_copperfragment.png",
		}
	},

	["ham"] = {
		label = "Ham",
		weight = 100,
		stack = true,
		close = true,
		description = "Sliced ham",
		client = {
			image = "ham.png",
		}
	},

	["wood_plank"] = {
		label = "Wood Plank",
		weight = 50,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "woodplank.png",
		}
	},

	["bark"] = {
		label = "Tree Bark",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "bark.png",
		}
	},

	["acetone"] = {
		label = "Acetone",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "acetone.png",
		}
	},

	["sparkplugs"] = {
		label = "Spark Plugs",
		weight = 300,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "sparkplugs.png",
		}
	},

	["joint"] = {
		label = "Joint",
		weight = 300,
		stack = true,
		close = true,
		description = "Sidney would be very proud at you",
		client = {
			image = "joint.png",
		}
	},

	["artificial_bait"] = {
		label = "Artificial bait",
		weight = 30,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "artificial_bait.png",
		}
	},

	["projectile"] = {
		label = "Evidence: Projectile",
		weight = 10,
		stack = true,
		close = true,
		description = "Spent bullet projectile",
		client = {
			image = "projectile.png",
		}
	},

	["usb_blue"] = {
		label = "USB Drive",
		weight = 1000,
		stack = true,
		close = false,
		description = "A blue USB flash drive",
		client = {
			image = "usb_blue.png",
		}
	},

	["origami8"] = {
		label = "Origami Plane",
		weight = 100,
		stack = false,
		close = 1,
		description = "",
		client = {
			image = "origami8.png",
		}
	},

	["diavolabox"] = {
		label = "Diavola Box",
		weight = 500,
		stack = true,
		close = true,
		description = "A fresh pizza box",
		client = {
			image = "pizza_box.png",
		}
	},

	["toolbox"] = {
		label = "Toolbox",
		weight = 300,
		stack = false,
		close = true,
		description = "Needed for Performance part removal",
		client = {
			image = "toolbox.png",
		}
	},

	["burgermeat"] = {
		label = "Burger Meat",
		weight = 500,
		stack = true,
		close = false,
		description = "Cooked Burger Meat",
		client = {
			image = "burgermeat.png",
		}
	},

	["paintingh"] = {
		label = "Painting #3",
		weight = 2100,
		stack = false,
		close = false,
		description = "Art Gallery Painting #3",
		client = {
			image = "paintinge.png",
		}
	},

	["grapejuice"] = {
		label = "Grape Juice",
		weight = 150,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "grapejuice.png",
		}
	},

	["blue_cats4"] = {
		label = "blue cats",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "kitty_blue4.png",
		}
	},

	["adderalbottle"] = {
		label = "Madderal Bottle",
		weight = 100,
		stack = true,
		close = true,
		description = "Bottles Of Good Drugs",
		client = {
			image = "pillbottle.png",
		}
	},

	["casino_beer"] = {
		label = "Casino Beer",
		weight = 0,
		stack = false,
		close = false,
		description = "Casino Beer",
		client = {
			image = "casino_beer.png",
		}
	},

	["log"] = {
		label = "Log",
		weight = 2000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "log.png",
		}
	},

	["red_trolls4"] = {
		label = "red trolls",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "troll_red4.png",
		}
	},

	["spray"] = {
		label = "Bomboletta Spray",
		weight = 300,
		stack = true,
		close = false,
		description = "Una bomboletta spray di vernice",
		client = {
			image = "spray.png",
		}
	},

	["weed_amnesia"] = {
		label = "Amnesia 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g Amnesia",
		client = {
			image = "weed_baggy.png",
		}
	},

	["apple"] = {
		label = "Apple",
		weight = 25,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "apple.png",
		}
	},

	["engine4"] = {
		label = "Tier 4 Engine",
		weight = 300,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "engine4.png",
		}
	},

	["shatter"] = {
		label = "Shatter",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "shatter.png",
		}
	},

	["brussian"] = {
		label = "Black Russian",
		weight = 200,
		stack = true,
		close = true,
		description = "Black Russian Cocktail",
		client = {
			status = {
				thirst = 26,
			},
			image = "brussian.png",
		}
	},

	["tobacco"] = {
		label = "Tobacco",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "tobacco.png",
		}
	},

	["orange_aliens3"] = {
		label = "orange aliens",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "alien_orange3.png",
		}
	},

	["milkshake"] = {
		label = "Milkshake",
		weight = 500,
		stack = true,
		close = true,
		description = "BurgerShot Milkshake",
		client = {
			status = {
				thirst = 66,
			},
			image = "burger-milkshake.png",
		}
	},

	["shield"] = {
		label = "Ballistic Shield",
		weight = 8000,
		stack = true,
		close = true,
		description = "Heavy duty police shield",
		client = {
			image = "shield.png",
		}
	},

	["customplate"] = {
		label = "Customized Plates",
		weight = 300,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "plate.png",
		}
	},

	["skybar_banana_nut"] = {
		label = "skybar banana nut",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "skybar_vanillacupcakes.png",
		}
	},

	["margherita"] = {
		label = "Pizza Margherita",
		weight = 300,
		stack = true,
		close = true,
		client = {
			image = "margherita.png",
		}
	},

	["farm_pear_juice"] = {
		label = "Pear Juice",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "farm_pear_juice.png",
		}
	},

	["skybar_cake"] = {
		label = "Cake",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "skybar_cake.png",
		}
	},

	["farm_mango_juice"] = {
		label = "Mango Juice",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "farm_mango_juice.png",
		}
	},

	["10kgoldchain"] = {
		label = "10k Gold Chain",
		weight = 200,
		stack = true,
		close = true,
		description = "10 carat golden chain",
		client = {
			image = "10kgoldchain.png",
		}
	},

	["rawpumpkin"] = {
		label = "Raw Pumpkin",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "raw_pumpkin.png",
		}
	},

	["grape"] = {
		label = "Grape",
		weight = 100,
		stack = true,
		close = false,
		description = "Mmmmh yummie, grapes",
		client = {
			image = "grape.png",
		}
	},

	["sauce"] = {
		label = "Pizza Sauce",
		weight = 100,
		stack = true,
		close = true,
		description = "Tomato sauce",
		client = {
			image = "pizzasauce.png",
		}
	},

	["electronickit"] = {
		label = "Electronic Kit",
		weight = 100,
		stack = true,
		close = true,
		description = "If you've always wanted to build a robot you can maybe start here. Maybe you'll be the new Elon Musk?",
		client = {
			image = "electronickit.png",
		}
	},

	["emerald_ring_silver"] = {
		label = "Emerald Ring Silver",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "emerald_ring_silver.png",
		}
	},

	["lotto"] = {
		label = "Lotto ticket",
		weight = 1000,
		stack = true,
		close = true,
		description = "Lucky Ticket",
		client = {
			image = "lotto.png",
		}
	},

	["powersaw"] = {
		label = "Power Saw",
		weight = 1000,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "powersaw.png",
		}
	},

	["r-oldfashioned"] = {
		label = "Old Fashioned",
		weight = 100,
		stack = true,
		close = true,
		description = "A Old Fashioned Cocktail",
		client = {
			image = "v-oldfashioned.png",
		}
	},

	["uncut_sapphire"] = {
		label = "Uncut Sapphire",
		weight = 100,
		stack = true,
		close = false,
		description = "A rough Sapphire",
		client = {
			image = "uncut_sapphire.png",
		}
	},

	["methbags"] = {
		label = "Meth",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "methbags.png",
		}
	},

	["crackrockstagetwo"] = {
		label = "Better Crack Rock",
		weight = 250,
		stack = true,
		close = false,
		description = "This Rocks!",
		client = {
			image = "crackrock2.png",
		}
	},

	["fries"] = {
		label = "Fries",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "fries.png",
		}
	},

	["shot-absinthe"] = {
		label = "Absinthe Shot",
		weight = 200,
		stack = true,
		close = true,
		description = "A Shot of Absinthe.",
		client = {
			image = "shot-absinthe.png",
		}
	},

	["lsd_vial_two"] = {
		label = "Tier 2 LSD Vial",
		weight = 100,
		stack = true,
		close = true,
		description = "Vial Of LSD",
		client = {
			image = "lsd_vial_two.png",
		}
	},

	["rice"] = {
		label = "Rice",
		weight = 25,
		stack = true,
		close = false,
		description = "Rice Yeah",
		client = {
			image = "rice.png",
		}
	},

	["canofcorn"] = {
		label = "Can Of Corn",
		weight = 150,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "canofcorn.png",
		}
	},

	["pinger"] = {
		label = "Pinger",
		weight = 1000,
		stack = true,
		close = true,
		description = "With a pinger and your phone you can send out your location",
		client = {
			image = "pinger.png",
		}
	},

	["skybar_kamikaze"] = {
		label = "Kamikaze",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "skybar_kamikaze.png",
		}
	},

	["redphone"] = {
		label = "Red Satellite Phone",
		weight = 200,
		stack = true,
		close = false,
		description = "A communication device used to contact russian mafia.",
		client = {
			image = "redphone.png",
		}
	},

	["id_card"] = {
		label = "ID Card",
		weight = 100,
		stack = false,
		close = false,
		description = "A card containing all your information to identify yourself",
		client = {
			image = "id_card.png",
		}
	},

	["onion"] = {
		label = "Onion",
		weight = 500,
		stack = true,
		close = false,
		description = "An onion",
		client = {
			image = "burger-onion.png",
		}
	},

	["carbattery"] = {
		label = "Car Battery",
		weight = 300,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "carbattery.png",
		}
	},

	["milkbucket"] = {
		label = "Milk Bucket",
		weight = 750,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "milkbucket.png",
		}
	},

	["methtray"] = {
		label = "Meth Tray",
		weight = 200,
		stack = true,
		close = false,
		description = "make some meth",
		client = {
			image = "meth_tray.png",
		}
	},

	["skybar_banana_juice"] = {
		label = "Banana Juice",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "skybar_banana_juice.png",
		}
	},

	["bodycam"] = {
		label = "PD Body Camera",
		weight = 20,
		stack = true,
		close = true,
		description = "Body Camera",
		client = {
			image = "bodycam.png",
		}
	},

	["beerglass"] = {
		label = "Pint of Beer",
		weight = 200,
		stack = true,
		close = true,
		description = "A pint of beer in a glass",
		client = {
			image = "beerglass.png",
		}
	},

	["basic_rod"] = {
		label = "Fishing rod",
		weight = 250,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "basic_rod.png",
		}
	},

	["gameboy"] = {
		label = "Gameboy",
		weight = 200,
		stack = true,
		close = true,
		description = "A working Gameboy.",
		client = {
			image = "gameboy.png",
		}
	},

	["skybar_kiwi"] = {
		label = "Kiwi",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "skybar_kiwi.png",
		}
	},

	["casino_luckypotion"] = {
		label = "Casino Lucky Potion",
		weight = 0,
		stack = false,
		close = false,
		description = "Casino Lucky Potion",
		client = {
			image = "casino_luckypotion.png",
		}
	},

	["coca_leaf"] = {
		label = "Cocaine leaves",
		weight = 1500,
		stack = true,
		close = false,
		description = "Cocaine leaves that must be processed !",
		client = {
			image = "coca_leaf.png",
		}
	},

	["farm_cabbage_harvested"] = {
		label = "Cabbage",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "farm_cabbage_harvested.png",
		}
	},

	["farm_lemon_juice"] = {
		label = "Lemon Juice",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "farm_lemon_juice.png",
		}
	},

	["farm_tomato"] = {
		label = "Tomato Seeds",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "farm_tomato.png",
		}
	},

	["watering_can"] = {
		label = "Empty Watering Can",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "watering_can.png",
		}
	},

	["bleeder"] = {
		label = "The Bleeder",
		weight = 200,
		stack = true,
		close = true,
		description = "The Bleeder",
		client = {
			status = {
				hunger = 55,
			},
			image = "burger-bleeder.png",
		}
	},

	["brokendetector"] = {
		label = "Broken Detector",
		weight = 200,
		stack = true,
		close = false,
		description = "A broken metal detector",
		client = {
			image = "brokendetector.png",
		}
	},

	["hacking_device"] = {
		label = "Hacking device",
		weight = 500,
		stack = false,
		close = true,
		description = "Hacking device",
		client = {
			image = "hacking_device.png",
		}
	},

	["hammerhandle"] = {
		label = "Hammer Handle",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "hammerhandle.png",
		}
	},

	["tow_rope"] = {
		label = "Rope",
		weight = 1000,
		stack = false,
		close = false,
		description = "Towing rope for cars",
		client = {
			image = "tow_rope.png",
		}
	},

	["sapphire_necklace"] = {
		label = "Sapphire Necklace",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "sapphire_necklace.png",
		}
	},

	["meatboar"] = {
		label = "Boar Tusks",
		weight = 100,
		stack = true,
		close = false,
		description = "Boar Tusks",
		client = {
			image = "boartusks.png",
		}
	},

	["rims"] = {
		label = "Custom Wheel Rims",
		weight = 300,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "rims.png",
		}
	},

	["r-dancerz"] = {
		label = "Dancerz",
		weight = 100,
		stack = true,
		close = true,
		description = "Dancerz Cocktail",
		client = {
			image = "v-dancerz.png",
		}
	},

	["cranberry"] = {
		label = "Cranberry Juice",
		weight = 200,
		stack = true,
		close = true,
		description = "Cranberry Juice",
		client = {
			status = {
				thirst = 25,
			},
			image = "cranberry.png",
		}
	},

	["xanax_prescription"] = {
		label = "Zany Prescription",
		weight = 250,
		stack = true,
		close = false,
		description = "Ahhh Sweet Comfort",
		client = {
			image = "adderalprescription.png",
		}
	},

	["farm_pear"] = {
		label = "Pear",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "farm_pear.png",
		}
	},

	["quadpress"] = {
		label = "Quad Pill Press",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "pillpress.png",
		}
	},

	["phone_gold"] = {
		label = "Gold Phone",
		weight = 700,
		stack = false,
		close = true,
		description = "Neat gold phone ya got there",
		client = {
			image = "phone_gold.png",
		}
	},

	["orange_playboys4"] = {
		label = "orange Fruit",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "playboy_orange4.png",
		}
	},

	["leanblunts"] = {
		label = "Lean Blunts",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "leanblunts.png",
		}
	},

	["gauvajuice"] = {
		label = "Gauva Juice",
		weight = 100,
		stack = true,
		close = true,
		description = "Gauva Juice Yeah",
		client = {
			image = "gauvajuice.png",
		}
	},

	["dslrcamera"] = {
		label = "PD Camera",
		weight = 1000,
		stack = false,
		close = true,
		description = "DSLR Camera, with cloud uplink.. cool right?",
		client = {
			image = "dslrcamera.png",
		}
	},

	["methlab"] = {
		label = "Lab",
		weight = 15000,
		stack = true,
		close = false,
		description = "Stuff to cook!",
		client = {
			image = "lab.png",
		}
	},

	["farm_tomato_harvested"] = {
		label = "Tomato",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "farm_tomato_harvested.png",
		}
	},

	["drill"] = {
		label = "Drill",
		weight = 2500,
		stack = true,
		close = false,
		description = "The real deal...",
		client = {
			image = "drill.png",
		}
	},

	["grapesred"] = {
		label = "Grapes Red",
		weight = 100,
		stack = true,
		close = true,
		description = "Grapes Red Yeah",
		client = {
			image = "grapesred.png",
		}
	},

	["livery"] = {
		label = "Livery Roll",
		weight = 300,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "livery.png",
		}
	},

	["raw_bacon"] = {
		label = "Raw Bacon",
		weight = 250,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "raw_bacon.png",
		}
	},

	["applewine"] = {
		label = "Apple Wine",
		weight = 1500,
		stack = true,
		close = true,
		description = "Apple Wine Yeah",
		client = {
			image = "applewine.png",
		}
	},

	["heroinstagethree"] = {
		label = "Heroin Powder",
		weight = 250,
		stack = true,
		close = false,
		description = "Raw Heroin",
		client = {
			image = "heroinpowderstagethree.png",
		}
	},

	["weed_ogkush"] = {
		label = "OGKush 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g OG Kush",
		client = {
			image = "weed_baggy.png",
		}
	},

	["cleaningkit"] = {
		label = "Cleaning Kit",
		weight = 250,
		stack = true,
		close = true,
		description = "A microfiber cloth with some soap will let your car sparkle again!",
		client = {
			image = "cleaningkit.png",
		}
	},

	["white_aliens4"] = {
		label = "White aliens",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "alien_white4.png",
		}
	},

	["gelato"] = {
		label = "Gelato",
		weight = 200,
		stack = true,
		close = true,
		client = {
			image = "gelato.png",
		}
	},

	["diamond_ring"] = {
		label = "Diamond Ring",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "diamond_ring.png",
		}
	},

	["origami14"] = {
		label = "Origami Eagle",
		weight = 100,
		stack = false,
		close = 1,
		description = "",
		client = {
			image = "origami14.png",
		}
	},

	["engine5"] = {
		label = "Tier 5 Engine",
		weight = 300,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "engine5.png",
		}
	},

	["skin_deer_perfect"] = {
		label = "Flawless Deer Pelt",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "skin_deer_perfect.png",
		}
	},

	["chop-headlight"] = {
		label = "Headlight",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chop-headlight.png",
		}
	},

	["grindedweed"] = {
		label = "Keef",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "keef.png",
		}
	},

	["pescatore"] = {
		label = "Pizza Pescatore",
		weight = 300,
		stack = true,
		close = true,
		client = {
			image = "pescatore.png",
		}
	},

	["farm_onion"] = {
		label = "Onion Seeds",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "farm_onion.png",
		}
	},

	["sapphire_earring"] = {
		label = "Sapphire Earrings",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "sapphire_earring.png",
		}
	},

	["lsa"] = {
		label = "LSA",
		weight = 500,
		stack = true,
		close = false,
		description = "Almost ready to party...",
		client = {
			image = "lsa.png",
		}
	},

	["caffeagra"] = {
		label = "Caffeagra",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				thirst = 42,
			},
			image = "caffeagra.png",
		}
	},

	["orange_trolls"] = {
		label = "orange trolls",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "troll_orange.png",
		}
	},

	["paintingi"] = {
		label = "Painting #2",
		weight = 2100,
		stack = false,
		close = false,
		description = "Art Gallery Painting #2",
		client = {
			image = "paintinge.png",
		}
	},

	["applejuice"] = {
		label = "Apple Juice",
		weight = 100,
		stack = true,
		close = true,
		description = "Apple Juice Yeah",
		client = {
			image = "applejuice.png",
		}
	},

	["white_xtc4"] = {
		label = "White XTC",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "unstamped_white4.png",
		}
	},

	["externals"] = {
		label = "Exterior Cosmetics",
		weight = 300,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "mirror.png",
		}
	},

	["heroinstagetwo"] = {
		label = "Heroin Powder",
		weight = 250,
		stack = true,
		close = false,
		description = "Raw Heroin",
		client = {
			image = "heroinpowderstagetwo.png",
		}
	},

	["weed_og-kush"] = {
		label = "OGKush 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g OG Kush",
		client = {
			image = "weed_baggy.png",
		}
	},

	["burgerbun"] = {
		label = "Burger Bun",
		weight = 100,
		stack = true,
		close = false,
		description = "Some big burger brother",
		client = {
			image = "burgerbun.png",
		}
	},

	["red_pl4"] = {
		label = "red pl",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "PL_red4.png",
		}
	},

	["orange_playboys"] = {
		label = "orange Fruit",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "playboy_orange.png",
		}
	},

	["vandiamond"] = {
		label = "Rare Diamond",
		weight = 2500,
		stack = false,
		close = false,
		description = "Rare diamond from bank vault!",
		client = {
			image = "vanDiamond.png",
		}
	},

	["metaltrash"] = {
		label = "Metal Trash",
		weight = 200,
		stack = true,
		close = false,
		description = "Trashed Metal",
		client = {
			image = "metaltrash.png",
		}
	},

	["glass"] = {
		label = "Glass",
		weight = 100,
		stack = true,
		close = false,
		description = "It is very fragile, watch out",
		client = {
			image = "glass.png",
		}
	},

	["tomato_souce"] = {
		label = "Tomato Souce",
		weight = 100,
		stack = true,
		close = false,
		description = "Tomato Souce Yeah",
		client = {
			image = "tomato_souce.png",
		}
	},

	["red_pl2"] = {
		label = "red pl",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "PL_red2.png",
		}
	},

	["chocolate"] = {
		label = "Chocolate",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chocolate.png",
		}
	},

	["white_cats2"] = {
		label = "White cats",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "kitty_white2.png",
		}
	},

	["shot-snakebite"] = {
		label = "Snakebite Shot",
		weight = 200,
		stack = true,
		close = true,
		description = "A Shot of Snake Bite.",
		client = {
			image = "shot-snakebite.png",
		}
	},

	["farm_potatoes_harvested"] = {
		label = "Potato",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "farm_potatoes_harvested.png",
		}
	},

	["vpn"] = {
		label = "VPN Router",
		weight = 1000,
		stack = false,
		close = false,
		description = "",
		client = {
			image = "vpn.png",
		}
	},

	["camera_tablet"] = {
		label = "CamView Tablet",
		weight = 2000,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "camera_tablet.png",
		}
	},

	["jerrycan"] = {
		label = "Jerry Can",
		weight = 15000,
		stack = false,
		close = false,
		description = "A Jerry Can made to hold gasoline.",
		client = {
			image = "jerrycan.png",
		}
	},

	["empty_evidence_bag"] = {
		label = "Empty Evidence Bag",
		weight = 100,
		stack = true,
		close = false,
		description = "Used a lot to keep DNA from blood, bullet shells and more",
		client = {
			image = "evidence.png",
		}
	},

	["blue_trolls4"] = {
		label = "blue trolls",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "troll_blue4.png",
		}
	},

	["skybar_sugar"] = {
		label = "Sugar",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "skybar_sugar.png",
		}
	},

	["yinyangsheet"] = {
		label = "Yin and Yang Sheet",
		weight = 100,
		stack = true,
		close = true,
		description = "All Together In Harmony",
		client = {
			image = "yinyangsheet.png",
		}
	},

	["certificate"] = {
		label = "Certificate",
		weight = 400,
		stack = true,
		close = true,
		description = "Certificate that proves you own certain stuff",
		client = {
			image = "certificate.png",
		}
	},

	["rollcage"] = {
		label = "Roll Cage",
		weight = 300,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "rollcage.png",
		}
	},

	["rubber"] = {
		label = "Rubber",
		weight = 150,
		stack = true,
		close = false,
		description = "Rubber, I believe you can make your own rubber ducky with it :D",
		client = {
			image = "rubber.png",
		}
	},

	["hackingdevice"] = {
		label = "Hacking device",
		weight = 1000,
		stack = false,
		close = true,
		description = "Will allow you to bypass vehicle security systems.",
		client = {
			image = "hackingdevice.png",
		}
	},

	["heroin_readystagethree"] = {
		label = "Heroin Syringe",
		weight = 250,
		stack = true,
		close = false,
		description = "Go On, Chase The Dragon",
		client = {
			image = "heroin_readystagethree.png",
		}
	},

	["weed_skunk_seed"] = {
		label = "Skunk Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of Skunk",
		client = {
			image = "weed_seed.png",
		}
	},

	["lsd_vial_five"] = {
		label = "Tier 5 LSD Vial",
		weight = 100,
		stack = true,
		close = true,
		description = "Vial Of LSD",
		client = {
			image = "lsd_vial_five.png",
		}
	},

	["farm_watering_can_full"] = {
		label = "Full Watering Can",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "watering_can.png",
		}
	},

	["skybar_just_peachy"] = {
		label = "Just Peachy",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "skybar_just_peachy.png",
		}
	},

	["specialmuffin"] = {
		label = "Special Muffin",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "specialmuffin.png",
		}
	},

	["leather"] = {
		label = "Leather",
		weight = 100,
		stack = true,
		close = false,
		description = "Some big taco brother",
		client = {
			image = "leather.png",
		}
	},

	["turbo"] = {
		label = "Supercharger Turbo",
		weight = 300,
		stack = false,
		close = true,
		description = "Who doesn't need a 65mm Turbo??",
		client = {
			image = "turbo.png",
		}
	},

	["sodium_hydroxide"] = {
		label = "Sodium Hydroxide",
		weight = 500,
		stack = true,
		close = true,
		description = "Chemicals, handle with care!",
		client = {
			image = "sodium_hydroxide.png",
		}
	},

	["fruit-mix"] = {
		label = "Fruit Mix",
		weight = 100,
		stack = true,
		close = true,
		description = "A Mix of Fruits",
		client = {
			image = "fruit-mix.png",
		}
	},

	["mdp2p"] = {
		label = "mdp2p",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "mdp2p.png",
		}
	},

	["burger-ticket"] = {
		label = "Receipt",
		weight = 150,
		stack = true,
		close = false,
		description = "Cash these in at the bank!",
		client = {
			image = "ticket.png",
		}
	},

	["bscoffee"] = {
		label = "BurgerShot Coffee",
		weight = 200,
		stack = true,
		close = true,
		description = "BurgerShot Coffee",
		client = {
			status = {
				thirst = 54,
			},
			image = "burger-coffee.png",
		}
	},

	["gold_ring"] = {
		label = "Gold Ring",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "gold_ring.png",
		}
	},

	["grapeswine"] = {
		label = "Grapes Wine",
		weight = 100,
		stack = true,
		close = true,
		description = "Grape Wine Yeah",
		client = {
			image = "grapeswine.png",
		}
	},

	["coke_small_brick"] = {
		label = "Coke Package",
		weight = 500,
		stack = true,
		close = true,
		description = "Small package of cocaine, mostly used for deals and takes a lot of space",
		client = {
			image = "coke_small_brick.png",
		}
	},

	["ricesack"] = {
		label = "ricesack",
		weight = 2000,
		stack = true,
		close = false,
		description = "One Sack Rick Yeah",
		client = {
			image = "ricesack.png",
		}
	},

	["beandonut"] = {
		label = "Donut",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 48,
			},
			image = "popdonut.png",
		}
	},

	["veganburgerpatty"] = {
		label = "Vegan Burger patty",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "veganburgerpatty.png",
		}
	},

	["bartsheet"] = {
		label = "Cluckin Sheet",
		weight = 100,
		stack = true,
		close = true,
		description = "A Cluckin Good Time",
		client = {
			image = "bartsheet.png",
		}
	},

	["spikestrip"] = {
		label = "Spike Strip",
		weight = 5000,
		stack = true,
		close = true,
		description = "Road spike strip",
		client = {
			image = "spikestrip.png",
		}
	},

	["sprunklight"] = {
		label = "Sprunk Light",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				thirst = 20,
			},
			image = "sprunklight.png",
		}
	},

	["suspension3"] = {
		label = "Tier 3 Suspension",
		weight = 300,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "suspension3.png",
		}
	},

	["tomato"] = {
		label = "tomato",
		weight = 150,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "tomato.png",
		}
	},

	["grilled_eggplant"] = {
		label = "Grilled Eggplant",
		weight = 100,
		stack = true,
		close = false,
		description = "Grilled Eggplant Yeah",
		client = {
			image = "grilled_eggplant.png",
		}
	},

	["irontrash"] = {
		label = "Iron Trash",
		weight = 200,
		stack = true,
		close = false,
		description = "Trashed Iron",
		client = {
			image = "irontrash.png",
		}
	},

	["mining_stone"] = {
		label = "Mined Stone",
		weight = 500,
		stack = true,
		close = true,
		description = "Mined Stone",
		client = {
			image = "mining_stone.png",
		}
	},

	["megaphone"] = {
		label = "Megaphone",
		weight = 20000,
		stack = false,
		close = false,
		description = "A loudspeaker to yell at civilians.",
		client = {
			image = "megaphone.png",
		}
	},

	["morphinebottle"] = {
		label = "Morphin Bottle",
		weight = 100,
		stack = true,
		close = true,
		description = "Bottles Of Good Drugs",
		client = {
			image = "pillbottle.png",
		}
	},

	["white_playboys"] = {
		label = "White Fruit",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "playboy_white.png",
		}
	},

	["potato"] = {
		label = "Potatoes",
		weight = 500,
		stack = true,
		close = false,
		description = "Bag of Potatos",
		client = {
			image = "potatoes.png",
		}
	},

	["bigmac"] = {
		label = "BigMac Burger",
		weight = 200,
		stack = true,
		close = true,
		description = "Nice to eat",
		client = {
			image = "bigmac.png",
		}
	},

	["labcard"] = {
		label = "Lab Card",
		weight = 1000,
		stack = true,
		close = false,
		description = "A lab key!",
		client = {
			image = "labcard.png",
		}
	},

	["red_cats3"] = {
		label = "red cats",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "kitty_red3.png",
		}
	},

	["ancientcoin"] = {
		label = "Ancient Coin",
		weight = 200,
		stack = true,
		close = false,
		description = "This seems really old and unique.",
		client = {
			image = "aincientcoin.png",
		}
	},

	["fakeweaplicence"] = {
		label = "Fake Weapon Licence",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "fakeweap.png",
		}
	},

	["r-shots-pack"] = {
		label = "Shots Pack",
		weight = 1600,
		stack = true,
		close = true,
		description = "A Pack of 8 Shots. 2 of Each Flavour",
		client = {
			image = "v-shots-pack.png",
		}
	},

	["pickaxe"] = {
		label = "Pickaxe",
		weight = 1000,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "pickaxe.png",
		}
	},

	["paintingf"] = {
		label = "Painting #5",
		weight = 2100,
		stack = false,
		close = false,
		description = "Art Gallery Painting #5",
		client = {
			image = "paintinge.png",
		}
	},

	["sandwich"] = {
		label = "Sandwich",
		weight = 200,
		stack = true,
		close = true,
		description = "Nice bread for your stomach",
		client = {
			image = "sandwich.png",
		}
	},

	["beef"] = {
		label = "Beef",
		weight = 250,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "beef.png",
		}
	},

	["sprayremover"] = {
		label = "Spray Remover",
		weight = 100,
		stack = false,
		close = true,
		description = "Spray Remover",
		client = {
			image = "sprayremover.png",
		}
	},

	["mechanic_tools"] = {
		label = "Mechanic tools",
		weight = 300,
		stack = false,
		close = true,
		description = "Needed for vehicle repairs",
		client = {
			image = "mechanic_tools.png",
		}
	},

	["weed_ogkush_seed"] = {
		label = "OGKush Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of OG Kush",
		client = {
			image = "weed_seed.png",
		}
	},

	["singlepress"] = {
		label = "Single Pill Press",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "pillpress.png",
		}
	},

	["driver_license"] = {
		label = "Drivers License",
		weight = 100,
		stack = false,
		close = false,
		description = "Permit to show you can drive a vehicle",
		client = {
			image = "driver_license.png",
		}
	},

	["r-sugar-syrup"] = {
		label = "Sugar Syrup",
		weight = 100,
		stack = true,
		close = true,
		description = "syrup for making cocktails",
		client = {
			image = "v-sugar-syrup.png",
		}
	},

	["prescription_pad"] = {
		label = "Prescription Pad",
		weight = 10,
		stack = false,
		close = false,
		description = "Write Your Prescriptions here",
		client = {
			image = "prescriptionpad.png",
		}
	},

	["transmission3"] = {
		label = "Tier 3 Transmission",
		weight = 300,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "transmission3.png",
		}
	},

	["logger"] = {
		label = "Logger Beer",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				thirst = 49,
			},
			image = "logger.png",
		}
	},

	["squid"] = {
		label = "Squid",
		weight = 100,
		stack = true,
		close = true,
		description = "Fresh squid rings",
		client = {
			image = "squid.png",
		}
	},

	["crisps"] = {
		label = "Crisps",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 20,
			},
			image = "chips.png",
		}
	},

	["orange_trolls4"] = {
		label = "orange trolls",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "troll_orange4.png",
		}
	},

	["weaponlicense"] = {
		label = "Weapon License",
		weight = 100,
		stack = false,
		close = true,
		description = "Weapon License",
		client = {
			image = "weapon_license.png",
		}
	},

	["housewhite"] = {
		label = "House White Wine",
		weight = 300,
		stack = true,
		close = true,
		client = {
			image = "housewhite.png",
		}
	},

	["phone_no_case"] = {
		label = "No phone case",
		weight = 0,
		stack = false,
		close = true,
		description = "No phone case",
		client = {
			image = "phone_no_case.png",
		}
	},

	["ruby_earring"] = {
		label = "Ruby Earrings",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "ruby_earring.png",
		}
	},

	["dextroblunt"] = {
		label = "Dextro Blunt Wrap",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "dextroblunt.png",
		}
	},

	["farm_carrot"] = {
		label = "Carrot Seeds",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "farm_carrot.png",
		}
	},

	["shark"] = {
		label = "Shark",
		weight = 7500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "shark.png",
		}
	},

	["casino_sprite"] = {
		label = "Casino Sprite",
		weight = 0,
		stack = false,
		close = false,
		description = "Casino Sprite",
		client = {
			image = "casino_sprite.png",
		}
	},

	["skybar_banana"] = {
		label = "Banana",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "skybar_banana.png",
		}
	},

	["gpshackingdevice"] = {
		label = "GPS hacking device",
		weight = 1000,
		stack = false,
		close = true,
		description = "If you wish to disable vehicle GPS systems.",
		client = {
			image = "gpshackingdevice.png",
		}
	},

	["r-unicorn"] = {
		label = "Unicorn",
		weight = 100,
		stack = true,
		close = true,
		description = "Unicorn Cocktail",
		client = {
			image = "v-unicorn.png",
		}
	},

	["housekeys"] = {
		label = "House Keys",
		weight = 200,
		stack = true,
		close = false,
		description = "Random House Keys",
		client = {
			image = "housekeys.png",
		}
	},

	["pumpkinpiebox"] = {
		label = "Box of Pie",
		weight = 250,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "pumpkinpiebox.png",
		}
	},

	["cokeburner"] = {
		label = "Coke Burner",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "gta5phone.png",
		}
	},

	["boombox"] = {
		label = "boombox",
		weight = 700,
		stack = false,
		close = false,
		description = "Play Music Anywhere ",
		client = {
			image = "boombox.png",
		}
	},

	["advancedlockpick"] = {
		label = "Advanced Lockpick",
		weight = 500,
		stack = true,
		close = true,
		description = "If you lose your keys a lot this is very useful... Also useful to open your beers",
		client = {
			image = "advancedlockpick.png",
		}
	},

	["tree_bark"] = {
		label = "Tree Bark",
		weight = 50,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "treebark.png",
		}
	},

	["goldore"] = {
		label = "Gold Ore",
		weight = 1000,
		stack = true,
		close = false,
		description = "Gold Ore",
		client = {
			image = "goldore.png",
		}
	},

	["skybar_green_dream"] = {
		label = "Green Dream",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "skybar_green_dream.png",
		}
	},

	["jerry_can"] = {
		label = "Jerrycan 20L",
		weight = 1000,
		stack = true,
		close = true,
		description = "A can full of Fuel",
		client = {
			image = "jerry_can.png",
		}
	},

	["pisswasser3"] = {
		label = "Pißwasser Pale Ale",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				thirst = 44,
			},
			image = "pisswaser3.png",
		}
	},

	["salami"] = {
		label = "Salami",
		weight = 100,
		stack = true,
		close = true,
		description = "Sliced salami",
		client = {
			image = "salami.png",
		}
	},

	["vanbottle"] = {
		label = "Rare Bottle",
		weight = 2500,
		stack = false,
		close = false,
		description = "Rare bottle from bank vault!",
		client = {
			image = "vanBottle.png",
		}
	},

	["mflurrym"] = {
		label = "M&M McFlurry",
		weight = 200,
		stack = true,
		close = true,
		description = "Nice to eat",
		client = {
			image = "mflurrym.png",
		}
	},

	["farm_cucumber"] = {
		label = "Cucumber Seeds",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "farm_cucumber.png",
		}
	},

	["flush_cutter"] = {
		label = "Flush Cutter",
		weight = 50,
		stack = true,
		close = true,
		description = "Comes in handy when you want to cut zipties..",
		client = {
			image = "flush_cutter.png",
		}
	},

	["shotrings"] = {
		label = "Ring Shots",
		weight = 200,
		stack = true,
		close = true,
		description = "Burgershot Onion Rings",
		client = {
			status = {
				hunger = 41,
			},
			image = "burger-shotrings.png",
		}
	},

	["skybar_watermelon"] = {
		label = "Watermelon",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "skybar_watermelon.png",
		}
	},

	["calamari"] = {
		label = "Fried Calamari",
		weight = 300,
		stack = true,
		close = true,
		client = {
			image = "calamari.png",
		}
	},

	["thionyl_chloride"] = {
		label = "Thionyl Chloride",
		weight = 500,
		stack = true,
		close = false,
		description = "Chemicals, handle with care!",
		client = {
			image = "thionyl_chloride.png",
		}
	},

	["powerbank"] = {
		label = "Powerbank",
		weight = 200,
		stack = false,
		close = true,
		description = "A good way to get battery",
		client = {
			image = "powerbank.png",
		}
	},

	["r-margarita"] = {
		label = "Margarita",
		weight = 100,
		stack = true,
		close = true,
		description = "A Margarita Cocktail",
		client = {
			image = "v-margarita.png",
		}
	},

	["shot-fireball"] = {
		label = "Fireball Shot",
		weight = 200,
		stack = true,
		close = true,
		description = "A Shot of Fireball.",
		client = {
			image = "shot-frieball.png",
		}
	},

	["blue_uninflated_balloon"] = {
		label = "Blue Uninflated Balloon",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "blue_uninflated_balloon.png",
		}
	},

	["maccheese"] = {
		label = "Mac n Cheese",
		weight = 200,
		stack = true,
		close = true,
		description = "A bowl of maccaroni and cheese",
		client = {
			image = "maccheese.png",
		}
	},

	["voodoo"] = {
		label = "Voodoo",
		weight = 200,
		stack = true,
		close = true,
		description = "Voodoo Cocktail",
		client = {
			status = {
				thirst = 22,
			},
			image = "voodoo.png",
		}
	},

	["rentalpapers"] = {
		label = "Rental Papers",
		weight = 200,
		stack = false,
		close = false,
		description = "Yea, this is my car i can prove it!",
		client = {
			image = "rentalpapers.png",
		}
	},

	["white_cats3"] = {
		label = "White cats",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "kitty_white3.png",
		}
	},

	["origami13"] = {
		label = "Origami Turkey",
		weight = 100,
		stack = false,
		close = 1,
		description = "",
		client = {
			image = "origami13.png",
		}
	},

	["farm_lettuce"] = {
		label = "Lettuce Seeds",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "farm_lettuce.png",
		}
	},

	["armor"] = {
		label = "Armor",
		weight = 10000,
		stack = true,
		close = true,
		description = "Some protection won't hurt... right?",
		client = {
			image = "armor.png",
		}
	},

	["roof"] = {
		label = "Vehicle Roof",
		weight = 300,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "roof.png",
		}
	},

	["red_aliens2"] = {
		label = "red aliens",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "alien_red2.png",
		}
	},

	["casino_coke"] = {
		label = "Casino Kofola",
		weight = 0,
		stack = false,
		close = false,
		description = "Casino Kofola",
		client = {
			image = "casino_coke.png",
		}
	},

	["sapphire_ring_silver"] = {
		label = "Sapphire Ring Silver",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "sapphire_ring_silver.png",
		}
	},

	["weed_purplehaze_seed"] = {
		label = "Purple Haze Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of Purple Haze",
		client = {
			image = "weed_seed.png",
		}
	},

	["blue_xtc4"] = {
		label = "Blue XTC",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "unstamped_blue4.png",
		}
	},

	["pizzadough"] = {
		label = "Pizza Dough",
		weight = 300,
		stack = true,
		close = true,
		description = "Fresh dough",
		client = {
			image = "pizzadough.png",
		}
	},

	["mining_goldnugget"] = {
		label = "Golden Nugget",
		weight = 500,
		stack = true,
		close = true,
		description = "Golden nugget from mining",
		client = {
			image = "mining_goldnugget.png",
		}
	},

	["newspaper"] = {
		label = "Newspaper",
		weight = 10,
		stack = true,
		close = true,
		description = "Los Santos Newspaper",
		client = {
			image = "newspaper.png",
		}
	},

	["phone_case_4"] = {
		label = "Phone Case 4",
		weight = 200,
		stack = false,
		close = true,
		description = "Stylish phone case 4",
		client = {
			image = "phone_case_4.png",
		}
	},

	["mining_drill"] = {
		label = "Mining Drill",
		weight = 500,
		stack = false,
		close = true,
		description = "Classic's pickaxe for mining",
		client = {
			image = "mining_drill.png",
		}
	},

	["key3"] = {
		label = "Key for something",
		weight = 1500,
		stack = true,
		close = true,
		description = "Key for something illegal.",
		client = {
			image = "key3.png",
		}
	},

	["vicodinbottle"] = {
		label = "Vicie Bottle",
		weight = 100,
		stack = true,
		close = true,
		description = "Bottles Of Good Drugs",
		client = {
			image = "pillbottle.png",
		}
	},

	["baggedcrackedstagetwo"] = {
		label = "Better Bag Of Crack",
		weight = 250,
		stack = true,
		close = false,
		description = "Bags Of Crack",
		client = {
			image = "crackbag2.png",
		}
	},

	["blue_aliens4"] = {
		label = "blue aliens",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "alien_blue4.png",
		}
	},

	["skin_deer_good"] = {
		label = "Prime Deer Pelt",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "skin_deer_good.png",
		}
	},

	["soybeans"] = {
		label = "Soy Beans",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "soybeans.png",
		}
	},

	["tools"] = {
		label = "Tools",
		weight = 1000,
		stack = true,
		close = true,
		description = "Basic toolkit",
		client = {
			image = "tools.png",
		}
	},

	["skybar_strawberry_juice"] = {
		label = "Strawberry Juice",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "skybar_strawberry_juice.png",
		}
	},

	["origami11"] = {
		label = "Origami Bunny",
		weight = 100,
		stack = false,
		close = 1,
		description = "",
		client = {
			image = "origami11.png",
		}
	},

	["cookedburgerpatty"] = {
		label = "Cooked Burger patty",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "cookedburgerpatty.png",
		}
	},

	["trojan_usb"] = {
		label = "Trojan USB",
		weight = 100,
		stack = true,
		close = true,
		description = "Handy software to shut down some systems",
		client = {
			image = "usb_device.png",
		}
	},

	["chop-suspension"] = {
		label = "Suspension",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chop-suspension.png",
		}
	},

	["skybar_milk"] = {
		label = "Milk",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "skybar_milk.png",
		}
	},

	["heroinvialstagethree"] = {
		label = "Vial Of Heroin",
		weight = 250,
		stack = true,
		close = false,
		description = "Hmm, Maybe A Needle Can Help",
		client = {
			image = "heroinstagethree.png",
		}
	},

	["nuggets"] = {
		label = "Raw chicken nuggets",
		weight = 40,
		stack = true,
		close = true,
		client = {
			image = "nuggets.png",
		}
	},

	["bulletcasings"] = {
		label = "Bullet Casings",
		weight = 200,
		stack = true,
		close = false,
		description = "Bullet Casings",
		client = {
			image = "bulletcasings.png",
		}
	},

	["cokebaggy"] = {
		label = "Bag of Cocaine",
		weight = 0,
		stack = true,
		close = true,
		description = "To get happy real quick",
		client = {
			image = "cocaine_baggy.png",
		}
	},

	["farm_mushrooms_harvested"] = {
		label = "Mushrooms",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "farm_mushrooms_harvested.png",
		}
	},

	["woowoo"] = {
		label = "Woo Woo",
		weight = 200,
		stack = true,
		close = true,
		description = "Woowoo Cocktail",
		client = {
			status = {
				thirst = 24,
			},
			image = "woowoo.png",
		}
	},

	["loosecokestagetwo"] = {
		label = "Loose Coke",
		weight = 100,
		stack = true,
		close = true,
		description = "Cut Cocaine",
		client = {
			image = "loosecokestagetwo.png",
		}
	},

	["mdt"] = {
		label = "MDT",
		weight = 2000,
		stack = false,
		close = true,
		description = "Police MDT",
		client = {
			image = "mdt.png",
		}
	},

	["casino_ego_chaser"] = {
		label = "Casino Ego Chaser",
		weight = 0,
		stack = false,
		close = false,
		description = "Casino Ego Chaser",
		client = {
			image = "casino_ego_chaser.png",
		}
	},

	["cuffs"] = {
		label = "Handcuffs",
		weight = 500,
		stack = true,
		close = true,
		description = "Metal handcuffs",
		client = {
			image = "cuffs.png",
		}
	},

	["mangojuice"] = {
		label = "Mango Juice",
		weight = 100,
		stack = true,
		close = true,
		description = "Mango Juice Yeah",
		client = {
			image = "mangojuice.png",
		}
	},

	["heroinvialstagetwo"] = {
		label = "Vial of Heroin",
		weight = 250,
		stack = true,
		close = false,
		description = "Hmm, Maybe A Needle Can Help",
		client = {
			image = "heroinstagetwo.png",
		}
	},

	["phone_case_7"] = {
		label = "Phone Case 7",
		weight = 200,
		stack = false,
		close = true,
		description = "Stylish phone case 7",
		client = {
			image = "phone_case_7.png",
		}
	},

	["cheesewrap"] = {
		label = "BS Cheese Wrap",
		weight = 150,
		stack = true,
		close = true,
		description = "BurgerShot Cheese Wrap",
		client = {
			status = {
				hunger = 25,
			},
			image = "burger-chickenwrap.png",
		}
	},

	["blunt"] = {
		label = "Blunts",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "blunt.png",
		}
	},

	["casing"] = {
		label = "Evidence: Casing",
		weight = 10,
		stack = true,
		close = true,
		description = "Spent shell casing",
		client = {
			image = "casing.png",
		}
	},

	["lime"] = {
		label = "Lime",
		weight = 200,
		stack = true,
		close = false,
		description = "A Lime.",
		client = {
			image = "lime.png",
		}
	},

	["pisswasser2"] = {
		label = "Pißwasser Stout",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				thirst = 42,
			},
			image = "pisswaser2.png",
		}
	},

	["moneyshot"] = {
		label = "Money Shot",
		weight = 200,
		stack = true,
		close = true,
		description = "Money Shot",
		client = {
			status = {
				hunger = 44,
			},
			image = "burger-moneyshot.png",
		}
	},

	["gin"] = {
		label = "Gin",
		weight = 200,
		stack = true,
		close = true,
		description = "A bottle of Gin",
		client = {
			status = {
				thirst = 24,
			},
			image = "gin.png",
		}
	},

	["phone_green"] = {
		label = "Green Phone",
		weight = 700,
		stack = false,
		close = true,
		description = "Neat green phone ya got there",
		client = {
			image = "phone_green.png",
		}
	},

	["pizzmushrooms"] = {
		label = "Pizza Mushrooms",
		weight = 100,
		stack = true,
		close = true,
		description = "Sliced mushrooms",
		client = {
			image = "mushrooms.png",
		}
	},

	["binoculars"] = {
		label = "Binoculars",
		weight = 600,
		stack = true,
		close = true,
		description = "Sneaky Breaky...",
		client = {
			image = "binoculars.png",
		}
	},

	["packagedmeth"] = {
		label = "Meth Pack",
		weight = 700,
		stack = true,
		close = false,
		description = "Some packaged meth.",
		client = {
			image = "packagedmeth.png",
		}
	},

	["animal_tracker"] = {
		label = "Animal Tracker",
		weight = 200,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "animal_tracker.png",
		}
	},

	["white_cats4"] = {
		label = "White cats",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "kitty_white4.png",
		}
	},

	["cookednuggets"] = {
		label = "Chicken nuggets",
		weight = 250,
		stack = true,
		close = true,
		client = {
			image = "cookednuggets.png",
		}
	},

	["markedbills"] = {
		label = "Marked Money",
		weight = 1000,
		stack = false,
		close = true,
		description = "Money?",
		client = {
			image = "markedbills.png",
		}
	},

	["farm_cabbage"] = {
		label = "Cabbage Seeds",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "farm_cabbage.png",
		}
	},

	["loosecokestagethree"] = {
		label = "Loose Coke",
		weight = 100,
		stack = true,
		close = true,
		description = "Cut Cocaine",
		client = {
			image = "loosecokestagethree.png",
		}
	},

	["mining_copperbar"] = {
		label = "Copper Bar",
		weight = 500,
		stack = true,
		close = true,
		description = "Copper Bar",
		client = {
			image = "mining_copperbar.png",
		}
	},

	["white_pl4"] = {
		label = "White pl",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "PL_white4.png",
		}
	},

	["suspension5"] = {
		label = "Tier 5 Suspension",
		weight = 300,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "suspension5.png",
		}
	},

	["paintingj"] = {
		label = "Painting #4",
		weight = 2100,
		stack = false,
		close = false,
		description = "Art Gallery Painting #4",
		client = {
			image = "paintinge.png",
		}
	},

	["fnx45_part_2"] = {
		label = "fnx45 part",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "fnx45_part_2.png",
		}
	},

	["wood"] = {
		label = "Wood Planks",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "woodplank.png",
		}
	},

	["metaldetector"] = {
		label = "Metal Detector",
		weight = 200,
		stack = true,
		close = true,
		description = "Detect Metal beep",
		client = {
			image = "metaldetector.png",
		}
	},

	["crackrockstagethree"] = {
		label = "Best Crack Rock",
		weight = 250,
		stack = true,
		close = false,
		description = "This Rocks!",
		client = {
			image = "crackrock3.png",
		}
	},

	["rimjob"] = {
		label = "Rim Job",
		weight = 200,
		stack = true,
		close = true,
		description = "BurgerShot Donut",
		client = {
			status = {
				hunger = 60,
			},
			image = "burger-rimjob.png",
		}
	},

	["cappucc"] = {
		label = "Cappuccinotini",
		weight = 200,
		stack = true,
		close = true,
		description = "Cappuccinotini Cocktail",
		client = {
			status = {
				thirst = 29,
			},
			image = "cappucc.png",
		}
	},

	["hood"] = {
		label = "Vehicle Hood",
		weight = 300,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "hood.png",
		}
	},

	["olives"] = {
		label = "Olives",
		weight = 50,
		stack = true,
		close = true,
		description = "Black olives",
		client = {
			image = "olives.png",
		}
	},

	["engine2"] = {
		label = "Tier 2 Engine",
		weight = 300,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "engine2.png",
		}
	},

	["heroincutstagetwo"] = {
		label = "Cut Heroin",
		weight = 250,
		stack = true,
		close = false,
		description = "Cut Heroin",
		client = {
			image = "heroincut2.png",
		}
	},

	["white_xtc3"] = {
		label = "White XTC",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "unstamped_white3.png",
		}
	},

	["exhaust"] = {
		label = "Vehicle Exhaust",
		weight = 300,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "exhaust.png",
		}
	},

	["anchovy"] = {
		label = "Anchovy",
		weight = 20,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "anchovy.png",
		}
	},

	["curaco"] = {
		label = "Curaco",
		weight = 200,
		stack = true,
		close = true,
		description = "A bottle of Curaco",
		client = {
			status = {
				thirst = 25,
			},
			image = "curaco.png",
		}
	},

	["ruby_ring_silver"] = {
		label = "Ruby Ring Silver",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "ruby_ring_silver.png",
		}
	},

	["repairkit"] = {
		label = "Repairkit",
		weight = 500,
		stack = true,
		close = true,
		description = "A nice toolbox with stuff to repair your vehicle",
		client = {
			image = "repairkit.png",
		}
	},

	["radioscanner"] = {
		label = "Radio Scanner",
		weight = 1000,
		stack = true,
		close = true,
		description = "With this you can get some police alerts. Not 100% effective however",
		client = {
			image = "radioscanner.png",
		}
	},

	["marijuana"] = {
		label = "Marijuana",
		weight = 500,
		stack = true,
		close = true,
		description = "Some fine smelling buds.",
		client = {
			image = "marijuana.png",
		}
	},

	["cocacola"] = {
		label = "McDonalds Coca-Cola",
		weight = 200,
		stack = true,
		close = true,
		description = "Nice to eat",
		client = {
			image = "cocacola.png",
		}
	},

	["orange_cats"] = {
		label = "orange cats",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "kitty_orange.png",
		}
	},

	["diamond_earring_silver"] = {
		label = "Diamond Earrings Silver",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "diamond_earring_silver.png",
		}
	},

	["advancedrepairkit"] = {
		label = "Advanced Repairkit",
		weight = 1500,
		stack = true,
		close = true,
		description = "A nice toolbox with stuff to repair your vehicle",
		client = {
			image = "advancedkit.png",
		}
	},

	["purple_uninflated_balloon"] = {
		label = "Purple Uninflated Balloon",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "purple_uninflated_balloon.png",
		}
	},

	["security_card_02"] = {
		label = "Security Card B",
		weight = 100,
		stack = true,
		close = true,
		description = "A security card... I wonder what it goes to",
		client = {
			image = "security_card_02.png",
		}
	},

	["bprooftires"] = {
		label = "Bulletproof Tires",
		weight = 300,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "bprooftires.png",
		}
	},

	["skybar_chocolatecup"] = {
		label = "skybar chocolatecup",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "skybar_vanillacupcakes.png",
		}
	},

	["antiquecoin"] = {
		label = "Antique Coin",
		weight = 200,
		stack = true,
		close = false,
		description = "This seems old...",
		client = {
			image = "antiquecoin.png",
		}
	},

	["leanbluntwrap"] = {
		label = "Lean Blunt Wrap",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "leanbluntwrap.png",
		}
	},

	["blue_trolls3"] = {
		label = "blue trolls",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "troll_blue3.png",
		}
	},

	["huntingknife"] = {
		label = "Hunting Knife",
		weight = 1000,
		stack = true,
		close = true,
		description = "Knife for Hunting",
		client = {
			image = "huntingknife.png",
		}
	},

	["icecream"] = {
		label = "Ice Cream",
		weight = 500,
		stack = true,
		close = false,
		description = "Ice Cream.",
		client = {
			image = "burger-icecream.png",
		}
	},

	["r-bitter"] = {
		label = "Bitter",
		weight = 100,
		stack = true,
		close = true,
		description = "Bitter For Making Cocktails",
		client = {
			image = "v-bitter.png",
		}
	},

	["mala_roupas"] = {
		label = "Clothing Bag",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "mala_roupas.png",
		}
	},

	["orange_uninflated_balloon"] = {
		label = "Orange Uninflated Balloon",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "orange_uninflated_balloon.png",
		}
	},

	["lsdburner"] = {
		label = "LSD Burner",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "gta5phone.png",
		}
	},

	["chillypepper"] = {
		label = "Chilly Pepper",
		weight = 150,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chillypepper.png",
		}
	},

	["oystershell"] = {
		label = "Oyster Shell",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "oyster.png",
		}
	},

	["chemicals"] = {
		label = "Chemicals",
		weight = 1000,
		stack = true,
		close = false,
		description = "Chemicals, handle with care...",
		client = {
			image = "chemicals.png",
		}
	},

	["crack_baggy"] = {
		label = "Bag of Crack",
		weight = 400,
		stack = true,
		close = true,
		description = "To get happy faster",
		client = {
			image = "crack_baggy.png",
		}
	},

	["bolognese"] = {
		label = "Spaghetti Bolognese",
		weight = 300,
		stack = true,
		close = true,
		client = {
			image = "bolognese.png",
		}
	},

	["capricciosa"] = {
		label = "Pizza Capricciosa",
		weight = 300,
		stack = true,
		close = true,
		client = {
			image = "capricciosa.png",
		}
	},

	["sbullet"] = {
		label = "Silver Bullet",
		weight = 200,
		stack = true,
		close = true,
		description = "Silver Bullet Cocktail",
		client = {
			status = {
				thirst = 29,
			},
			image = "sbullet.png",
		}
	},

	["driedmescaline"] = {
		label = "Mescaline",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "driedmescaline.png",
		}
	},

	["skybar_daquiri"] = {
		label = "Daquiri",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "skybar_daquiri.png",
		}
	},

	["pacific_key2"] = {
		label = "Bank Data Key",
		weight = 1000,
		stack = false,
		close = true,
		description = "A data key stolen from the pacific bank.",
		client = {
			image = "pacific_key2.png",
		}
	},

	["pacific_key1"] = {
		label = "Bank Data Key",
		weight = 1000,
		stack = false,
		close = true,
		description = "A data key stolen from the pacific bank.",
		client = {
			image = "pacific_key1.png",
		}
	},

	["casino_coffee"] = {
		label = "Casino Coffee",
		weight = 0,
		stack = false,
		close = false,
		description = "Casino Coffee",
		client = {
			image = "casino_coffee.png",
		}
	},

	["drycannabis"] = {
		label = "Dry Cannabis",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "driedcannabis.png",
		}
	},

	["silverchain"] = {
		label = "Silver Chain",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "silverchain.png",
		}
	},

	["mahi_mahi"] = {
		label = "Mahi Mahi",
		weight = 3500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "mahi_mahi.png",
		}
	},

	["heartstopper"] = {
		label = "HeartStopper",
		weight = 200,
		stack = true,
		close = true,
		description = "Heartstopper",
		client = {
			status = {
				hunger = 68,
			},
			image = "heartstopper.png",
		}
	},

	["basil"] = {
		label = "Basil",
		weight = 20,
		stack = true,
		close = true,
		description = "Fresh basil leaves",
		client = {
			image = "basil.png",
		}
	},

	["plasmacutter"] = {
		label = "Plasma Cutter",
		weight = 1000,
		stack = true,
		close = true,
		description = "For cutting through glass",
		client = {
			image = "plasmacutter.png",
		}
	},

	["drone"] = {
		label = "Basic Drone",
		weight = 150,
		stack = true,
		close = false,
		description = "drone!",
		client = {
			image = "drone.png",
		}
	},

	["copper"] = {
		label = "Copper",
		weight = 100,
		stack = true,
		close = false,
		description = "Nice piece of metal that you can probably use for something",
		client = {
			image = "copper.png",
		}
	},

	["lsd_vial_four"] = {
		label = "Tier 4 LSD Vial",
		weight = 100,
		stack = true,
		close = true,
		description = "Vial Of LSD",
		client = {
			image = "lsd_vial_four.png",
		}
	},

	["paintingg"] = {
		label = "Painting #6",
		weight = 2100,
		stack = false,
		close = false,
		description = "Art Gallery Painting #6",
		client = {
			image = "paintinge.png",
		}
	},

	["charcoal"] = {
		label = "Charcoal",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "charcoal.png",
		}
	},

	["fob_racing_basic"] = {
		label = "Basic Racing Fob",
		weight = 500,
		stack = false,
		close = true,
		description = "This basic fob allows someone to join custom races.",
		client = {
			image = "fob_racing_basic.png",
		}
	},

	["white_aliens"] = {
		label = "White aliens",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "alien_white.png",
		}
	},

	["chickenwrap"] = {
		label = "BS Goat Cheese Wrap",
		weight = 150,
		stack = true,
		close = true,
		description = "BurgerShot Goat Cheese Wrap",
		client = {
			status = {
				hunger = 23,
			},
			image = "burger-goatwrap.png",
		}
	},

	["xanaxbottle"] = {
		label = "Zany Bottle",
		weight = 100,
		stack = true,
		close = true,
		description = "Bottle Of Good Drugs",
		client = {
			image = "pillbottle.png",
		}
	},

	["pizzabase"] = {
		label = "Pizza Base",
		weight = 200,
		stack = true,
		close = true,
		description = "Ready for toppings",
		client = {
			image = "pizzabase.png",
		}
	},

	["catfish"] = {
		label = "Catfish",
		weight = 1000,
		stack = true,
		close = false,
		description = "A Fish",
		client = {
			image = "catfish.png",
		}
	},

	["white_playboys4"] = {
		label = "White Fruit",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "playboy_white4.png",
		}
	},

	["farm_scissor"] = {
		label = "Farm Scisors",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "farm_scissor.png",
		}
	},

	["tomatopaste"] = {
		label = "tomato Paste",
		weight = 250,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "tomatopaste.png",
		}
	},

	["pisswasser"] = {
		label = "Pißwasser",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				thirst = 47,
			},
			image = "pisswaser1.png",
		}
	},

	["fish2"] = {
		label = "Fish",
		weight = 1000,
		stack = true,
		close = false,
		description = "A Fish",
		client = {
			image = "fish2.png",
		}
	},

	["cutonion"] = {
		label = "Sliced Onion",
		weight = 60,
		stack = true,
		close = true,
		client = {
			image = "cutonion.png",
		}
	},

	["red_pl3"] = {
		label = "red pl",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "PL_red3.png",
		}
	},

	["paintcan"] = {
		label = "Vehicle Spray Can",
		weight = 300,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "spraycan.png",
		}
	},

	["ruby_necklace_silver"] = {
		label = "Ruby Necklace Silver",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "ruby_necklace_silver.png",
		}
	},

	["spores"] = {
		label = "spores",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "shrooms.png",
		}
	},

	["r-hulk"] = {
		label = "Hulk",
		weight = 100,
		stack = true,
		close = true,
		description = "Hulk Cocktail",
		client = {
			image = "v-hulk.png",
		}
	},

	["skybar_watermelon_dream"] = {
		label = "Watermelon Dream",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "skybar_watermelon_dream.png",
		}
	},

	["skybar_cocktail"] = {
		label = "Cocktail",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "skybar_cocktail.png",
		}
	},

	["mining_ironbar"] = {
		label = "Iron Bar",
		weight = 500,
		stack = true,
		close = true,
		description = "Iron Bar",
		client = {
			image = "mining_ironbar.png",
		}
	},

	["spraycan"] = {
		label = "Spray Can",
		weight = 1000,
		stack = false,
		close = true,
		description = "Spray Can",
		client = {
			image = "spraycan.png",
		}
	},

	["morphine"] = {
		label = "Morphin",
		weight = 100,
		stack = true,
		close = true,
		description = "I Cant Feel Anything",
		client = {
			image = "morphine.png",
		}
	},

	["fish"] = {
		label = "Fish",
		weight = 1000,
		stack = true,
		close = false,
		description = "A Fish",
		client = {
			image = "fish.png",
		}
	},

	["blue_pl3"] = {
		label = "blue pl",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "PL_blue3.png",
		}
	},

	["horn"] = {
		label = "Custom Vehicle Horn",
		weight = 300,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "horn.png",
		}
	},

	["weedkey"] = {
		label = "Key C",
		weight = 200,
		stack = true,
		close = false,
		description = "Random Key, with a \"Seed\" Engraved on the Back...",
		client = {
			image = "key.png",
		}
	},

	["raw_pork"] = {
		label = "Raw Pork",
		weight = 250,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "raw_pork.png",
		}
	},

	["titanium_rod"] = {
		label = "Titanium rod",
		weight = 450,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "titanium_rod.png",
		}
	},

	["cannabis"] = {
		label = "Cannabis",
		weight = 700,
		stack = true,
		close = true,
		description = "Uncured cannabis",
		client = {
			image = "cannabis.png",
		}
	},

	["orange_cats2"] = {
		label = "orange cats",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "kitty_orange2.png",
		}
	},

	["salmon"] = {
		label = "Salmon",
		weight = 1000,
		stack = true,
		close = false,
		description = "A Fish",
		client = {
			image = "salmon.png",
		}
	},

	["nitrous_oxide"] = {
		label = "Nos Oxide",
		weight = 550,
		stack = true,
		close = false,
		description = "It make you GO faaast",
		client = {
			image = "nitrous_oxide.png",
		}
	},

	["blue_playboys3"] = {
		label = "blue Fruit",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "playboy_blue3.png",
		}
	},

	["cokebaggystagethree"] = {
		label = "Bag Of Cocaine",
		weight = 100,
		stack = true,
		close = true,
		description = "Bagged Cocaine",
		client = {
			image = "cocaine_baggystagethree.png",
		}
	},

	["cutter"] = {
		label = "cutter for something",
		weight = 1500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cutter.png",
		}
	},

	["meth"] = {
		label = "Meth Unpack",
		weight = 400,
		stack = true,
		close = false,
		description = "Unpackaged Meth",
		client = {
			image = "meth.png",
		}
	},

	["harness"] = {
		label = "Race Harness",
		weight = 300,
		stack = false,
		close = true,
		description = "Racing Harness so no matter what you stay in the car",
		client = {
			image = "harness.png",
		}
	},

	["skybar_water"] = {
		label = "Water",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "skybar_water.png",
		}
	},

	["skybar_coffee"] = {
		label = "Coffee",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "skybar_coffee.png",
		}
	},

	["pasta"] = {
		label = "Bag of Pasta",
		weight = 200,
		stack = true,
		close = false,
		description = "A bag of Pasta",
		client = {
			image = "pasta.png",
		}
	},

	["farm_mushrooms"] = {
		label = "Mushrooms Seeds",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "farm_mushrooms.png",
		}
	},

	["orangewine"] = {
		label = "Orange Wine",
		weight = 1500,
		stack = true,
		close = true,
		description = "Orange Wine Yeah",
		client = {
			image = "orangewine.png",
		}
	},

	["origami5"] = {
		label = "Origami Unicorn",
		weight = 100,
		stack = false,
		close = 1,
		description = "",
		client = {
			image = "origami5.png",
		}
	},

	["dextrobluntwrap"] = {
		label = "Dextro Blunt Wrap",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "dextrobluntwrap.png",
		}
	},

	["sparetire"] = {
		label = "Spare Tire",
		weight = 300,
		stack = false,
		close = false,
		description = "",
		client = {
			image = "sparetire.png",
		}
	},

	["graphite_rod"] = {
		label = "Graphite rod",
		weight = 350,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "graphite_rod.png",
		}
	},

	["hotsauce"] = {
		label = "Hot Sauce",
		weight = 150,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "hotsauce.png",
		}
	},

	["cheddar"] = {
		label = "Cheddar Slice",
		weight = 500,
		stack = true,
		close = false,
		description = "Slice of Cheese",
		client = {
			image = "cheddar.png",
		}
	},

	["meatfree"] = {
		label = "Meat Free",
		weight = 200,
		stack = true,
		close = true,
		description = "Meat Free",
		client = {
			status = {
				hunger = 58,
			},
			image = "burger-meatfree.png",
		}
	},

	["orange_xtc"] = {
		label = "Orange XTC",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "unstamped_orange.png",
		}
	},

	["corncob"] = {
		label = "Corn Cob",
		weight = 150,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "corncob.png",
		}
	},

	["vicodin"] = {
		label = "Vicie",
		weight = 100,
		stack = true,
		close = true,
		description = "I CAN DO EVERYTHING",
		client = {
			image = "vicodin.png",
		}
	},

	["raw_meat"] = {
		label = "Raw Meat",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "raw_meat.png",
		}
	},

	["brokengameboy"] = {
		label = "Broken Gameboy",
		weight = 200,
		stack = true,
		close = false,
		description = "A Broken Gameboy",
		client = {
			image = "brokengameboy.png",
		}
	},

	["amaretto"] = {
		label = "Amaretto",
		weight = 200,
		stack = true,
		close = true,
		description = "A bottle of Amaretto",
		client = {
			status = {
				thirst = 26,
			},
			image = "amaretto.png",
		}
	},

	["skybar_island_breeze"] = {
		label = "Island Breeze",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "skybar_island_breeze.png",
		}
	},

	["farm_peach"] = {
		label = "Peach",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "farm_peach.png",
		}
	},

	["sulfuric_acid"] = {
		label = "Sulfuric Acid",
		weight = 500,
		stack = true,
		close = false,
		description = "Chemicals, handle with care!",
		client = {
			image = "sulfuric_acid.png",
		}
	},

	["nplate"] = {
		label = "Nachos Plate",
		weight = 200,
		stack = true,
		close = true,
		description = "A plate of nachos and cheese",
		client = {
			image = "nplate.png",
		}
	},

	["yellow_uninflated_balloon"] = {
		label = "Yellow Uninflated Balloon",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "yellow_uninflated_balloon.png",
		}
	},

	["fakecash"] = {
		label = "Fake Cash",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "fakecash.png",
		}
	},

	["splate"] = {
		label = "Steak Plate",
		weight = 200,
		stack = true,
		close = true,
		description = "A Steak Plate",
		client = {
			image = "splate.png",
		}
	},

	["ziptie"] = {
		label = "ZipTie",
		weight = 50,
		stack = true,
		close = true,
		description = "Comes in handy when people misbehave. Maybe it can be used for something else?",
		client = {
			image = "ziptie.png",
		}
	},

	["adderal_prescription"] = {
		label = "Mdderal Prescription",
		weight = 250,
		stack = true,
		close = false,
		description = "I CAN DO EVERYTHING",
		client = {
			image = "adderalprescription.png",
		}
	},

	["ammonia"] = {
		label = "Ammonia",
		weight = 11500,
		stack = true,
		close = false,
		description = "Amonia Ingredient",
		client = {
			image = "ammonia.png",
		}
	},

	["handcuffs"] = {
		label = "Handcuffs",
		weight = 1000,
		stack = true,
		close = true,
		description = "Comes in handy when people misbehave. Maybe it can be used for something else?",
		client = {
			image = "handcuffs.png",
		}
	},

	["coke"] = {
		label = "Raw Cocaine",
		weight = 1000,
		stack = true,
		close = false,
		description = "Raw Cocaine",
		client = {
			image = "coke.png",
		}
	},

	["engine1"] = {
		label = "Tier 1 Engine",
		weight = 300,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "engine1.png",
		}
	},

	["orange_trolls2"] = {
		label = "orange trolls",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "troll_orange2.png",
		}
	},

	["camera_paper"] = {
		label = "Camera Signal Paper",
		weight = 200,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "camera_paper.png",
		}
	},

	["mdlean"] = {
		label = "Sizzurup",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "Sizzurup.png",
		}
	},

	["sapphire_ring"] = {
		label = "Sapphire Ring",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "sapphire_ring.png",
		}
	},

	["kurkakola"] = {
		label = "Cola",
		weight = 500,
		stack = true,
		close = true,
		description = "For all the thirsty out there",
		client = {
			image = "cola.png",
		}
	},

	["packagedcoca"] = {
		label = "Cocain Pack",
		weight = 600,
		stack = true,
		close = false,
		description = "Some packaged coke.",
		client = {
			image = "packagedcoca.png",
		}
	},

	["white_cats"] = {
		label = "White cats",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "kitty_white.png",
		}
	},

	["red_trolls2"] = {
		label = "red trolls",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "troll_red2.png",
		}
	},

	["broom"] = {
		label = "Broom",
		weight = 100,
		stack = true,
		close = true,
		description = "Clean your scenes",
		client = {
			image = "broom.png",
		}
	},

	["orange_cats3"] = {
		label = "orange cats",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "kitty_orange3.png",
		}
	},

	["sorted_money"] = {
		label = "Sorted Money",
		weight = 12000,
		stack = true,
		close = false,
		description = "Some sorted cash",
		client = {
			image = "sorted_money.png",
		}
	},

	["miningdrill"] = {
		label = "Mining Drill",
		weight = 1000,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "miningdrill.png",
		}
	},

	["origami20"] = {
		label = "Origami Squirrel",
		weight = 100,
		stack = false,
		close = 1,
		description = "",
		client = {
			image = "origami20.png",
		}
	},

	["phone_purple_deep"] = {
		label = "Deep Purple Phone",
		weight = 700,
		stack = false,
		close = true,
		description = "A phone with a deep purple color",
		client = {
			image = "phone_purple_deep.png",
		}
	},

	["gratefuldead_tabs"] = {
		label = "Maze Tabs",
		weight = 100,
		stack = true,
		close = true,
		description = "I heard Its aMAZEing.. get it.. ill stop now",
		client = {
			image = "gratefuldead_tabs.png",
		}
	},

	["visa"] = {
		label = "Visa Card",
		weight = 100,
		stack = false,
		close = false,
		description = "Visa can be used via ATM",
		client = {
			image = "visacard.png",
		}
	},

	["origami4"] = {
		label = "Origami Dragon",
		weight = 100,
		stack = false,
		close = 1,
		description = "",
		client = {
			image = "origami4.png",
		}
	},

	["tequila"] = {
		label = "Tequila",
		weight = 600,
		stack = true,
		close = true,
		description = "A Good Time",
		client = {
			image = "tequila.png",
		}
	},

	["lawyerpass"] = {
		label = "Lawyer Pass",
		weight = 100,
		stack = false,
		close = false,
		description = "Pass exclusive to lawyers to show they can represent a suspect",
		client = {
			image = "lawyerpass.png",
		}
	},

	["slicedpie"] = {
		label = "Slice of Pie",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "slicedpie.png",
		}
	},

	["farm_carrot_harvested"] = {
		label = "Carrot",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "farm_carrot_harvested.png",
		}
	},

	["emptynos"] = {
		label = "EMPTY NOS",
		weight = 1500,
		stack = true,
		close = true,
		description = "An Empty NOS Bottle",
		client = {
			image = "chop-nos.png",
		}
	},

	["farm_orange"] = {
		label = "Orange",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "farm_orange.png",
		}
	},

	["torpedo"] = {
		label = "Torpedo",
		weight = 200,
		stack = true,
		close = true,
		description = "BurgerShot Torpedo",
		client = {
			status = {
				hunger = 50,
			},
			image = "burger-torpedo.png",
		}
	},

	["liquidmix"] = {
		label = "Liquid Chem Mix",
		weight = 1000,
		stack = true,
		close = false,
		description = "Chemicals, handle with care!",
		client = {
			image = "liquidmix.png",
		}
	},

	["suspension2"] = {
		label = "Tier 2 Suspension",
		weight = 300,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "suspension2.png",
		}
	},

	["dendrogyra_coral"] = {
		label = "Dendrogyra",
		weight = 1000,
		stack = true,
		close = true,
		description = "Its also known as pillar coral",
		client = {
			image = "dendrogyra_coral.png",
		}
	},

	["vannecklace"] = {
		label = "Rare Necklace",
		weight = 2500,
		stack = false,
		close = false,
		description = "Rare necklace from bank vault!",
		client = {
			image = "vanNecklace.png",
		}
	},

	["diving_gear"] = {
		label = "Diving Gear",
		weight = 10000,
		stack = false,
		close = true,
		description = "An oxygen tank and a rebreather",
		client = {
			image = "diving_gear.png",
		}
	},

	["mangowine"] = {
		label = "Mango Wine",
		weight = 1500,
		stack = true,
		close = true,
		description = "Mango Wine Yeah",
		client = {
			image = "mangowine.png",
		}
	},

	["farm_beetrootseed"] = {
		label = "Beet Seeds",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "farm_beetrootseed.png",
		}
	},

	["spray_remover"] = {
		label = "Kit rimozione Spray",
		weight = 300,
		stack = true,
		close = true,
		description = "Un kit di rimozione vernice spray",
		client = {
			image = "spray_remover.png",
		}
	},

	["coke_brick"] = {
		label = "Coke Brick",
		weight = 1000,
		stack = false,
		close = true,
		description = "Heavy package of cocaine, mostly used for deals and takes a lot of space",
		client = {
			image = "coke_brick.png",
		}
	},

	["goldfish"] = {
		label = "Goldfish",
		weight = 1000,
		stack = true,
		close = false,
		description = "A Fish",
		client = {
			image = "goldfish.png",
		}
	},

	["boxofweed"] = {
		label = "Weed Box",
		weight = 2500,
		stack = true,
		close = true,
		description = "Weed Box !!",
		client = {
			image = "boxofweed.png",
		}
	},

	["farm_flour"] = {
		label = "Wheat Flour",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "farm_flour.png",
		}
	},

	["heavycutters"] = {
		label = "heavycutters",
		weight = 7000,
		stack = true,
		close = false,
		description = "The real deal...",
		client = {
			image = "heavycutters.png",
		}
	},

	["pickle"] = {
		label = "Pickle",
		weight = 200,
		stack = true,
		close = true,
		description = "A jar of Pickles",
		client = {
			image = "pickle.png",
		}
	},

	["iphone"] = {
		label = "iPhone",
		weight = 500,
		stack = true,
		close = true,
		description = "Very expensive phone",
		client = {
			image = "iphone.png",
		}
	},

	["cooked_meat"] = {
		label = "Cooked Meat",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "cooked_meat.png",
		}
	},

	["diavola"] = {
		label = "Pizza Diavola",
		weight = 300,
		stack = true,
		close = true,
		client = {
			image = "diavola.png",
		}
	},

	["red_uninflated_balloon"] = {
		label = "Red Uninflated Balloon",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "red_uninflated_balloon.png",
		}
	},

	["pineapple_tabs"] = {
		label = "Pineapple Tabs",
		weight = 100,
		stack = true,
		close = true,
		description = "When You Hold It Upside It Means Something Different",
		client = {
			image = "pineapple_tabs.png",
		}
	},

	["diamond_earring"] = {
		label = "Diamond Earrings",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "diamond_earring.png",
		}
	},

	["cooked_pork"] = {
		label = "Cooked Pork",
		weight = 250,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cooked_pork.png",
		}
	},

	["skirts"] = {
		label = "Vehicle Skirts",
		weight = 300,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "skirts.png",
		}
	},

	["cokebaggystagetwo"] = {
		label = "Bag Of Cocaine",
		weight = 100,
		stack = true,
		close = true,
		description = "Bagged Cocaine",
		client = {
			image = "cocaine_baggystagetwo.png",
		}
	},

	["printerdocument"] = {
		label = "Document",
		weight = 500,
		stack = false,
		close = true,
		description = "A nice document",
		client = {
			image = "printerdocument.png",
		}
	},

	["orange_playboys2"] = {
		label = "orange Fruit",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "playboy_orange2.png",
		}
	},

	["mininglaser"] = {
		label = "Mining Laser",
		weight = 900,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "mininglaser.png",
		}
	},

	["whale2"] = {
		label = "Whale",
		weight = 1000,
		stack = true,
		close = false,
		description = "A Fish",
		client = {
			image = "whale2.png",
		}
	},

	["ambeer"] = {
		label = "AM Beer",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				thirst = 43,
			},
			image = "ambeer.png",
		}
	},

	["heroinlabkit"] = {
		label = "Heroin Lab Kit",
		weight = 250,
		stack = true,
		close = false,
		description = "How Can A Big Ass Table Fit In One Slot",
		client = {
			image = "labkit.png",
		}
	},

	["chop-engine"] = {
		label = "Engine",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chop-engine.png",
		}
	},

	["emerald_earring"] = {
		label = "Emerald Earrings",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "emerald_earring.png",
		}
	},

	["skybar_island_fantasy"] = {
		label = "Island Fantasy",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "skybar_island_fantasy.png",
		}
	},

	["raw_xtc"] = {
		label = "Raw XTC",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "raw_xtc.png",
		}
	},

	["brakes1"] = {
		label = "Tier 1 Brakes",
		weight = 300,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "brakes1.png",
		}
	},

	["security_system_device"] = {
		label = "Security System Hacking Device",
		weight = 1000,
		stack = false,
		close = true,
		description = "This device look sus",
		client = {
			image = "hackingdevice.png",
		}
	},

	["tosti"] = {
		label = "Grilled Cheese Sandwich",
		weight = 200,
		stack = true,
		close = true,
		description = "Nice to eat",
		client = {
			image = "tosti.png",
		}
	},

	["weed_nutrition"] = {
		label = "Plant Fertilizer",
		weight = 2000,
		stack = true,
		close = true,
		description = "Plant nutrition",
		client = {
			image = "weed_nutrition.png",
		}
	},

	["skybar_strawberrycup"] = {
		label = "skybar strawberrycup",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "skybar_vanillacupcakes.png",
		}
	},

	["phone_purple"] = {
		label = "Purple Phone",
		weight = 700,
		stack = false,
		close = true,
		description = "A neat purple phone",
		client = {
			image = "phone_purple.png",
		}
	},

	["spoiler"] = {
		label = "Vehicle Spoiler",
		weight = 300,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "spoiler.png",
		}
	},

	["safecracker"] = {
		label = "Safecracker",
		weight = 100,
		stack = true,
		close = false,
		description = "Used For Cracking Safe",
		client = {
			image = "safecracker.png",
		}
	},

	["brokenknife"] = {
		label = "Broken Knife",
		weight = 200,
		stack = true,
		close = false,
		description = "Rusted Knife",
		client = {
			image = "brokenknife.png",
		}
	},

	["casino_goldchip"] = {
		label = "Casino Chip",
		weight = 0,
		stack = true,
		close = false,
		description = "Diamond Casino Chip",
		client = {
			image = "casino_goldchip.png",
		}
	},

	["redpepper"] = {
		label = "Red Pepper",
		weight = 50,
		stack = true,
		close = false,
		description = "Red Pepper Yeah",
		client = {
			image = "redpepper.png",
		}
	},

	["redfish"] = {
		label = "Redfish",
		weight = 1000,
		stack = true,
		close = false,
		description = "A Fish",
		client = {
			image = "redfish.png",
		}
	},

	["chop-brakes"] = {
		label = "Brakes",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chop-brakes.png",
		}
	},

	["cutlettuce"] = {
		label = "Sliced Lettuce",
		weight = 40,
		stack = true,
		close = true,
		client = {
			image = "cutlettuce.png",
		}
	},

	["vegetariana"] = {
		label = "Pizza Vegetariana",
		weight = 300,
		stack = true,
		close = true,
		client = {
			image = "vegetariana.png",
		}
	},

	["casino_donut"] = {
		label = "Casino Donut",
		weight = 0,
		stack = false,
		close = false,
		description = "Casino Donut",
		client = {
			image = "casino_donut.png",
		}
	},

	["groundpepper"] = {
		label = "Black Ground Pepper",
		weight = 100,
		stack = true,
		close = false,
		description = "Ground Pepper Yeah",
		client = {
			image = "groundpepper.png",
		}
	},

	["huntinglicense"] = {
		label = "hunting License",
		weight = 100,
		stack = false,
		close = true,
		description = "Hunting License",
		client = {
			image = "hunting_license.png",
		}
	},

	["aluminumoxide"] = {
		label = "Aluminium Powder",
		weight = 100,
		stack = true,
		close = false,
		description = "Some powder to mix with",
		client = {
			image = "aluminumoxide.png",
		}
	},

	["orange_xtc3"] = {
		label = "Orange XTC",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "unstamped_orange3.png",
		}
	},

	["farm_peach_juice"] = {
		label = "Peach Juice",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "farm_peach_juice.png",
		}
	},

	["fishingrod"] = {
		label = "Fishing Rod",
		weight = 1000,
		stack = true,
		close = true,
		description = "With this I can catch the fish..",
		client = {
			image = "fishingrod.png",
		}
	},

	["weed_whitewidow"] = {
		label = "White Widow 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g White Widow",
		client = {
			image = "weed_baggy.png",
		}
	},

	["fob_racing_master"] = {
		label = "Master Racing Fob",
		weight = 500,
		stack = false,
		close = true,
		description = "This master fob allows someone to create custom races.",
		client = {
			image = "fob_racing_master.png",
		}
	},

	["chemicalvapor"] = {
		label = "Chemical Vapors",
		weight = 1000,
		stack = true,
		close = false,
		description = "High Pressure Chemical Vapors, Explosive!",
		client = {
			image = "chemicalvapor.png",
		}
	},

	["blue_playboys4"] = {
		label = "blue Fruit",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "playboy_blue4.png",
		}
	},

	["farm_potato"] = {
		label = "Potato Seeds",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "farm_potato.png",
		}
	},

	["goldennugget"] = {
		label = "The Mojave Nugget",
		weight = 200,
		stack = true,
		close = false,
		description = "This seems valuable, hmm",
		client = {
			image = "goldnugget.png",
		}
	},

	["chickenbreast"] = {
		label = "Chicken Breast",
		weight = 100,
		stack = true,
		close = false,
		description = "",
		client = {
			status = {
				hunger = 13,
			},
			image = "chickenbreast.png",
		}
	},

	["skybar_chocolate_cake"] = {
		label = "Chocolate Cake",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "skybar_chocolate_cake.png",
		}
	},

	["bratte"] = {
		label = "The Bratte",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				thirst = 44,
			},
			image = "bratte.png",
		}
	},

	["wings"] = {
		label = "Plate of Wings",
		weight = 200,
		stack = true,
		close = true,
		description = "A plate of Chicken Wings",
		client = {
			image = "wings.png",
		}
	},

	["mdbutter"] = {
		label = "Butter",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "butter.png",
		}
	},

	["r-sparkles"] = {
		label = "Sparkles",
		weight = 100,
		stack = true,
		close = true,
		description = "Sparkles Cocktail",
		client = {
			image = "v-sparkles.png",
		}
	},

	["can"] = {
		label = "Empty Can",
		weight = 100,
		stack = true,
		close = false,
		description = "An empty can, good for recycling",
		client = {
			image = "can.png",
		}
	},

	["skybar_coconut"] = {
		label = "Coconut",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "skybar_coconut.png",
		}
	},

	["uncut_ruby"] = {
		label = "Uncut Ruby",
		weight = 100,
		stack = true,
		close = false,
		description = "A rough Ruby",
		client = {
			image = "uncut_ruby.png",
		}
	},

	["lsdlabkit"] = {
		label = "LSD Mixing Table",
		weight = 1000,
		stack = true,
		close = true,
		description = "How Can A Big Ass Table Fit In One Slot",
		client = {
			image = "labkit.png",
		}
	},

	["farm_tomato_ketchup"] = {
		label = "Tomato Juice",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "farm_tomato_ketchup.png",
		}
	},

	["mdreddextro"] = {
		label = "Red Dextro",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "reddextro.png",
		}
	},

	["silver_ring"] = {
		label = "Silver Ring",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "silver_ring.png",
		}
	},

	["rhinohorn"] = {
		label = "Rhino Horn",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "rhinohorn.png",
		}
	},

	["cupofdextro"] = {
		label = "Dextro Cup",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cupofdextro.png",
		}
	},

	["goldenphone"] = {
		label = "Golden Satellite Phone",
		weight = 200,
		stack = true,
		close = false,
		description = "A communication device used to contact russian mafia.",
		client = {
			image = "goldenphone.png",
		}
	},

	["cracker"] = {
		label = "Cracker",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cracker.png",
		}
	},

	["origami9"] = {
		label = "Origami Whale",
		weight = 100,
		stack = false,
		close = 1,
		description = "",
		client = {
			image = "origami9.png",
		}
	},

	["casino_sandwitch"] = {
		label = "Casino Sandwitch",
		weight = 0,
		stack = false,
		close = false,
		description = "Casino Sandwitch",
		client = {
			image = "casino_sandwitch.png",
		}
	},

	["emptycowbucket"] = {
		label = "Empty Bucket",
		weight = 25,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "emptybucket.png",
		}
	},

	["cigar"] = {
		label = "Cigar",
		weight = 50,
		stack = true,
		close = true,
		description = "A cigar",
		client = {
			image = "cigar.png",
		}
	},

	["lsd"] = {
		label = "LSD",
		weight = 500,
		stack = true,
		close = false,
		description = "Lets get this party started!",
		client = {
			image = "lsd.png",
		}
	},

	["gatecrack"] = {
		label = "Gatecrack",
		weight = 1000,
		stack = true,
		close = true,
		description = "Handy software to tear down some fences",
		client = {
			image = "usb_device.png",
		}
	},

	["meatball"] = {
		label = "Meatballs",
		weight = 200,
		stack = true,
		close = true,
		client = {
			image = "meatball.png",
		}
	},

	["bumper"] = {
		label = "Vehicle Bumper",
		weight = 300,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "bumper.png",
		}
	},

	["burriedtreasure"] = {
		label = "Burried treasure",
		weight = 200,
		stack = true,
		close = false,
		description = "Burried Treasure, woah",
		client = {
			image = "burriedtreasure.png",
		}
	},

	["emerald_earring_silver"] = {
		label = "Emerald Earrings Silver",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "emerald_earring_silver.png",
		}
	},

	["flusher"] = {
		label = "The Flusher",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				thirst = 48,
			},
			image = "flusher.png",
		}
	},

	["dabrig"] = {
		label = "Dab Rig",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "dabrig2.png",
		}
	},

	["shotfries"] = {
		label = "Shot Fries",
		weight = 200,
		stack = true,
		close = true,
		description = "Shot Fries",
		client = {
			status = {
				hunger = 41,
			},
			image = "burger-fries.png",
		}
	},

	["weed_purple-haze"] = {
		label = "Purple Haze 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g Purple Haze",
		client = {
			image = "weed_baggy.png",
		}
	},

	["wildcherry_tabs"] = {
		label = "Wild Cherry Tabs",
		weight = 100,
		stack = true,
		close = true,
		description = "Lets Get Wild",
		client = {
			image = "wildcherry_tabs.png",
		}
	},

	["poppyresin"] = {
		label = "Poppy resin",
		weight = 2000,
		stack = true,
		close = false,
		description = "It sticks to your fingers when you handle it.",
		client = {
			image = "poppyresin.png",
		}
	},

	["red_cats2"] = {
		label = "red cats",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "kitty_red2.png",
		}
	},

	["tiramisu"] = {
		label = "Tiramisu",
		weight = 200,
		stack = true,
		close = true,
		client = {
			image = "tiramisu.png",
		}
	},

	["heroincutstagethree"] = {
		label = "Cut Heroin",
		weight = 250,
		stack = true,
		close = false,
		description = "Cut Heroin",
		client = {
			image = "heroincut3.png",
		}
	},

	["gunkaccino"] = {
		label = "The Gunkaccino",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				thirst = 44,
			},
			image = "gunkaccino.png",
		}
	},

	["camera_personal"] = {
		label = "Personal Camera",
		weight = 3000,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "camera_personal.png",
		}
	},

	["meatpig"] = {
		label = "Pig Meat",
		weight = 100,
		stack = true,
		close = false,
		description = "Pig Meat",
		client = {
			image = "pigpelt.png",
		}
	},

	["goldchain"] = {
		label = "Golden Chain",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "goldchain.png",
		}
	},

	["ifaks"] = {
		label = "ifaks",
		weight = 200,
		stack = true,
		close = true,
		description = "ifaks for healing and a complete stress remover.",
		client = {
			image = "ifaks.png",
		}
	},

	["phone_case_3"] = {
		label = "Phone Case 3",
		weight = 200,
		stack = false,
		close = true,
		description = "Stylish phone case 3",
		client = {
			image = "phone_case_3.png",
		}
	},

	["orange_playboys3"] = {
		label = "orange Fruit",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "playboy_orange3.png",
		}
	},

	["icream"] = {
		label = "Irish Cream",
		weight = 200,
		stack = true,
		close = true,
		description = "A bottle of Irish Cream Liquer",
		client = {
			status = {
				thirst = 26,
			},
			image = "icream.png",
		}
	},

	["sapphire_necklace_silver"] = {
		label = "Sapphire Necklace Silver",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "sapphire_necklace_silver.png",
		}
	},

	["raw_beef"] = {
		label = "Raw Beef",
		weight = 250,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "raw_beef.png",
		}
	},

	["chop-mirror"] = {
		label = "Mirror",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chop-mirror.png",
		}
	},

	["diethylamide"] = {
		label = "Diethylamide",
		weight = 100,
		stack = true,
		close = true,
		description = "die? I sure hope not!",
		client = {
			image = "diethylamide.png",
		}
	},

	["ruby_necklace"] = {
		label = "Ruby Necklace",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "ruby_necklace.png",
		}
	},

	["cannabutter"] = {
		label = "Canna-Butter",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cannabutter.png",
		}
	},

	["suspension1"] = {
		label = "Tier 1 Suspension",
		weight = 300,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "suspension1.png",
		}
	},

	["firework4"] = {
		label = "Weeping Willow",
		weight = 1000,
		stack = true,
		close = true,
		description = "Fireworks",
		client = {
			image = "firework4.png",
		}
	},

	["wildcherrysheet"] = {
		label = "Wild Cherry Sheet",
		weight = 100,
		stack = true,
		close = true,
		description = "Lets Get Wild",
		client = {
			image = "wildcherrysheet.png",
		}
	},

	["goldingot"] = {
		label = "Gold Ingot",
		weight = 1000,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "goldingot.png",
		}
	},

	["lsd_vial_six"] = {
		label = "Tier 6 LSD Vial",
		weight = 100,
		stack = true,
		close = true,
		description = "Vial Of LSD",
		client = {
			image = "lsd_vial_six.png",
		}
	},

	["axehandle"] = {
		label = "Axe Handle",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "axehandle.png",
		}
	},

	["vanpogo"] = {
		label = "Rare POGO",
		weight = 2500,
		stack = false,
		close = false,
		description = "Rare POGO from bank vault!",
		client = {
			image = "vanPogo.png",
		}
	},

	["baggedcrackedstagethree"] = {
		label = "Best Bag Of Crack",
		weight = 250,
		stack = true,
		close = false,
		description = "Bags Of Crack",
		client = {
			image = "crackbag3.png",
		}
	},

	["weed_white-widow"] = {
		label = "White Widow 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g White Widow",
		client = {
			image = "weed_baggy.png",
		}
	},

	["duffel"] = {
		label = "duffel",
		weight = 1500,
		stack = false,
		close = true,
		description = "A bag to use on heists!",
		client = {
			image = "duffel.png",
		}
	},

	["firehose"] = {
		label = "Fire Hose",
		weight = 500,
		stack = true,
		close = true,
		description = "Put out those flames",
		client = {
			image = "firehose.png",
		}
	},

	["sapphire_earring_silver"] = {
		label = "Sapphire Earrings Silver",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "sapphire_earring_silver.png",
		}
	},

	["mining_ironfragment"] = {
		label = "Iron Fragment",
		weight = 500,
		stack = true,
		close = true,
		description = "Iron fragment from mining",
		client = {
			image = "mining_ironfragment.png",
		}
	},

	["butane"] = {
		label = "Butane",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "butane.png",
		}
	},

	["origami12"] = {
		label = "Origami Lion",
		weight = 100,
		stack = false,
		close = 1,
		description = "",
		client = {
			image = "origami12.png",
		}
	},

	["farm_lettuce_harvested"] = {
		label = "Lettuce",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "farm_lettuce_harvested.png",
		}
	},

	["handcuffkey"] = {
		label = "Handcuff Key",
		weight = 100,
		stack = true,
		close = true,
		description = "Small metal key",
		client = {
			image = "handcuffkey.png",
		}
	},

	["thermite"] = {
		label = "Thermite",
		weight = 200,
		stack = true,
		close = true,
		description = "Sometimes you'd wish for everything to burn",
		client = {
			image = "thermite.png",
		}
	},

	["origami2"] = {
		label = "Origami Spider",
		weight = 100,
		stack = false,
		close = 1,
		description = "",
		client = {
			image = "origami2.png",
		}
	},

	["blue_cats2"] = {
		label = "blue cats",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "kitty_blue2.png",
		}
	},

	["emptyvial"] = {
		label = "empty vial",
		weight = 100,
		stack = true,
		close = true,
		description = "Hmm, What Can Go In This?",
		client = {
			image = "emptyvial.png",
		}
	},

	["phone_case_8"] = {
		label = "Phone Case 8",
		weight = 200,
		stack = false,
		close = true,
		description = "Stylish phone case 8",
		client = {
			image = "phone_case_8.png",
		}
	},

	["camera_personaltablet"] = {
		label = "Personal CamView",
		weight = 2000,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "camera_personaltablet.png",
		}
	},

	["largemouthbass"] = {
		label = "Largemouth Bass",
		weight = 1000,
		stack = true,
		close = false,
		description = "A Fish",
		client = {
			image = "largemouthbass.png",
		}
	},

	["vicodin_prescription"] = {
		label = "Vicie Prescription",
		weight = 250,
		stack = true,
		close = false,
		description = "If Only This Helped With The Pain inside",
		client = {
			image = "adderalprescription.png",
		}
	},

	["uncut_emerald"] = {
		label = "Uncut Emerald",
		weight = 100,
		stack = true,
		close = false,
		description = "A rough Emerald",
		client = {
			image = "uncut_emerald.png",
		}
	},

	["white_pl"] = {
		label = "White pl",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "PL_white.png",
		}
	},

	["origami10"] = {
		label = "Origami Dolphin",
		weight = 100,
		stack = false,
		close = 1,
		description = "",
		client = {
			image = "origami10.png",
		}
	},

	["orange_aliens2"] = {
		label = "orange aliens",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "alien_orange2.png",
		}
	},

	["rplate"] = {
		label = "Ribs Plate",
		weight = 200,
		stack = true,
		close = true,
		description = "A plate of Ribs",
		client = {
			image = "rplate.png",
		}
	},

	["cow_leather"] = {
		label = "Cow Skin",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cow_leather.png",
		}
	},

	["metalscrap"] = {
		label = "Metal Scrap",
		weight = 100,
		stack = true,
		close = false,
		description = "You can probably make something nice out of this",
		client = {
			image = "metalscrap.png",
		}
	},

	["orange_pl2"] = {
		label = "orange pl",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "PL_orange2.png",
		}
	},

	["plastic"] = {
		label = "Plastic",
		weight = 100,
		stack = true,
		close = false,
		description = "RECYCLE! - Greta Thunberg 2019",
		client = {
			image = "plastic.png",
		}
	},

	["raw_sausage"] = {
		label = "Raw Sausage",
		weight = 250,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "raw_sausage.png",
		}
	},

	["whipped_cream_cannister"] = {
		label = "Whipped Cream Cannister",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "whipped_cream_cannister.png",
		}
	},

	["weed_skunk"] = {
		label = "Skunk 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g Skunk",
		client = {
			image = "weed_baggy.png",
		}
	},

	["cardhat"] = {
		label = "Cardboard Box",
		weight = 100,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "cardhat.png",
		}
	},

	["red_trolls"] = {
		label = "red trolls",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "troll_red.png",
		}
	},

	["crackrock"] = {
		label = "Crack Rock",
		weight = 250,
		stack = true,
		close = false,
		description = "This Isnt The Rock The Hippie Girl Told Me About",
		client = {
			image = "crackrock1.png",
		}
	},

	["mining_goldbar"] = {
		label = "Gold Bar",
		weight = 500,
		stack = true,
		close = true,
		description = "Gold Bar",
		client = {
			image = "mining_goldbar.png",
		}
	},

	["diamond_necklace_silver"] = {
		label = "Diamond Necklace Silver",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "diamond_necklace_silver.png",
		}
	},

	["heroinvial"] = {
		label = "Vial Of Heroin",
		weight = 250,
		stack = true,
		close = false,
		description = "Hmm, Maybe A Needle Can Help",
		client = {
			image = "heroin.png",
		}
	},

	["tunerlaptop"] = {
		label = "Tunerchip",
		weight = 2000,
		stack = false,
		close = true,
		description = "With this tunerchip you can get your car on steroids... If you know what you're doing",
		client = {
			image = "tunerchip.png",
		}
	},

	["silveringot"] = {
		label = "Silver Ingot",
		weight = 1000,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "silveringot.png",
		}
	},

	["bplate"] = {
		label = "Brisket Plate",
		weight = 200,
		stack = true,
		close = true,
		description = "A Brisket Plate",
		client = {
			image = "bplate.png",
		}
	},

	["butanetorch"] = {
		label = "Butane Torch",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "butanetorch.png",
		}
	},

	["boostingtablet"] = {
		label = "Boosting tablet",
		weight = 1000,
		stack = false,
		close = true,
		description = "Seems like something's installed on this.",
		client = {
			image = "boostingtablet.png",
		}
	},

	["cplate"] = {
		label = "Fish Plate",
		weight = 200,
		stack = true,
		close = true,
		description = "A Catfish Plate",
		client = {
			image = "cplate.png",
		}
	},

	["greenphone"] = {
		label = "Green Satellite Phone",
		weight = 200,
		stack = true,
		close = false,
		description = "A communication device used to contact russian mafia.",
		client = {
			image = "greenphone.png",
		}
	},

	["skybar_kiwi_juice"] = {
		label = "Kiwi Juice",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "skybar_kiwi_juice.png",
		}
	},

	["smileyfacesheet"] = {
		label = "Smiley Face Sheet",
		weight = 100,
		stack = true,
		close = true,
		description = "You Are Cute When You Smile - Creepy Dudes",
		client = {
			image = "smileysheet.png",
		}
	},

	["wetcannabis"] = {
		label = "Wet Cannabis",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "wetcannabis.png",
		}
	},

	["blue_pl"] = {
		label = "blue pl",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "PL_blue.png",
		}
	},

	["phone_red"] = {
		label = "Red Phone",
		weight = 700,
		stack = false,
		close = true,
		description = "Neat red phone ya got there",
		client = {
			image = "phone_red.png",
		}
	},

	["emergencydrone"] = {
		label = "Emergency Drone",
		weight = 500,
		stack = true,
		close = true,
		description = "A drone used for emergency response",
		client = {
			image = "emergencydrone.png",
		}
	},

	["sacid"] = {
		label = "Sodyum",
		weight = 10500,
		stack = true,
		close = false,
		description = "Sodyum Ingredient",
		client = {
			image = "sacid.png",
		}
	},

	["tab_paper"] = {
		label = "Tab Paper",
		weight = 100,
		stack = true,
		close = true,
		description = "Paper To Dip LSD On",
		client = {
			image = "tab_paper.png",
		}
	},

	["water_bottle"] = {
		label = "Bottle of Water",
		weight = 500,
		stack = true,
		close = true,
		description = "For all the thirsty out there",
		client = {
			image = "water_bottle.png",
		}
	},

	["axleparts"] = {
		label = "Axle Parts",
		weight = 300,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "axleparts.png",
		}
	},

	["noscolour"] = {
		label = "NOS Colour Injector",
		weight = 300,
		stack = true,
		close = true,
		description = "Make that purge spray",
		client = {
			image = "noscolour.png",
		}
	},

	["syphoningkit"] = {
		label = "Syphoning Kit",
		weight = 5000,
		stack = false,
		close = false,
		description = "A kit made to siphon gasoline from vehicles.",
		client = {
			image = "syphoningkit.png",
		}
	},

	["vegetarianabox"] = {
		label = "Vegetariana Box",
		weight = 500,
		stack = true,
		close = true,
		description = "A fresh pizza box",
		client = {
			image = "pizza_box.png",
		}
	},

	["red_playboys2"] = {
		label = "red Fruit",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "playboy_red2.png",
		}
	},

	["diamond_necklace"] = {
		label = "Diamond Necklace",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "diamond_necklace.png",
		}
	},

	["wine"] = {
		label = "Wine",
		weight = 300,
		stack = true,
		close = false,
		description = "Some good wine to drink on a fine evening",
		client = {
			image = "wine.png",
		}
	},

	["beer-crate"] = {
		label = "Beer Crate",
		weight = 1800,
		stack = true,
		close = true,
		description = "A Crate of 12 Beers",
		client = {
			image = "beer-crate.png",
		}
	},

	["cuttomato"] = {
		label = "Sliced Tomato",
		weight = 40,
		stack = true,
		close = true,
		client = {
			image = "cuttomato.png",
		}
	},

	["cokestagethree"] = {
		label = "Raw Cocaine",
		weight = 100,
		stack = true,
		close = false,
		description = "Raw cocaine",
		client = {
			image = "cokestagethree.png",
		}
	},

	["meatbird"] = {
		label = "Bird Feather",
		weight = 100,
		stack = true,
		close = false,
		description = "Bird Feather",
		client = {
			image = "birdfeather.png",
		}
	},

	["donut"] = {
		label = "Donut",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				hunger = 26,
			},
			image = "popdonut.png",
		}
	},

	["heroin_readystagetwo"] = {
		label = "Heroin Syringe",
		weight = 250,
		stack = true,
		close = false,
		description = "Go On, Chase The Dragon",
		client = {
			image = "heroin_readystagetwo.png",
		}
	},

	["blue_aliens2"] = {
		label = "blue aliens",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "alien_blue2.png",
		}
	},

	["goldcoin"] = {
		label = "Gold coin",
		weight = 200,
		stack = true,
		close = false,
		description = "o.O GOLD!",
		client = {
			image = "goldcoin.png",
		}
	},

	["key1"] = {
		label = "Key for something",
		weight = 1500,
		stack = true,
		close = true,
		description = "Key for something illegal.",
		client = {
			image = "key1.png",
		}
	},

	["boxofcrack"] = {
		label = "Crack Box",
		weight = 2500,
		stack = true,
		close = true,
		description = "Crack Box !!",
		client = {
			image = "boxofweed.png",
		}
	},

	["capricciosabox"] = {
		label = "Capricciosa Box",
		weight = 500,
		stack = true,
		close = true,
		description = "A fresh pizza box",
		client = {
			image = "pizza_box.png",
		}
	},

	["b52"] = {
		label = "B-52",
		weight = 200,
		stack = true,
		close = true,
		description = "B-52 Cocktail",
		client = {
			status = {
				thirst = 23,
			},
			image = "b52.png",
		}
	},

	["ironoxide"] = {
		label = "Iron Powder",
		weight = 100,
		stack = true,
		close = false,
		description = "Some powder to mix with.",
		client = {
			image = "ironoxide.png",
		}
	},

	["heavyarmor"] = {
		label = "Heavy Armor",
		weight = 15000,
		stack = true,
		close = true,
		description = "Some protection won't hurt... right?",
		client = {
			image = "heavyarmor.png",
		}
	},

	["triplepress"] = {
		label = "Triple Pill Press",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "pillpress.png",
		}
	},

	["bkamikaze"] = {
		label = "Blue Kamikaze",
		weight = 200,
		stack = true,
		close = true,
		description = "Blue Kamikaze Cocktail",
		client = {
			status = {
				thirst = 29,
			},
			image = "bkamikaze.png",
		}
	},

	["emerald_necklace_silver"] = {
		label = "Emerald Necklace Silver",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "emerald_necklace_silver.png",
		}
	},

	["meat"] = {
		label = "Meat",
		weight = 100,
		stack = true,
		close = false,
		description = "Some big taco brother",
		client = {
			image = "meat.png",
		}
	},

	["kamikaze"] = {
		label = "Kamikaze",
		weight = 200,
		stack = true,
		close = true,
		description = "Kamikase Cocktail",
		client = {
			status = {
				thirst = 24,
			},
			image = "kamikaze.png",
		}
	},

	["white_playboys2"] = {
		label = "White Fruit",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "playboy_white2.png",
		}
	},

	["marinarabox"] = {
		label = "Marinara Box",
		weight = 500,
		stack = true,
		close = true,
		description = "A fresh pizza box",
		client = {
			image = "pizza_box.png",
		}
	},

	["white_aliens3"] = {
		label = "White aliens",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "alien_white3.png",
		}
	},

	["red_trolls3"] = {
		label = "red trolls",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "troll_red3.png",
		}
	},

	["phone_case_10"] = {
		label = "Phone Case 10",
		weight = 200,
		stack = false,
		close = true,
		description = "Stylish phone case 10",
		client = {
			image = "phone_case_10.png",
		}
	},

	["origami15"] = {
		label = "Origami Dinosaur",
		weight = 100,
		stack = false,
		close = 1,
		description = "",
		client = {
			image = "origami15.png",
		}
	},

	["bmx"] = {
		label = "BMX",
		weight = 0,
		stack = false,
		close = true,
		description = "Spawn an BMX",
		client = {
			image = "bmx.png",
		}
	},

	["phone_case_2"] = {
		label = "Phone Case 2",
		weight = 200,
		stack = false,
		close = true,
		description = "Stylish phone case 2",
		client = {
			image = "phone_case_2.png",
		}
	},

	["sugar"] = {
		label = "Sugar",
		weight = 100,
		stack = true,
		close = false,
		description = "",
		client = {
			status = {
				hunger = 11,
			},
			image = "sugar.png",
		}
	},

	["skin_deer_ruined"] = {
		label = "Tattered Deer Pelt",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "skin_deer_ruined.png",
		}
	},

	["slicedpotato"] = {
		label = "Sliced Potatoes",
		weight = 500,
		stack = true,
		close = false,
		description = "Sliced Potato",
		client = {
			image = "burger-slicedpotato.png",
		}
	},

	["car_armor"] = {
		label = "Vehicle Armor",
		weight = 300,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "armour.png",
		}
	},

	["bart_tabs"] = {
		label = "Cluckin Tabs",
		weight = 100,
		stack = true,
		close = true,
		description = "A Cluckin Good Time",
		client = {
			image = "bart_tabs.png",
		}
	},

	["chop-exhaust"] = {
		label = "Exhaust",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chop-exhaust.png",
		}
	},

	["coffee"] = {
		label = "Coffee",
		weight = 200,
		stack = true,
		close = true,
		description = "Pump 4 Caffeine",
		client = {
			image = "coffee.png",
		}
	},

	["whale"] = {
		label = "Whale",
		weight = 1000,
		stack = true,
		close = false,
		description = "A Fish",
		client = {
			image = "whale.png",
		}
	},

	["transmission4"] = {
		label = "Tier 4 Transmission",
		weight = 300,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "transmission4.png",
		}
	},

	["cooked_ham"] = {
		label = "Cooked Ham",
		weight = 250,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cooked_ham.png",
		}
	},

	["diving_fill"] = {
		label = "Diving Tube",
		weight = 3000,
		stack = false,
		close = true,
		client = {
			image = "diving_tube.png",
		}
	},

	["skybar_orange"] = {
		label = "Orange",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "skybar_orange.png",
		}
	},

	["drifttires"] = {
		label = "Drift Tires",
		weight = 300,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "drifttires.png",
		}
	},

	["ww2relic"] = {
		label = "WW2 Relic",
		weight = 200,
		stack = true,
		close = false,
		description = "I rememeber this from history class.",
		client = {
			image = "ww2relic.png",
		}
	},

	["blue_xtc"] = {
		label = "Blue XTC",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "unstamped_blue.png",
		}
	},

	["gratefuldeadsheet"] = {
		label = "Maze Sheet",
		weight = 100,
		stack = true,
		close = true,
		description = "I heard Its aMAZEing.. get it.. ill stop now",
		client = {
			image = "gratefuldeadsheet.png",
		}
	},

	["weed_white-widow_seed"] = {
		label = "White Widow Seed",
		weight = 100,
		stack = true,
		close = false,
		description = "A weed seed of White Widow",
		client = {
			image = "weed_seed.png",
		}
	},

	["red_pl"] = {
		label = "red pl",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "PL_red.png",
		}
	},

	["white_pl2"] = {
		label = "White pl",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "PL_white2.png",
		}
	},

	["dusche"] = {
		label = "Dusche Gold",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			status = {
				thirst = 48,
			},
			image = "dusche.png",
		}
	},

	["apple_juice"] = {
		label = "Apple Juice",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "apple_juice.png",
		}
	},

	["farm_onion_harvested"] = {
		label = "Onion",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "farm_onion_harvested.png",
		}
	},

	["heroin"] = {
		label = "Heroin Powder",
		weight = 500,
		stack = true,
		close = false,
		description = "Dragon Chasin?",
		client = {
			image = "heroinpowder.png",
		}
	},

	["chop-door"] = {
		label = "Door",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chop-door.png",
		}
	},

	["firework2"] = {
		label = "Poppelers",
		weight = 1000,
		stack = true,
		close = true,
		description = "Fireworks",
		client = {
			image = "firework2.png",
		}
	},

	["chop-turbo"] = {
		label = "Turbo",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "chop-turbo.png",
		}
	},

	["casino_chips"] = {
		label = "Casino Chips",
		weight = 0,
		stack = true,
		close = false,
		description = "Casino Chips",
		client = {
			image = "casino_chips.png",
		}
	},

	["skybar_redhot_daquiri"] = {
		label = "Redhot Daquiri",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "skybar_redhot_daquiri.png",
		}
	},

	["farm_wheat_harvested"] = {
		label = "Wheat",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "farm_wheat_harvested.png",
		}
	},

	["lithium"] = {
		label = "Lithium",
		weight = 1000,
		stack = true,
		close = false,
		description = "Stuff to cook!",
		client = {
			image = "lithium.png",
		}
	},

	["white_xtc"] = {
		label = "White XTC",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "unstamped_white.png",
		}
	},

	["sapphire"] = {
		label = "Sapphire",
		weight = 100,
		stack = true,
		close = false,
		description = "A Sapphire that shimmers",
		client = {
			image = "sapphire.png",
		}
	},

	["yinyang_tabs"] = {
		label = "Yin and Yang Tabs",
		weight = 100,
		stack = true,
		close = true,
		description = "All Together In Harmony",
		client = {
			image = "yinyang_tabs.png",
		}
	},

	["red_playboys4"] = {
		label = "red Fruit",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "playboy_red4.png",
		}
	},

	["red_playboys3"] = {
		label = "red Fruit",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "playboy_red3.png",
		}
	},

	["prosciuttio"] = {
		label = "Prosciutto",
		weight = 200,
		stack = true,
		close = true,
		client = {
			image = "prosciuttio.png",
		}
	},

	["nitrous"] = {
		label = "Nitrous",
		weight = 1000,
		stack = true,
		close = true,
		description = "Speed up, gas pedal! :D",
		client = {
			image = "nitrous.png",
		}
	},

	["crackburner"] = {
		label = "Crack Burner",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "gta5phone.png",
		}
	},

	["ciggie"] = {
		label = "Ciggie",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "ciggie.png",
		}
	},

	["skybar_coconut_drink"] = {
		label = "Coconut Drink",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "skybar_coconut_drink.png",
		}
	},

	["antipatharia_coral"] = {
		label = "Antipatharia",
		weight = 1000,
		stack = true,
		close = true,
		description = "Its also known as black corals or thorn corals",
		client = {
			image = "antipatharia_coral.png",
		}
	},

	["fishingbait"] = {
		label = "Fishing Bait",
		weight = 50,
		stack = true,
		close = false,
		description = "With this I can lure the fishessss..",
		client = {
			image = "fishingbait.png",
		}
	},

	["skybar_cheese"] = {
		label = "Cheese",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "skybar_cheese.png",
		}
	},

	["rolling_paper"] = {
		label = "Rolling Paper",
		weight = 100,
		stack = true,
		close = true,
		description = "Paper made specifically for encasing and smoking tobacco or cannabis.",
		client = {
			image = "rolling_paper.png",
		}
	},

	["snikkel_candy"] = {
		label = "Snikkel",
		weight = 100,
		stack = true,
		close = true,
		description = "Some delicious candy :O",
		client = {
			image = "snikkel_candy.png",
		}
	},

	["ruby_ring"] = {
		label = "Ruby Ring",
		weight = 200,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "ruby_ring.png",
		}
	},

	["cuffkeys"] = {
		label = "Cuff Keys",
		weight = 75,
		stack = true,
		close = true,
		description = "Set them free !",
		client = {
			image = "cuffkeys.png",
		}
	},

	["key2"] = {
		label = "Key for something",
		weight = 1500,
		stack = true,
		close = true,
		description = "Key for something illegal.",
		client = {
			image = "key2.png",
		}
	},

	["ckey"] = {
		label = "Key for something",
		weight = 1500,
		stack = true,
		close = true,
		description = "Key for something illegal.",
		client = {
			image = "ckey.png",
		}
	},

	["cutpotato"] = {
		label = "Sliced Potato",
		weight = 100,
		stack = true,
		close = true,
		client = {
			image = "cutpotato.png",
		}
	},

	["skybar_coffee_heart"] = {
		label = "Coffee Heart",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "skybar_coffee_heart.png",
		}
	},

	["white_trolls2"] = {
		label = "White trolls",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "troll_white2.png",
		}
	},
}