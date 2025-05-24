return {
	General = {
		name = 'Магазин',
		blip = {
			id = 59, colour = 69, scale = 0.0
		}, inventory = {
			{ name = 'burger', price = 10 },
			{ name = 'water', price = 10 },
			{ name = 'cola', price = 10 },
			{ name = 'beer', price = 22 },
			{ name = 'wine', price = 50 },
			{ name = 'whiskey', price = 120 },
			{ name = 'vodka', price = 75 },
			{ name = 'lighter', price = 5 },
			{ name = 'pack_cig', price = 20, count = 5  },
			{ name = 'aciggy', price = 2, count = 25  },
			{ name = 'acigar', price = 59},
			{ name = 'papersls', price = 10 },
		}, locations = {
			vec3(25.7, -1347.3, 29.49),
			vec3(-3038.71, 585.9, 7.9),
			vec3(-3241.47, 1001.14, 12.83),
			vec3(1728.66, 6414.16, 35.03),
			vec3(1697.99, 4924.4, 42.06),
			vec3(1961.48, 3739.96, 32.34),
			vec3(547.79, 2671.79, 42.15),
			vec3(2679.25, 3280.12, 55.24),
			vec3(2557.94, 382.05, 108.62),
			vec3(373.55, 325.56, 103.56),
		}, targets = {
			{ loc = vec3(25.06, -1347.32, 29.5), length = 0.7, width = 0.5, heading = 0.0, minZ = 29.5, maxZ = 29.9, distance = 1.5 },
			{ loc = vec3(-3039.18, 585.13, 7.91), length = 0.6, width = 0.5, heading = 15.0, minZ = 7.91, maxZ = 8.31, distance = 1.5 },
			{ loc = vec3(-3242.2, 1000.58, 12.83), length = 0.6, width = 0.6, heading = 175.0, minZ = 12.83, maxZ = 13.23, distance = 1.5 },
			{ loc = vec3(1728.39, 6414.95, 35.04), length = 0.6, width = 0.6, heading = 65.0, minZ = 35.04, maxZ = 35.44, distance = 1.5 },
			{ loc = vec3(1698.37, 4923.43, 42.06), length = 0.5, width = 0.5, heading = 235.0, minZ = 42.06, maxZ = 42.46, distance = 1.5 },
			{ loc = vec3(1960.54, 3740.28, 32.34), length = 0.6, width = 0.5, heading = 120.0, minZ = 32.34, maxZ = 32.74, distance = 1.5 },
			{ loc = vec3(548.5, 2671.25, 42.16), length = 0.6, width = 0.5, heading = 10.0, minZ = 42.16, maxZ = 42.56, distance = 1.5 },
			{ loc = vec3(2678.29, 3279.94, 55.24), length = 0.6, width = 0.5, heading = 330.0, minZ = 55.24, maxZ = 55.64, distance = 1.5 },
			{ loc = vec3(2557.19, 381.4, 108.62), length = 0.6, width = 0.5, heading = 0.0, minZ = 108.62, maxZ = 109.02, distance = 1.5 },
			{ loc = vec3(373.13, 326.29, 103.57), length = 0.6, width = 0.5, heading = 345.0, minZ = 103.57, maxZ = 103.97, distance = 1.5 },
			{ loc = vec3(1134.9, -982.34, 46.41), length = 0.5, width = 0.5, heading = 96.0, minZ = 46.4, maxZ = 46.8, distance = 1.5 },
			{ loc = vec3(-1222.33, -907.82, 12.43), length = 0.6, width = 0.5, heading = 32.7, minZ = 12.3, maxZ = 12.7, distance = 1.5 },
			{ loc = vec3(-1486.67, -378.46, 40.26), length = 0.6, width = 0.5, heading = 133.77, minZ = 40.1, maxZ = 40.5, distance = 1.5 },
			{ loc = vec3(-2967.0, 390.9, 15.14), length = 0.7, width = 0.5, heading = 85.23, minZ = 15.0, maxZ = 15.4, distance = 1.5 },
			{ loc = vec3(1165.95, 2710.20, 38.26), length = 0.6, width = 0.5, heading = 178.84, minZ = 38.1, maxZ = 38.5, distance = 1.5 },
			{ loc = vec3(1393.0, 3605.95, 35.11), length = 0.6, width = 0.6, heading = 200.0, minZ = 35.0, maxZ = 35.4, distance = 1.5 }
		}
	},
	CasinoCafe = {
		name = 'Казино Бар',
		groups = shared.casino,
		  inventory = {
			{ name = 'casino_vip', price = 50000 },
		}, locations = {
			vec3(957.43, 55.98, 74.49)
		}, targets = {
			{ loc = vec3(957.43, 55.98, 74.49), length = 1.5, width = 3.0, heading = 270.0, minZ = 30.5, maxZ = 32.0, distance = 6 }
		}
	},
	-- Liquor = {
	-- 	name = 'Liquor Store',
	-- 	blip = {
	-- 		id = 93, colour = 69, scale = 0.0
	-- 	}, inventory = {
			-- { name = 'beer', price = 22 },
			-- { name = 'wine', price = 50 },
			-- { name = 'whiskey', price = 120 },
			-- { name = 'vodka', price = 75 },
			-- { name = 'lighter', price = 5 },
			-- { name = 'pack_cig', price = 20 },
			-- { name = 'aciggy', price = 2 },
			-- { name = 'acigar', price = 59 },
	-- 	}, locations = {
	-- 		vec3(1135.808, -982.281, 46.415),
	-- 		vec3(-1222.915, -906.983, 12.326),
	-- 		vec3(-1487.553, -379.107, 40.163),
	-- 		vec3(-2968.243, 390.910, 15.043),
	-- 		vec3(1166.024, 2708.930, 38.157),
	-- 		vec3(1392.562, 3604.684, 34.980),
	-- 		vec3(-1393.409, -606.624, 30.319)
	-- 	}, targets = {
	-- 		{ loc = vec3(1134.9, -982.34, 46.41), length = 0.5, width = 0.5, heading = 96.0, minZ = 46.4, maxZ = 46.8, distance = 1.5 },
	-- 		{ loc = vec3(-1222.33, -907.82, 12.43), length = 0.6, width = 0.5, heading = 32.7, minZ = 12.3, maxZ = 12.7, distance = 1.5 },
	-- 		{ loc = vec3(-1486.67, -378.46, 40.26), length = 0.6, width = 0.5, heading = 133.77, minZ = 40.1, maxZ = 40.5, distance = 1.5 },
	-- 		{ loc = vec3(-2967.0, 390.9, 15.14), length = 0.7, width = 0.5, heading = 85.23, minZ = 15.0, maxZ = 15.4, distance = 1.5 },
	-- 		{ loc = vec3(1165.95, 2710.20, 38.26), length = 0.6, width = 0.5, heading = 178.84, minZ = 38.1, maxZ = 38.5, distance = 1.5 },
	-- 		{ loc = vec3(1393.0, 3605.95, 35.11), length = 0.6, width = 0.6, heading = 200.0, minZ = 35.0, maxZ = 35.4, distance = 1.5 }
	-- 	}
	-- },
	CerenMagazin = {
		name = 'Магазин',
		 inventory = {
			{ name = 'snsparts', price = 1000 },
			{ name = 'grinder', price = 2000 },
			{ name = 'sscale', price = 1500 },
			{ name = 'ammo-9', price = 60 },
			{ name = 'ammo-45', price = 120 },
			{ name = 'ammo-rifle', price = 300 },
			{ name = 'armour', price = 1000 },
			{ name = 'rope', price = 800 },
			{ name = 'weapon_combatpistol', price = 36000 },
			{ name = 'weapon_appistol', price = 211000 },
			{ name = 'weapon_bullpuprifle_mk2', price = 1700000 },
			{ name = 'weapon_combatpdw', price = 661000 },
		}, locations = {
			vec3(776.78, 726.05, 105.25),
			vec3(776.78, 726.05, 105.25)
		}, targets = {
			-- { loc = vec3(2746.8, 3473.13, 55.67), length = 0.6, width = 3.0, heading = 65.0, minZ = 55.0, maxZ = 56.8, distance = 3.0 }
			{
				ped = `cs_chengsr`,
				scenario = 'WORLD_HUMAN_LEANING',
				loc = vec3(776.78, 726.05, 105.25), 
				heading =  42.91,
			 },
		}
	},

	PolicePhilips = {
        name = 'Philips Air Frier',
         inventory = {
            { name = 'burger', price = 1 },
            { name = 'water', price = 1 },
        }, locations = {
            vec3(776.78, 726.05, 105.25),
            vec3(776.78, 726.05, 105.25)
        }, targets = {
            { loc = vec3(456.25, -984.98, 35.28), length = 0.6, width = 3.0, heading = 65.0, minZ = 55.0, maxZ = 56.8, distance = 3.0 }
        }
    },

	YouTool = {
		name = 'Железария',
		blip = {
			id = 402, colour = 69, scale = 0.0
		}, inventory = {
			{ name = 'drill', price = 1100 },
			{ name = 'lockpick', price = 200 },
			{ name = 'yogamat_blue', price = 400 },
			{ name = 'yogamat_red', price = 400 },
			{ name = 'cups', price = 100 },
			{ name = 'kuz_divinggear', price = 1000 },
			{ name = 'kuz_divinggeargood', price = 2000 },
			{ name = 'slaptable', price = 100 },
			{ name = 'scissors', price = 300 },
			{ name = 'jumpers', price = 5 },
			{ name = 'clothing_bag', price = 5000 },
			{ name = 'bag', price = 1500 },
			{ name = 'pliers', price = 1100 },
			{ name = 'skateboard', price = 500 },
			{ name = 'firework1', price = 70 },
			{ name = 'firework2', price = 70 },
			{ name = 'firework3', price = 70 },
			{ name = 'firework4', price = 70 },
			{ name = 'blindfold', price = 1000 },
			{ name = 'screwdriverset', price = 3000 },
			{ name = 'licenseplate', price = 300000 },
		}, locations = {
			vec3(2748.0, 3473.0, 55.67),
			vec3(342.99, -1298.26, 32.51)
		}, targets = {
			-- { loc = vec3(2746.8, 3473.13, 55.67), length = 0.6, width = 3.0, heading = 65.0, minZ = 55.0, maxZ = 56.8, distance = 3.0 }
			{
				ped = `a_m_m_business_01`,
				scenario = 'WORLD_HUMAN_CLIPBOARD',
				loc = vec3(46.69, -1749.67, 28.63), 
				heading =  42.91,
			 },
		}
	},
	JailNPC = {
		name = '?', -- ZAGADKA
		inventory = {
			{ name = 'freedom_chip', price = 5000 }
		}, 
		locations = {
			vec3(2519.93, 2614.39, 36.96),
			vec3(2519.93, 2614.39, 36.96)
		}, 
		targets = {
			{
				ped = `a_m_y_business_02`,
				scenario = 'WORLD_HUMAN_GUARD_STAND',
				loc = vec3(2519.93, 2614.39, 36.96),
				heading = 179.8,
			},
		}
	},
	Pharmacy = {
		name = 'Аптека',
		--[[
		groups = {
			['pharmacy'] = 0, 1, 2
		},
		--]]
		blip = {
			id = 402, colour = 69, scale = 0.0
		}, inventory = {
			{ name = 'bandage', price = 242, count = 200},
			{ name = 'ephedrine', price = 100, count = 100},
			{ name = 'oxycotin', price = 120, count = 100 },
			{ name = 'ibuprofen', price = 40, count = 100 },
			{ name = 'aspirin', price = 20, count = 100 },
		}, locations = {
			vec3(2748.0, 3473.0, 55.67),
			vec3(342.99, -1298.26, 32.51)
		}, targets = {
			-- { loc = vec3(726.96, -1066.6, 28.31), length = 0.6, width = 3.0, heading = 179.8, minZ = 55.0, maxZ = 56.8, distance = 3.0 }
			{
				ped = `a_m_y_business_02`,
				scenario = 'WORLD_HUMAN_GUARD_STAND',
				loc = vec3(-662.98, 321.59, 82.08),
				heading =  169.94,7
			 },
		}
	},

	Ammunation = {
		name = 'Ammunation',
		blip = {
			id = 110, colour = 69, scale = 0.0
		}, inventory = {
			{ name = 'ammo-9', price = 300, },
			{ name = 'WEAPON_KNIFE', price = 1200 },
			{ name = 'parachute', price = 5200 },
			{ name = 'armour', price = 5000 },
			{ name = 'WEAPON_BAT', price = 700 },
			{ name = 'weapon_snspistol', price = 43000 },
			-- { name = 'WEAPON_PISTOL', price = 1000, metadata = { registered = true }, license = 'weapon' }
		}, targets = {
			{
               ped = `s_m_m_armoured_02`, -- Paleto
               scenario = 'WORLD_HUMAN_CLIPBOARD',
               loc = vec3(-330.96, 6085.59, 30.45),
               heading =  219.57,
            },
			{
               ped = `s_m_m_armoured_02`, -- Sandy
               scenario = 'WORLD_HUMAN_CLIPBOARD',
               loc = vec3(1692.57, 3761.34, 30.71),
               heading =  227.7,
            },
			{
               ped = `s_m_m_armoured_02`, -- Little Seoul
               scenario = 'WORLD_HUMAN_CLIPBOARD',
               loc = vec3(-661.51, -933.61, 20.83),
               heading =  177.6,
            },
		}
	},
	DigitalDen = {
		name = 'Digital Den',
		blip = {
			id = 817, colour = 27, scale = 0.0
		}, inventory = {
			{ name = 'phone', price = 1200, },
			{ name = 'phone_charger', price = 600 },
			{ name = 'radio', price = 500 },
			-- { name = 'radio_battery', price = 100, },
			-- { name = 'delivery_tablet', price = 500, },
			{ name = 'app_tablet', price = 1000, },
			{ name = 'usb_boosting', price = 80000, },
			{ name = 'usb_trucking', price = 25000, },
			{ name = 'gps_panel', price = 10000, },
			--Speakers
			{ name = 'speaker', price = 500, metadata = {typeId = 1, label = 'Speaker Retro', description = 'Low volume, range and quality.', imageurl = 'https://media.rahe.dev/img/boombox.png'} },
			{ name = 'speaker', price = 1500, metadata = {typeId = 3, label = 'Speaker Beat', description = 'Great volume, range, quality and bass.', imageurl = 'https://media.rahe.dev/img/speaker2.png'} },
			{ name = 'speaker', price = 5000, metadata = {typeId = 4, label = 'Speaker Blast', description = 'Epic volume, range, quality, bass and filters.', imageurl = 'https://media.rahe.dev/img/speaker3.png'} },
			{ name = 'speaker', price = 1000, metadata = {typeId = 2, label = 'Speaker Vibe', description = 'Good volume, range and quality.', imageurl = 'https://media.rahe.dev/img/speaker1.png'} },
		}, targets = {
			{
               ped = `cs_lestercrest`,
               scenario = 'WORLD_HUMAN_CLIPBOARD',
               loc = vec3(1136.49, -474.47, 65.45),
               heading =  254.48,
            },
		}
	},

	PoliceArmoury = {
		name = 'Магазин',
		groups = shared.police,
		blip = {
			id = 110, colour = 84, scale = 0.6
		}, inventory = {
			{ name = 'radio', price = 0, grade = 1},
			{ name = 'radio_battery', price = 1 },
			{ name = 'WEAPON_FLASHLIGHT', price = 0, grade = 1 },
			{ name = 'WEAPON_NIGHTSTICK', price = 0, grade = 1 },
			{ name = 'armour', price = 0, grade = 1 },
			{ name = 'WEAPON_STUNGUN', price = 0, metadata = { registered = true, serial = 'POL'}, grade = 1 },
			{ name = 'ammo-9', price = 0, grade = 1 },
			{ name = 'WEAPON_PISTOL_MK2', price = 0, metadata = { registered = true, serial = 'POL' }, grade = 1 },
			{ name = 'ammo-rifle', price = 0,  grade = 2 },
			-- { name = 'WEAPON_CARBINERIFLE', price = 0, metadata = { registered = true, serial = 'POL' }, grade = 2 },
			{ name = 'WEAPON_ARCTIC516', price = 0, metadata = { registered = true, serial = 'POL' }, grade = 2 },
			--{ name = 'WEAPON_SMG', price = 0, metadata = { registered = true, serial = 'POL' }, grade = 2 },
			--{ name = 'ammo-shotgun', price = 0,  grade = 2 },
			--{ name = 'WEAPON_COMBATSHOTGUN', price = 0, metadata = { registered = true, serial = 'POL' }, grade = 2 },
			--{ name = 'WEAPON_SPECIALCARBINE_MK2', price = 0, metadata = { registered = true, serial = 'POL' }, grade = 2 },
			--{ name = 'WEAPON_COMBATMG', price = 0, metadata = { registered = true, serial = 'POL' }, grade = 2 },
			{ name = 'pol_mdt', price = 0, grade = 1 },
			{ name = 'prison_mdt', price = 0, grade = 1 },
			{ name = 'empty_evidence_bag', price = 0, grade = 1  },
			{ name = 'handcuffs', price = 0, grade = 1 },
			{ name = 'bandage', price = 0, grade = 1 },
			{ name = 'at_flashlight', price = 0, grade = 2 },
            { name = 'parachute', price = 0, grade = 1 },
            { name = 'kuz_divinggear', price = 0, grade = 1 },
            { name = 'camera', price = 0, grade = 1 },
            { name = 'repairkit', price = 0, grade = 1 },
            { name = 'pdbag', price = 0, grade = 2 },
		}, locations = {
			vec3(451.51, -979.44, 30.68)
		}, targets = {
			{ loc = vec3(455.37, -1000.58, 30.24), length = 1.5, width = 3.0, heading = 270.0, minZ = 30.5, maxZ = 32.0, distance = 6 }
		}
	},

	AmbulanceArmoury = {
		name = 'Магазин',
		groups = shared.ambulance,
          inventory = {
			{ name = 'radio', price = 0 },
			{ name = 'radio_battery', price = 20 },
			{ name = 'bandage', price = 0 },
			-- { name = 'painkillers', price = 0 },
			{ name = 'firstaid', price = 0 },
			{ name = 'weapon_flashlight', price = 0 },
			{ name = 'weapon_fireextinguisher', price = 0 },
			{ name = 'ems_mdt', price = 0 },
		}, locations = {
			vec3(-660.36, 333.72, 83.08)
		}, targets = {
			{ loc = vec3(-660.36, 333.72, 83.08), length = 1.5, width = 3.0, heading = 270.0, minZ = 30.5, maxZ = 32.0, distance = 6 }
		}
	},


	-- Medicine = {
	-- 	name = 'Medicine Cabinet',
	-- 	groups = {
	-- 		['ambulance'] = 0
	-- 	},
	-- 	blip = {
	-- 		id = 403, colour = 69, scale = 0.6
	-- 	}, inventory = {
	-- 		{ name = 'medikit', price = 26 },
	-- 		{ name = 'bandage', price = 5 }
	-- 	}, locations = {
	-- 		vec3(306.3687, -601.5139, 43.28406)
	-- 	}, targets = {

	-- 	}
	-- },

	-- BlackMarketArms = {
	-- 	name = 'Black Market (Arms)',
	-- 	inventory = {
	-- 		{ name = 'WEAPON_DAGGER', price = 5000, metadata = { registered = false	}, currency = 'black_money' },
	-- 		{ name = 'WEAPON_CERAMICPISTOL', price = 50000, metadata = { registered = false }, currency = 'black_money' },
	-- 		{ name = 'at_suppressor_light', price = 50000, currency = 'black_money' },
	-- 		{ name = 'ammo-rifle', price = 1000, currency = 'black_money' },
	-- 		{ name = 'ammo-rifle2', price = 1000, currency = 'black_money' },
	-- 		{ name = 'electronic_scrap', price = 600 },
	-- 		{ name = 'weapon_katana_2', price = 5000 }
	-- 	}, locations = {
	-- 		vec3(309.09, -913.75, 56.46)
	-- 	}, targets = {

	-- 	}
	-- },

--	VendingMachineDrinks = {
--		name = 'Vending Machine',
--		inventory = {
--			{ name = 'water', price = 10 },r
--			{ name = 'cola', price = 10 },
--		},
--		model = {
--			`prop_vend_soda_02`, `prop_vend_fridge01`, `prop_vend_water_01`, `prop_vend_soda_01`
--		}
--	}
}
