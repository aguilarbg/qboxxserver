return {
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
				label = 'Lick i',
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
    

	['bandage'] = {
		label = 'Бандаж',
		weight = 115,
		client = {
			anim = { dict = 'missheistdockssetup1clipboard@idle_a', clip = 'idle_a', flag = 49 },
			prop = { model = `prop_rolled_sock_02`, pos = vec3(-0.14, -0.14, -0.08), rot = vec3(-50.0, -50.0, 0.0) },
			disable = { move = true, car = true, combat = true },
			usetime = 2500,
		}
	},
    ['camera'] = {
        label = 'Camera',
        weight = 1000,
        stack = false, -- Unique items should not stack
        close = true,
        description = 'Camera to take pretty pictures.',
        client = {
            image = 'camera.png',
            use = function(item)
                -- Add your camera usage logic here
            end
        }
    },
    
    ['photo'] = {
        label = 'Saved Pic',
        weight = 500,
        stack = false, -- Unique items should not stack
        close = true,
        description = 'Brand new picture saved!',
        client = {
            image = 'photo.png',
            use = function(item)
                -- Add your photo viewing logic here
            end
        }
    },      

    ['hackdevicet7'] = {
        label = 'Хакващо устройство',
        weight = 160,
        description = 'Това устройство може да променя повече, отколкото изглежда... ако знаеш как.',
    },
    ['newplate'] = {
        label = 'Рег.Табелка',
        image = "newplate.png",
        weight = 160,
    },
    ['apple'] = {
        label = "Ябълка",
        degrade = 1440, -- 24 hours
		decay = true,
        weight = 160,
        stack = true,
        close = true,
        client = {
			status = { hunger = 20000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			prop = { model = `sf_prop_sf_apple_01b`, pos = vec3(0.03, -0.01, -0.02), rot = vec3(250.0, 90.0, -45.5) },
			usetime = 2500,
			cancel = true,
			notification = 'Вкусна ябълка'
		}
    },
    ['delivery_tablet'] = {
        label = 'Таблет за доставки',
        weight = 500,
    },

    ['vehiclekey'] = {
        label = 'Ключ за МПС',
        weight = 500,
    },

    -- ['classickey'] = {
    --     label = 'Vehicle Key',
    --     weight = 500,
    -- },

    -- ['key'] = {
    --     label = 'Ключ',
    --     weight = 500,
    -- },

    ['yogamat_red'] = {
        label = 'Червено килимче за йога',
        weight = 500,
        stack = true,
        close = true,
        description = 'Да не би някой да каза йога?',
    },

    ['yogamat_blue'] = {
        label = 'Синьо килимче за йога',
        weight = 500,
        stack = true,
        close = true,
        description = 'Да не би някой да каза йога?',
    },
    ['pdbag'] = {
		label = 'PD Bag',
		weight = 120,
		stack = false,
		consume = 0,
		client = {
			export = 'wasabi_wallet.openWallet'
		}
	},
-- Casino
['casino1'] = {
    label = 'Клуб сандвич',
    weight = 200,
    degrade = 3840,
    decay = true,
    client = {
        status = { hunger = 350000 },
        anim = 'vanilla10',
        prop = 'vanilla10',
        usetime = 2500,
        notification = 'вкусно, вкусно...'
    }
},
['casino2'] = {
    label = 'Пържени картофи',
    weight = 200,
    degrade = 3840,
    decay = true,
    client = {
        status = { hunger = 350000 },
        anim = 'hornys3',
        prop = 'hornys3',
        usetime = 2500,
        notification = 'вкусно, вкусно...'
    }
},
['casino3'] = {
    label = 'Салата',
    weight = 200,
    degrade = 3840,
    decay = true,
    client = {
        status = { hunger = 350000 },
        anim = 'hornys3',
        prop = 'hornys3',
        usetime = 2500,
        notification = 'вкусно, вкусно...'
    }
},
['casino4'] = {
    label = 'Шоколадово суфле',
    weight = 200,
    degrade = 3840,
    decay = true,
    client = {
        status = { hunger = 350000 },
        anim = 'eating',
        prop = 'donut',
        usetime = 2500,
        notification = 'вкусно, вкусно...'
    }
},
['casino5'] = {
    label = 'Газирана вода',
    weight = 200,
    degrade = 3840,
    decay = true,
    client = {
        status = { thirst = 350000 },
        anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
        prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
        usetime = 2500,
        notification = 'вкусно, вкусно...'
    }
},
['casino6'] = {
    label = 'Уйски',
    weight = 200,
    degrade = 3840,
    decay = true,
    client = {
        status = { thirst = 350000 },
        anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
        prop = { model = `prop_whiskey_bottle`, pos = vec3(0.01, -0.03, -0.15), rot = vec3(5.0, 5.0, -180.5) },
        usetime = 2500,
        notification = 'вкусно, вкусно...',
        image = "whiskey.png",
    }
},
['casino7'] = {
    label = 'Водка',
    weight = 200,
    degrade = 3840,
    decay = true,
    client = {
        status = { thirst = 350000 },
        anim = 'vanilla1',
        prop = 'vanilla1',
        usetime = 2500,
        notification = 'вкусно, вкусно...',
        image = "vodka.png",
    }
},
['casino8'] = {
    label = 'Енергийна напитка',
    weight = 200,
    degrade = 3840,
    decay = true,
    client = {
        status = { thirst = 350000 },
        anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
        prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
        usetime = 2500,
        notification = 'вкусно, вкусно...'
    }
},


['nocturnal1'] = {
    label = 'Доритос',
    weight = 200,
    degrade = 3840,
    decay = true,
    client = {
        status = { hunger = 350000 },
        anim = 'vanilla10',
        prop = 'vanilla10',
        usetime = 2500,
        notification = 'вкусно, вкусно...'
    }
},
['nocturnal2'] = {
    label = 'Тостер',
    weight = 200,
    degrade = 3840,
    decay = true,
    client = {
        status = { hunger = 350000 },
        anim = 'vanilla10',
        prop = 'vanilla10',
        usetime = 2500,
        notification = 'вкусно, вкусно...'
    }
},


['nocturnal3'] = {
    label = 'Черен Руски',
    weight = 200,
    degrade = 3840,
    decay = true,
    client = {
        status = { thirst = 350000 },
        anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
        prop = { model = `prop_whiskey_bottle`, pos = vec3(0.01, -0.03, -0.15), rot = vec3(5.0, 5.0, -180.5) },
        usetime = 2500,
        notification = 'вкусно, вкусно...',
        image = "nocturnal3.png",
    }
},
['nocturnal4'] = {
    label = 'Джин и тоник',
    weight = 200,
    degrade = 3840,
    decay = true,
    client = {
        status = { thirst = 350000 },
        anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
        prop = { model = `prop_whiskey_bottle`, pos = vec3(0.01, -0.03, -0.15), rot = vec3(5.0, 5.0, -180.5) },
        usetime = 2500,
        notification = 'вкусно, вкусно...',
        image = "nocturnal4.png",
    }
},
['nocturnal5'] = {
    label = 'Мартини',
    weight = 200,
    degrade = 3840,
    decay = true,
    client = {
        status = { thirst = 350000 },
        anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
        prop = { model = `prop_whiskey_bottle`, pos = vec3(0.01, -0.03, -0.15), rot = vec3(5.0, 5.0, -180.5) },
        usetime = 2500,
        notification = 'вкусно, вкусно...',
        image = "nocturnal5.png",
    }
},
['nocturnal6'] = {
    label = 'Сангрия',
    weight = 200,
    degrade = 3840,
    decay = true,
    client = {
        status = { thirst = 350000 },
        anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
        prop = { model = `prop_whiskey_bottle`, pos = vec3(0.01, -0.03, -0.15), rot = vec3(5.0, 5.0, -180.5) },
        usetime = 2500,
        notification = 'вкусно, вкусно...',
        image = "nocturnal6.png",
    }
},
['nocturnal7'] = {
    label = 'Портокалов сок',
    weight = 200,
    degrade = 3840,
    decay = true,
    client = {
        status = { thirst = 350000 },
        anim = 'hornys6',
        prop = 'hornys6',
        usetime = 2500,
        notification = 'вкусно, вкусно...'
    }
},


['truckingtablet'] = {
    label = 'Trucking tablet',
    weight = 0,
    description = "There is an app on that",
    client = {
	export = 'kub_trucking.truckingtablet',
    }
},


["casinochips"] = {
    label = "Казино чипове",
    weight = 0,
    stack = true,
    close = false,
    description = "Казино чипове",
    client = {
        image = "casinochips.png",
    }
},

['casino_gumball'] = {
    label = 'Gumball',
    weight = 100,
    stack = true,
    close = true,
    description = 'A shiny gumball',
    client = {
        image = 'casino_gumball.png'
    }
},

['casino_water'] = {
    label = 'Късметлийска Вода',
    degrade = 216, -- 24 hours
	decay = true,
    weight = 500,
    description = 'Студена водичка',
    client = {
        status = { thirst = 100000 },
        anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
        prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
        usetime = 2500,
        cancel = true,
        notification = 'Айде сега бягай да въртиш'
    }
},

['casino_member'] = {
    label = 'Casino Member',
    weight = 0,
    stack = true,
    close = false,
    description = 'Casino Membership',
    client = {
        image = 'casino_member.png'
    }
},

['casino_vip'] = {
    label = 'Casino V.I.P',
    weight = 0,
    stack = true,
    close = false,
    description = 'V.I.P Membership',
    client = {
        image = 'casino_vip.png'
    }
},
    -- Cafe Foods and drinks
    ['bubble1'] = {
		label = 'Торта',
		weight = 200,
		degrade = 3840,
		decay = true,
		client = {
			status = { hunger = 350000 },
			anim = 'eating',
			prop = 'donut',
			usetime = 2500,
			notification = 'вкусно, вкусно...'
		}
	},
	['bubble2'] = {
		label = 'Мъфин с ягода',
		weight = 200,
		degrade = 3840,
		decay = true,
		client = {
			status = { hunger = 350000 },
			anim = 'maracoon2',
			prop = 'macaroon',
			usetime = 2500,
			notification = 'вкусно, вкусно...'
		}
	},
	['bubble3'] = {
		label = 'Синя магия',
		weight = 200,
		degrade = 3840,
		decay = true,
		client = {
			status = { hunger = 350000 },
			anim = 'maracoon2',
			prop = 'macaroon',
			usetime = 2500,
			notification = 'вкусно, вкусно...'
		}
	},
	['bubble4'] = {
		label = 'Шоколадова бисквитка',
		weight = 200,
		degrade = 3840,
		decay = true,
		client = {
			status = { hunger = 350000 },
            anim = 'maracoon2',
			prop = 'macaroon',
			usetime = 2500,
			notification = 'вкусно, вкусно...'
		}
	},
	['bubble5'] = {
		label = 'Ванилова бисквитка',
		weight = 200,
		degrade = 3840,
		decay = true,
		client = {
			status = { hunger = 350000 },
            anim = 'maracoon2',
			prop = 'macaroon',
			usetime = 2500,
			notification = 'вкусно, вкусно...'
		}
	},
	['bubble6'] = {
		label = 'Бъбъл праскова',
		weight = 200,
		degrade = 3840,
		decay = true,
		client = {
			status = { thirst = 350000 },
			anim = 'bubble6',
			prop = 'bubble6',
			usetime = 2500,
			notification = 'вкусно, вкусно...'
		}
	},
	['bubble7'] = {
		label = 'Бъбъл шоколад',
		weight = 200,
		degrade = 3840,
		decay = true,
		client = {
			status = { thirst = 350000 },
			anim = 'bubble7',
			prop = 'bubble7',
			usetime = 2500,
			notification = 'вкусно, вкусно...'
		}
	},
	['bubble8'] = {
		label = 'Бъбъл боровинка',
		weight = 200,
		degrade = 3840,
		decay = true,
		client = {
			status = { thirst = 350000 },
			anim = 'bubble8',
			prop = 'bubble8',
			usetime = 2500,
			notification = 'вкусно, вкусно...'
		}
	},
	['bubble9'] = {
		label = 'Бъбъл диня',
		weight = 200,
		degrade = 3840,
		decay = true,
		client = {
			status = { thirst = 350000 },
			anim = 'bubble9',
			prop = 'bubble9',
			usetime = 2500,
			notification = 'вкусно, вкусно...'
		}
	},
	['bubble10'] = {
		label = 'Боровинкова свежест',
		weight = 200,
		degrade = 3840,
		decay = true,
		client = {
			status = { thirst = 350000 },
			anim = 'bubble10',
			prop = 'bubble10',
			usetime = 2500,
			notification = 'вкусно, вкусно...'
		}
	},

    ['noir1'] = {
		label = 'Тирамису',
		weight = 200,
		degrade = 3840,
		decay = true,
		client = {
			status = { hunger = 350000 },
			anim = 'eating',
			prop = 'donut',
			usetime = 2500,
			notification = 'вкусно, вкусно...'
		}
	},
	['noir2'] = {
		label = 'Чийзкейк',
		weight = 200,
		degrade = 3840,
		decay = true,
		client = {
			status = { hunger = 350000 },
			anim = 'noir2',
			prop = 'noir2',
			usetime = 2500,
			notification = 'вкусно, вкусно...'
		}
	},
	['noir3'] = {
		label = 'Поничка',
		weight = 200,
		degrade = 3840,
		decay = true,
		client = {
			status = { hunger = 350000 },
			anim = 'noir3',
			prop = 'noir3',
			usetime = 2500,
			notification = 'вкусно, вкусно...'
		}
	},
	['noir4'] = {
		label = 'Бейгъл',
		weight = 200,
		degrade = 3840,
		decay = true,
		client = {
			status = { hunger = 350000 },
			anim = 'noir4',
			prop = 'noir4',
			usetime = 2500,
			notification = 'вкусно, вкусно...'
		}
	},
	['noir5'] = {
		label = 'Крем карамел',
		weight = 200,
		degrade = 3840,
		decay = true,
		client = {
			status = { hunger = 350000 },
			anim = 'noir2',
			prop = 'noir2',
			usetime = 2500,
			notification = 'вкусно, вкусно...'
		}
	},
	['noir6'] = {
		label = 'Еспресо',
		weight = 200,
		degrade = 3840,
		decay = true,
		client = {
			status = { thirst = 350000 },
			anim = 'noir6',
			prop = 'noir6',
			usetime = 2500,
			notification = 'вкусно, вкусно...'
		}
	},
	['noir7'] = {
		label = 'Виенско кафе',
		weight = 200,
		degrade = 3840,
		decay = true,
		client = {
			status = { thirst = 350000 },
			anim = 'bubble7',
			prop = 'bubble7',
			usetime = 2500,
			notification = 'вкусно, вкусно...'
		}
	},
	['noir8'] = {
		label = 'Чай',
		weight = 200,
		degrade = 3840,
		decay = true,
		client = {
			status = { thirst = 350000 },
			anim = 'noir8',
			prop = 'noir8',
			usetime = 2500,
			notification = 'вкусно, вкусно...'
		}
	},
	['noir9'] = {
		label = 'Топъл шоколад',
		weight = 200,
		degrade = 3840,
		decay = true,
		client = {
			status = { thirst = 350000 },
			anim = 'bubble7',
			prop = 'bubble7',
			usetime = 2500,
			notification = 'вкусно, вкусно...'
		}
	},
	['noir10'] = {
		label = 'Капучино',
		weight = 200,
		degrade = 3840,
		decay = true,
		client = {
			status = { thirst = 350000 },
			anim = 'noir10',
			prop = 'noir10',
			usetime = 2500,
			notification = 'вкусно, вкусно...'
		}
	},

    ['legion1'] = {
		label = 'Морски дарове',
		weight = 200,
		degrade = 3840,
		decay = true,
		client = {
			status = { hunger = 350000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			notification = 'вкусно, вкусно...'
		}
	},
	['legion2'] = {
		label = 'Доритос',
		weight = 200,
		degrade = 3840,
		decay = true,
		client = {
			status = { hunger = 350000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			notification = 'вкусно, вкусно...'
		}
	},
	['legion3'] = {
		label = 'Бира',
		weight = 200,
		degrade = 3840,
		decay = true,
		client = {
			status = { thirst = 350000 },
			anim = 'legion3',
			prop = 'legion3',
			usetime = 2500,
			notification = 'вкусно, вкусно...'
		}
	},
    ['legion4'] = {
		label = 'Мохито',
		weight = 200,
		degrade = 3840,
		decay = true,
		client = {
			status = { thirst = 350000 },
			anim = 'hornys10',
			prop = 'hornys10',
			usetime = 2500,
			notification = 'вкусно, вкусно...'
		}
	},
    -- ['legion4'] = {
	-- 	label = 'Ром',
	-- 	weight = 200,
	-- 	degrade = 3600,
	-- 	decay = true,
	-- 	client = {
	-- 		status = { thirst = 350000 },
	-- 		anim = 'legion4',
	-- 		prop = 'legion4',
	-- 		usetime = 2500,
	-- 		notification = 'вкусно, вкусно...'
	-- 	}
	-- },
    ['legion5'] = {
		label = 'Текила Sunrise',
		weight = 200,
		degrade = 3840,
		decay = true,
		client = {
			status = { thirst = 350000 },
			anim = 'legion5',
			prop = 'legion5',
			usetime = 2500,
			notification = 'вкусно, вкусно...'
		}
	},
	['legion6'] = {
		label = 'Секс на плажа',
		weight = 200,
		degrade = 3840,
		decay = true,
		client = {
			status = { thirst = 350000 },
			anim = 'legion6',
			prop = 'legion6',
			usetime = 2500,
			notification = 'вкусно, вкусно...'
		}
	},
	['legion7'] = {
		label = 'Бърбан',
		weight = 200,
		degrade = 3840,
		decay = true,
		client = {
			status = { thirst = 350000 },
			anim = 'legion7',
			prop = 'legion7',
			usetime = 2500,
			notification = 'вкусно, вкусно...'
		}
	},
	['legion8'] = {
		label = 'Супер водка',
		weight = 200,
		degrade = 3840,
		decay = true,
		client = {
			status = { thirst = 350000 },
			anim = 'legion8',
			prop = 'legion8',
			usetime = 2500,
			notification = 'вкусно, вкусно...'
		}
	},
	['legion9'] = {
		label = 'Розе',
		weight = 200,
		degrade = 3840,
		decay = true,
		client = {
			status = { thirst = 350000 },
			anim = 'legion9',
			prop = 'legion9',
			usetime = 2500,
			notification = 'вкусно, вкусно...'
		}
	},
    ['legion10'] = {
		label = 'Пина Колада',
		weight = 200,
		degrade = 3840,
		decay = true,
		client = {
			status = { thirst = 350000 },
			anim = 'hornys10',
			prop = 'hornys10',
			usetime = 2500,
			notification = 'вкусно, вкусно...'
		}
	},
    ['legion11'] = {
		label = 'Фреш Портокал',
		weight = 200,
		degrade = 3840,
		decay = true,
		client = {
			status = { thirst = 350000 },
			anim = 'hornys10',
			prop = 'hornys10',
			usetime = 2500,
			notification = 'вкусно, вкусно...'
		}
	},
    ['legion12'] = {
		label = 'Фреш Ябълка',
		weight = 200,
		degrade = 3840,
		decay = true,
		client = {
			status = { thirst = 350000 },
			anim = 'hornys10',
			prop = 'hornys10',
			usetime = 2500,
			notification = 'вкусно, вкусно...'
		}
	},
	-- ['legion10'] = {
	-- 	label = 'Бейлис',
	-- 	weight = 200,
	-- 	degrade = 3600,
	-- 	decay = true,
	-- 	client = {
	-- 		status = { thirst = 350000 },
	-- 		anim = 'legion10',
	-- 		prop = 'legion10',
	-- 		usetime = 2500,
	-- 		notification = 'вкусно, вкусно...'
	-- 	}
	-- },

    
    ['vanilla1'] = {
		label = 'Водка',
		weight = 200,
		degrade = 3840,
		decay = true,
		client = {
			status = { thirst = 000000 },
			anim = 'vanilla1',
			prop = 'vanilla1',
			usetime = 2500,
			notification = 'вкусно, вкусно...'
		}
	},
    ['vanilla2'] = {
		label = 'Мохито',
		weight = 200,
		degrade = 3840,
		decay = true,
		client = {
			status = { thirst = 000000 },
			anim = 'vanilla2',
			prop = 'vanilla2',
			usetime = 2500,
			notification = 'вкусно, вкусно...'
		}
	},
    ['vanilla3'] = {
		label = 'Уиски',
		weight = 200,
		degrade = 3840,
		decay = true,
		client = {
			status = { thirst = 000000 },
			anim = 'vanilla3',
			prop = 'vanilla3',
			usetime = 2500,
			notification = 'вкусно, вкусно...'
		}
	},
    ['vanilla4'] = {
		label = 'Ягодово дайкири',
		weight = 200,
		degrade = 3840,
		decay = true,
		client = {
			status = { thirst = 000000 },
			anim = 'vanilla4',
			prop = 'vanilla4',
			usetime = 2500,
			notification = 'вкусно, вкусно...'
		}
	},
    ['vanilla5'] = {
		label = 'Маргарита',
		weight = 200,
		degrade = 3840,
		decay = true,
		client = {
			status = { thirst = 000000 },
			anim = 'vanilla5',
			prop = 'vanilla5',
			usetime = 2500,
			notification = 'вкусно, вкусно...'
		}
	},
    ['vanilla6'] = {
		label = 'Лонг Айлънд',
		weight = 200,
		degrade = 3840,
		decay = true,
		client = {
			status = { thirst = 000000 },
			anim = 'vanilla6',
			prop = 'vanilla6',
			usetime = 2500,
			notification = 'вкусно, вкусно...'
		}
	},
    ['vanilla7'] = {
		label = 'Шотове микс',
		weight = 200,
		degrade = 3840,
		decay = true,
		client = {
			status = { thirst = 000000 },
			anim = 'vanilla7',
			prop = 'vanilla7',
			usetime = 2500,
			notification = 'вкусно, вкусно...'
		}
	},
    ['vanilla8'] = {
		label = 'Ягоди с шоколад',
		weight = 200,
		degrade = 3840,
		decay = true,
		client = {
			status = { hunger = 350000 },
			anim = 'vanilla8',
			prop = 'vanilla8',
			usetime = 2500,
			notification = 'вкусно, вкусно...'
		}
	},
    ['vanilla9'] = {
		label = 'Плато с хрупанки',
		weight = 200,
		degrade = 3840,
		decay = true,
		client = {
			status = { hunger = 350000 },
			anim = 'vanilla9',
			prop = 'vanilla9',
			usetime = 2500,
			notification = 'вкусно, вкусно...'
		}
	},
    ['vanilla10'] = {
		label = 'Мини сандвичи',
		weight = 200,
		degrade = 3840,
		decay = true,
		client = {
			status = { hunger = 350000 },
			anim = 'vanilla10',
			prop = 'vanilla10',
			usetime = 2500,
			notification = 'вкусно, вкусно...'
		}
	},
    ['vanilla11'] = {
		label = 'Маслини микс',
		weight = 200,
		degrade = 3840,
		decay = true,
		client = {
			status = { hunger = 350000 },
			anim = 'vanilla11',
			prop = 'vanilla11',
			usetime = 2500,
			notification = 'вкусно, вкусно...'
		}
	},

    ['hornys1'] = {
		label = 'Дюнер',
		weight = 200,
		degrade = 3840,
		decay = true,
		client = {
			status = { hunger = 350000 },
			anim = 'hornys1',
			prop = 'hornys1',
			usetime = 2500,
			notification = 'вкусно, вкусно...'
		}
	},
	['hornys2'] = {
		label = 'Heartstopper',
		weight = 200,
		degrade = 3840,
		decay = true,
		client = {
			status = { hunger = 350000 },
			anim = 'hornys2',
			prop = 'hornys2',
			usetime = 2500,
			notification = 'вкусно, вкусно...'
		}
	},
	['hornys3'] = {
		label = 'Лучени кръгчета',
		weight = 200,
		degrade = 3840,
		decay = true,
		client = {
			status = { hunger = 350000 },
			anim = 'hornys3',
			prop = 'hornys3',
			usetime = 2500,
			notification = 'вкусно, вкусно...'
		}
	},
	['hornys4'] = {
		label = 'Крилца',
		weight = 200,
		degrade = 3840,
		decay = true,
		client = {
			status = { hunger = 350000 },
			anim = 'hornys4',
			prop = 'hornys4',
			usetime = 2500,
			notification = 'вкусно, вкусно...'
		}
	},
	['hornys5'] = {
		label = 'Smash Burger',
		weight = 200,
		degrade = 3840,
		decay = true,
		client = {
			status = { hunger = 350000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			notification = 'вкусно, вкусно...'
		}
	},
	['hornys6'] = {
		label = 'Плодово смути',
		weight = 200,
		degrade = 3840,
		decay = true,
		client = {
			status = { thirst = 350000 },
			anim = 'hornys6',
			prop = 'hornys6',
			usetime = 2500,
			notification = 'вкусно, вкусно...'
		}
	},
	['hornys7'] = {
		label = 'Млечен шейк',
		weight = 200,
		degrade = 3840,
		decay = true,
		client = {
			status = { thirst = 350000 },
			anim = 'hornys7',
			prop = 'hornys7',
			usetime = 2500,
			notification = 'вкусно, вкусно...'
		}
	},
	['hornys8'] = {
		label = 'Енергийна напитка',
		weight = 200,
		degrade = 3840,
		decay = true,
		client = {
			status = { thirst = 350000 },
			anim = 'hornys8',
			prop = 'hornys8',
			usetime = 2500,
			notification = 'вкусно, вкусно...'
		}
	},
	['hornys9'] = {
		label = 'Кола',
		weight = 200,
		degrade = 3840,
		decay = true,
		client = {
			status = { thirst = 350000 },
			anim = 'hornys9',
			prop = 'hornys9',
			usetime = 2500,
			notification = 'вкусно, вкусно...'
		}
	},
	['hornys10'] = {
		label = 'Плодова скрежина',
		weight = 200,
		degrade = 3840,
		decay = true,
		client = {
			status = { thirst = 350000 },
			anim = 'hornys10',
			prop = 'hornys10',
			usetime = 2500,
			notification = 'вкусно, вкусно...'
		}
	},


    -- Recycle 
    ['recycle'] = {
        label = 'Рециклирани стоки',
        weight = 250,
        stack = true,
    },
    -- Npc Hacking
    ["hacking_devicenpc"] = {
        name = "hacking_devicenpc",
        label = "Хакерско устройство",
        weight = 100,
        type = "item",
        image = "hacking_device.png",
        unique = false,
        useable = false,
        description = "Хакерско устройство за NPC-та"
    },
    -- Pickle
    ["slaptable"] = {
        label = 'Slap Table',
        weight = 1,
        stack = true,
        description = ""
    },
    -- Plates
    ['licenseplate'] = {
        label = 'Регистрационен номер',
        stack = false,
        weight = 100,
        close = true,
        description = "Табелка за регистрационен номер",
        client = {
            image = 'license_plate_veh.png',
        }
    },
    ['fakeplate'] = {
        label = 'fakeplate',
        stack = false,
        weight = 100,
        close = true,
        description = "Неиндифициран регистрационен номер",
        client = {
            image = 'licenseplate.png',
        }
    },
    -- Skate
    ['skateboard'] = {
        label = 'Скейтборд',
        weight = 800,
        stack = false,
        client = {
            image = 'skateboard.png'
        }
    },  

	['black_money'] = {
		label = 'Немаркирана валута',
	},

	['burger'] = {
		label = 'Бургерче',
        degrade = 2160, -- 24 hours
		decay = true,
		weight = 220,
		client = {
			status = { hunger = 100000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			notification = 'You ate a delicious burger'
		},
	},

	['sprunk'] = {
		label = 'Сода',
		weight = 350,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_can_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Утоли жаждата'
		}
	},

	['parachute'] = {
		label = 'Парашут',
		weight = 8000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 1500
		}
	},
    ['newplate'] = {
		label = 'Рег. Номер',
		weight = 200,
		stack = true,
        useable = true,
        close = true,
	},

    -- Pacific Robbery
    ['thermite_bomb'] = {
        label = 'Термитна бомба',
        weight = 5,
        stack = true,
        close = true,
        description = 'Термит',
    },
    ['c4_bomb'] = {
        label = 'C4',
        weight = 5,
        stack = true,
        close = true,
        description = 'C4 бомба',
    },
    ['drill'] = {
        label = 'Drill',
        weight = 5,
        stack = true,
        close = true,
        description = 'Дрелка',
    },
    ['laptop'] = {
        label = 'Laptop',
        weight = 5,
        stack = true,
        close = true,
        description = 'Мнооогооо скъп лаптоп.',
    },
    ['usb_stick'] = {
        label = 'USB флашка',
        weight = 5,
        stack = true,
        close = true,
        description = 'USB устройство',
    },
    ['antique_bottle'] = {
        label = 'Антична бутилка',
        weight = 5,
        stack = true,
        close = true,
        description = 'Антична бутилка',
    },
    ['diamond'] = {
        label = 'Diamond',
        weight = 5,
        stack = true,
        close = true,
        description = 'Диамант',
    },
    ['diamond_necklace'] = {
        label = 'Диамантено колие',
        weight = 5,
        stack = true,
        close = true,
        description = 'Диамантено колие',
    },
    ['gold_bar'] = {
        label = 'Златно кюлче',
        weight = 5,
        stack = true,
        close = true,
        description = 'Златно кюлче',
    },
    ['gold_monkey'] = {
        label = 'Златна статуетка',
        weight = 5,
        stack = true,
        close = true,
        description = 'Златна статуетка на маймуна',
    },
    ['lapis_panther'] = {
        label = 'Лапис статуетка',
        weight = 5,
        stack = true,
        close = true,
        description = 'Лапис статуетка на пантера',
    },
    ['platinum_bar'] = {
        label = 'Платинено кюлче',
        weight = 5,
        stack = true,
        close = true,
        description = 'Платинено кюлче',
    },
    ['rembrandt'] = {
        label = 'Картина',
        weight = 5,
        stack = true,
        close = true,
        description = 'Картина на Rembrandt',
    },
    ['ruby_diamond'] = {
        label = 'Рубинен диамант',
        weight = 5,
        stack = true,
        close = true,
        description = 'Рубинен диамант',
    },
    ['van_gogh'] = {
        label = 'Картина',
        weight = 5,
        stack = true,
        close = true,
        description = 'Картина на Van Gogh',
    },
    
	['garbage'] = {
		label = 'Боклук',
	},

	['paperbag'] = {
		label = 'Хъртиена торбичка',
		weight = 1,
		stack = false,
		close = false,
		consume = 0
	},

	['identification'] = {
		label = 'Лична карта',
		client = {
			image = "card_id.png",
		}
	},
    ['gps_panel'] = {
		label = 'GPS',
	},
    ['vehicle_gps'] = {
		label = 'МПС GPS',
	},
    ['player_gps'] = {
		label = 'Тракер',
	},

	['panties'] = {
		label = 'Прашки',
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
		label = 'Шперц',
		weight = 160,
	},

	['phone'] = {
		label = 'Телефон',
		weight = 190,
		stack = false,
		consume = 0,
	},

	['money'] = {
		label = 'cash',
	},

	['mustard'] = {
		label = 'Горчица',
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
		label = 'Вода',
        degrade = 2160, -- 24 hours
		decay = true,
		weight = 500,
		client = {
			status = { thirst = 100000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
			usetime = 2500,
			cancel = true,
			notification = 'Ти пийна освежаваща водичка.'
		}
	},

	['radio'] = {
		label = 'Радио',
		weight = 500,
		stack = false,
		allowArmed = true
	},
    

	['armour'] = {
		label = 'Бронежилетка',
		weight = 3000,
		stack = true,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 3500
		}
	},

	['clothing'] = {
		label = 'Дрехи',
		consume = 0,
	},
    ['mask'] = {
		label = 'Маска',
		consume = 0,
        weight = 300,
        stack = true,
	},
    ['mask2'] = {
		label = 'Маска',
		consume = 0,
        weight = 300,
        stack = true,
	},

	['mastercard'] = {
		label = 'Кредитна карта',
		stack = false,
		weight = 10,
		client = {
			image = 'card_bank.png'
		}
	},
    ['kq_easteregg'] = {
        label = 'Easter egg',
        weight = 20,
        stack = true,
        close = true,
        description = 'Decorated easter egg',
        client = {},
        server = {},
        consume = 0,
        image = 'kq_easteregg.png'
    },
    

	--[[
    ['scrapmetal'] = {
		label = 'Метален скрап',
		weight = 80,
	},
    ]]

    ["empty_weed_bag"] = {
        label = "Празно пликче",
        weight = 0,
        stack = true,
        close = true,
        description = "Малко празно пликче."
    },

    ["firework2"] = {
        label = "Poppelers",
        weight = 1000,
        stack = true,
        close = true,
        description = "Фойерверки",
        client = {
            image = "firework2.png",
        }
    },

    ["cola"] = {
        label = "Количка",
        degrade = 2160, -- 24 hours
		decay = true,
        weight = 500,
        stack = true,
        close = true,
        description = "За всеки жаден",
        client = {
			status = { thirst = 100000 },
			anim = { dict = 'smo@milkshake_idle', clip = 'milkshake_idle_clip' },
			prop = { model = `prop_rpemotes_soda03`, pos = vec3(0.03, -0.07, 0.06), rot = vec3(250.0, 90.0, -45.5) },
			usetime = 2500,
			cancel = true,
			notification = 'Ти пийна освежаваща водичка.'
		}
    },
    

    ["casinomenu"] = {
        label = "Casinio Menu",
        weight = 200,
        stack = true,
        close = false,
        description = "Меню за храна",
        client = {
            image = "foodmenu.png",
        }
    },
    ["casinomenu2"] = {
        label = "Casinio Menu 2",
        weight = 200,
        stack = true,
        close = false,
        description = "Меню за храна",
        client = {
            image = "foodmenu.png",
        }
    },
    ["hornysmenu"] = {
        label = "Hornys Menu",
        weight = 200,
        stack = true,
        close = false,
        description = "Меню за храна",
        client = {
            image = "foodmenu.png",
        }
    },
    ["bubblemenu"] = {
        label = "Bubble Menu 1",
        weight = 200,
        stack = true,
        close = false,
        description = "Меню за храна",
        client = {
            image = "foodmenu.png",
        }
    },
    ["bubble2menu"] = {
        label = "Bubble Menu 2",
        weight = 200,
        stack = true,
        close = false,
        description = "Меню за храна",
        client = {
            image = "foodmenu.png",
        }
    },
    ["nocturnalmenu"] = {
        label = "Nocturnal Menu",
        weight = 200,
        stack = true,
        close = false,
        description = "Меню за храна",
        client = {
            image = "foodmenu.png",
        }
    },
    ["weddinginvitation"] = {
        label = "Покана за сватба",
        weight = 200,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "weddinginvitation2.png",
        }
    },
    ["bestman"] = {
        label = "Покана за сватба - кумове",
        weight = 200,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "bestman2.png",
        }
    },

    ["weed_ak47"] = {
        label = "AK47 2g",
        weight = 200,
        stack = true,
        close = false,
        description = "Грамче AK47"
    },

    ["weed_nutrition"] = {
        label = "Тор",
        weight = 2000,
        stack = true,
        close = true,
        description = "Тор за растения"
    },

    ["weed_og-kush_seed"] = {
        label = "OGKush Seed",
        weight = 0,
        stack = true,
        close = true,
        description = "Семка OG Kush"
    },

    ["advancedlockpick"] = {
        label = "Подобрен шперц",
        weight = 500,
        stack = true,
        close = true,
        description = "Любимия инстромент на Киро-шперца.",
        client = {
            image = "advancedlockpick.png",
        }
    },

    ["stickynote"] = {
        label = "Залепяща бележка",
        weight = 0,
        stack = false,
        close = false,
        description = "Помага ако трбва да запишеш нещо.",
        client = {
            image = "stickynote.png",
        }
    },

    ["antipatharia_coral"] = {
        label = "Antipatharia",
        weight = 1000,
        stack = true,
        close = true,
        description = "Черен корал",
        client = {
            image = "antipatharia_coral.png",
        }
    },

    ["tablet"] = {
        label = "Таблет",
        weight = 2000,
        stack = true,
        close = true,
        description = "Скъпичка техника.",
        client = {
            image = "tablet.png",
        }
    },

    ["aluminumoxide"] = {
        label = "Aluminium Powder",
        weight = 100,
        stack = true,
        close = false,
        description = "Прах от алуминий",
        client = {
            image = "aluminumoxide.png",
        }
    },

    ["labkey"] = {
        label = "Ключ",
        weight = 500,
        stack = false,
        close = true,
        description = "Какво ли отваря?",
        client = {
            image = "labkey.png",
        }
    },

    ["firework3"] = {
        label = "WipeOut",
        weight = 1000,
        stack = true,
        close = true,
        description = "Фойерверки",
        client = {
            image = "firework3.png",
        }
    },

    ["diving_fill"] = {
        label = "Бутилка с кислород",
        weight = 3000,
        stack = false,
        close = true,
        description = "Помага да не се удавиш.",
        client = {
            image = "diving_fill.png",
        }
    },

    ["empty_evidence_bag"] = {
        label = "Празно пликче за доказателства",
        weight = 0,
        stack = true,
        close = false,
        description = "Тук се слагат доказателства.",
        client = {
            image = "evidence.png",
        }
    },

    ['evidence_bag'] = {
        label = 'Filled evidence bag',
        weight = 100,
        stack = false,
    },
       
    ['bullet_case'] = {
        label = 'Гилза',
        weight = 100,
        stack = false,
    },

    ["firstaid"] = {
        label = "Аптечка",
        weight = 2500,
        stack = true,
        close = true,
        description = "Помага за тежки нараняваня.",
        client = {
            image = "firstaid.png",
        }
    },

    ["goldchain"] = {
        label = "Златен ланец",
        weight = 1500,
        stack = true,
        close = true,
        description = "Това е един он ланците на Tupac.",
        client = {
            image = "goldchain.png",
        }
    },

    ["id_card"] = {
        label = "Лична Карта",
        weight = 0,
        stack = false,
        close = false,
        description = "Най-важния документ за самоличност.",
        client = {
            image = "id_card.png",
        }
    },

    ["steel"] = {
        label = "Стомана",
        weight = 50,
        stack = true,
        close = false,
        description = "Много здрав метал.",
        client = {
            image = "steel.png",
        }
    },

    ["binoculars"] = {
        label = "Бинокли",
        weight = 600,
        stack = true,
        close = true,
        description = "НЕ ПОЛЗВАЙ ЗА ДА ШПИОНИРАШ СЪСЕДКАТА!!!",
        client = {
            image = "binoculars.png",
        }
    },

    ["rolex"] = {
        label = "Златен часовник",
        weight = 1500,
        stack = true,
        close = true,
        description = "Това е часовника на Майк Тайсън.",
        client = {
            image = "rolex.png",
        }
    },

    ["weed_purple-haze_seed"] = {
        label = "Семка",
        weight = 0,
        stack = true,
        close = true,
        description = "Семка Purple Haze"
    },

    ["printerdocument"] = {
        label = "Документи",
        weight = 500,
        stack = false,
        close = true,
        description = "Папка с документи",
        client = {
            image = "printerdocument.png",
        }
    },

    ["weed_ak47_seed"] = {
        label = "Семка",
        weight = 0,
        stack = true,
        close = true,
        description = "Семка AK47"
    },

    

    ["joint"] = {
        label = "Joint",
        weight = 0,
        stack = true,
        close = true,
        description = "Пази от Бориската",
        client = {
            image = "joint.png",
        }
    },

    ["oxy"] = {
        label = "Хапче",
        weight = 0,
        stack = true,
        close = true,
        description = "Против главоболие",
        client = {
            image = "oxy.png",
        }
    },

    ["samsungphone"] = {
        label = "Samsung S10",
        weight = 1000,
        stack = true,
        close = true,
        description = "Последен модел",
        client = {
            image = "samsungphone.png",
        }
    },

    ["metalscrap"] = {
        label = "Метален скрап",
        weight = 80,
        stack = true,
        close = false,
        description = "Може да го използваш за нещо полезно.",
        client = {
            image = "metalscrap.png",
        }
    },

    ["snikkel_candy"] = {
        label = "Snikkel",
        weight = 100,
        stack = true,
        close = true,
        description = "Вкусни бонбонки",
        client = {
            image = "snikkel_candy.png",
        }
    },

    ["armor"] = {
        label = "Бронежилетка",
        weight = 5000,
        stack = true,
        close = true,
        description = "Малко защита няма да навреди, нали?",
        client = {
            image = "armor.png",
        }
    },

    ["walkstick"] = {
        label = "Walking Stick",
        weight = 1000,
        stack = true,
        close = true,
        description = "Бастун",
        client = {
            image = "walkstick.png",
        }
    },

    ["laptop"] = {
        label = "Лаптоп",
        weight = 4000,
        stack = true,
        close = true,
        description = "Мнооогооо скъп лаптоп.",
        client = {
            image = "laptop.png",
        }
    },

    ["handcuffs"] = {
        label = "Белезници",
        weight = 100,
        stack = true,
        close = true,
        description = "Белезниците винаги помагат, само внимавай кога ги използваш ;) ",
        client = {
            image = "handcuffs.png",
        }
    },

    ["filled_evidence_bag"] = {
        label = "Пликче със доказателства",
        weight = 200,
        stack = false,
        close = false,
        description = "Евала, намери доказателства!",
        client = {
            image = "evidence.png",
        }
    },

    ["tosti"] = {
        label = "Сандвич",
        weight = 200,
        stack = true,
        close = true,
        description = "Грил сандвич",
        client = {
            image = "tosti.png",
        }
    },

    ["electronickit"] = {
        label = "Комплект за електроника",
        weight = 100,
        stack = true,
        close = true,
        description = "Набор инструменти за поправка на електроуреди",
        client = {
            image = "electronickit.png",
        }
    },

    ["trojan_usb"] = {
        label = "Флашка с вирус",
        weight = 0,
        stack = true,
        close = true,
        description = "Trojan USB",
        client = {
            image = "usb_device.png",
        }
    },

    ["coke_small_brick"] = {
        label = "Пакет кокаин",
        weight = 350,
        stack = false,
        close = true,
        description = "Пакет с бял прах",
        client = {
            image = "coke_small_brick.png",
        }
    },

    ["weaponlicense"] = {
        label = "Лиценз",
        weight = 0,
        stack = false,
        close = true,
        description = "Лиценз за огнестрелно оръжие",
        client = {
            image = "weaponlicense.png",
        }
    },

    ["ironoxide"] = {
        label = "Iron Powder",
        weight = 100,
        stack = true,
        close = false,
        description = "Желязо на прах",
        client = {
            image = "ironoxide.png",
        }
    },

    ["twerks_candy"] = {
        label = "Twerks",
        weight = 100,
        stack = true,
        close = true,
        description = "Вкусни бонбонки",
        client = {
            image = "twerks_candy.png",
        }
    },

    ["ifaks"] = {
        label = "ifaks",
        weight = 200,
        stack = true,
        close = true,
        description = "Аптечка за първа помощ",
        client = {
            image = "ifaks.png",
        }
    },

    ["weed_skunk_seed"] = {
        label = "Семка",
        weight = 0,
        stack = true,
        close = true,
        description = "Семка Skunk"
    },

    ["weed_white-widow_seed"] = {
        label = "Семка",
        weight = 0,
        stack = true,
        close = false,
        description = "Семка White Widow"
    },

    ["vodka"] = {
        label = "Водка",
        weight = 700,
        stack = true,
        close = true,
        description = "Вода за вътрешна дезинфекция.",
        client = {
			status = { thirst = 100000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_vodka_bottle`, pos = vec3(0.01, 0.01, -0.28), rot = vec3(0.0, 0.0, -180.5) },
			usetime = 2500,
			notification = 'Водка с утеха за душата мииииии',
            image = "vodka.png"
		}
    },

    ["diving_gear"] = {
        label = "Екипировка за гмуркане",
        weight = 30000,
        stack = false,
        close = true,
        description = "Помага ти да станеш риба.",
        client = {
            image = "diving_gear.png",
        }
    },

    ["weed_og-kush"] = {
        label = "OGKush 2g",
        weight = 200,
        stack = true,
        close = false,
        description = "Грам OG Kush",
        client = {
            image = "weed_baggy.png",
        }
    },

    ["rolling_paper"] = {
        label = "OCB",
        weight = 0,
        stack = true,
        close = true,
        description = "Да си връткаш фасове.",
        client = {
            image = "rolling_paper.png",
        }
    },

    ["grapejuice"] = {
        label = "Гроздов сок",
        weight = 200,
        stack = true,
        close = false,
        description = "Баба Ина го е правила.",
        client = {
            status = { thirst = 100000 },
			anim = 'winedrink',
			prop = 'wineglass',
			usetime = 2500,
			notification = 'Малко бие на меча кръв.',
            image = "grapejuice.png",
        }
    },

    ["wine"] = {
        label = "Вино",
        weight = 700,
        description = "Кой не обича малко хубаво винце?",
        client = {
			status = { thirst = 100000 },
			anim = 'winedrink',
			prop = 'wineglass',
			usetime = 2500,
			notification = 'Малко бие на меча кръв.',
            image = "wine.png"
		}
    },

    ["weed_purple-haze"] = {
        label = "Purple Haze 2g",
        weight = 200,
        stack = true,
        close = false,
        description = "Грам Purple Haze"
    },

    ["diamond"] = {
        label = "Диамант",
        weight = 1000,
        stack = true,
        close = true,
        description = "Мирише на яко кеш!",
        client = {
            image = "diamond.png",
        }
    },

    ["aluminum"] = {
        label = "Алуминий",
        weight = 50,
        stack = true,
        close = false,
        description = "Вид метал, който може да се окаже полезен.",
        client = {
            image = "aluminum.png",
        }
    },

    ["pinger"] = {
        label = "Pinger",
        weight = 1000,
        stack = true,
        close = true,
        description = "Pinger",
        client = {
            image = "pinger.png",
        }
    },

    ["thermite"] = {
        label = "Термит",
        weight = 1000,
        stack = true,
        close = true,
        description = "Термит",
        client = {
            image = "thermite.png",
        }
    },

    ["crack_baggy"] = {
        label = "Крек",
        weight = 0,
        stack = true,
        close = true,
        description = "Торбичка крек",
        client = {
            image = "crack_baggy.png",
        }
    },

    ["weed_amnesia"] = {
        label = "Amnesia 2g",
        weight = 200,
        stack = true,
        close = false,
        description = "Грам Amnesia"
    },

    ["xtcbaggy"] = {
        label = "XTC",
        weight = 0,
        stack = true,
        close = true,
        description = "Спазмалгон",
        client = {
            image = "xtcbaggy.png",
        }
    },

    ["iron"] = {
        label = "Желязо",
        weight = 50,
        stack = true,
        close = false,
        description = "Полезно парче метал.",
        client = {
            image = "iron.png",
        }
    },

    ["goldbar"] = {
        label = "Кюлче злато",
        weight = 7000,
        stack = true,
        close = true,
        description = "Блести яко, а?",
        client = {
            image = "goldbar.png",
        }
    },

    ["certificate"] = {
        label = "Сертификат",
        weight = 0,
        stack = true,
        close = true,
        description = "Документ за доказателство.",
        client = {
            image = "certificate.png",
        }
    },

    ["police_stormram"] = {
        label = "Полицейски таран",
        weight = 18000,
        stack = true,
        close = true,
        description = "Полицейски таран"
    },

    ["firework1"] = {
        label = "2Brothers",
        weight = 1000,
        stack = true,
        close = true,
        description = "Фойерверки",
        client = {
            image = "firework1.png",
        }
    },

    ["whiskey"] = {
        label = "Уиски",
        weight = 500,
        stack = true,
        close = true,
        description = "Ще ти се обадя в 4 часа през нощта.",
        client = {
			status = { thirst = 100000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_whiskey_bottle`, pos = vec3(0.01, -0.03, -0.15), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Въх то хитва тва уе',
            image = "whiskey.png"
		}
    },

    ["copper"] = {
        label = "Мед",
        weight = 50,
        stack = true,
        close = false,
        description = "Парче метал което може да ви послужи за нещо",
        client = {
            image = "copper.png",
        }
    },

    ["screwdriverset"] = {
        label = "Комплект отвертки",
        weight = 1000,
        stack = true,
        close = false,
        description = "Комплект отвертки",
        client = {
            image = "screwdriverset.png",
        }
    },

    ["small_tv"] = {
        label = "Малък телевизор",
        weight = 30000,
        stack = false,
        close = true,
        description = "С тоз телевизор няма да ма плашиш.",
        client = {
            image = "placeholder.png",
        }
    },

    ["beer"] = {
        label = "Бира",
        weight = 330,
        stack = true,
        close = true,
        description = "Мъжете знаят защо ;)",
        client = {
			status = { thirst = 100000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_beer_bottle`, pos = vec3(0.01, 0.01, -0.09), rot = vec3(0.0, 0.0, -180.5) },
			usetime = 2500,
			notification = 'Няма нищо по-хубаво от студена бира.',
            image = "beer.png"
		}
    },

    
    ["grape"] = {
        label = "Грозде",
        weight = 100,
        stack = true,
        close = false,
        description = "Ммммм, вкусно!",
        client = {
            status = { hunger = 100000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			notification = 'Малко бие на меча кръв.',
            image = "grape.png",
        }
    },

    ["driver_license"] = {
        label = "Шофьорска книжка",
        weight = 0,
        stack = false,
        close = false,
        description = "Може да ти е от полза при проверка ;)",
        client = {
            image = "driver_license.png",
        }
    },

    ["harness"] = {
        label = "Състезателен колан",
        weight = 1000,
        stack = false,
        close = true,
        description = "Издръжлива многоточкова система за предпазни колани, проектирана за високоскоростни състезания. Осигурява стабилно задържане на водача при остри завои, дрифтове или сблъсъци. Незаменимо за безопасността при изпробване на възможностите на вашето превозно средство до краен предел.",
        client = {
            image = "harness.png",
        }
    },

    ["markedbills"] = {
        label = "Маркирани пари",
        weight = 1000,
        stack = false,
        close = true,
        description = "Кинти?",
        client = {
            image = "markedbills.png",
        }
    },

    ["jerry_can"] = {
        label = "Бутилка с гориво 20L",
        weight = 20000,
        stack = true,
        close = true,
        description = "Внимавай къде сипваш, лесно запалимо е!",
        client = {
            image = "jerry_can.png",
        }
    },

    ["drill"] = {
        label = "Дрелка",
        weight = 20000,
        stack = true,
        close = false,
        description = "Яката работа",
        client = {
            image = "drill.png",
        }
    },

    ["sandwich"] = {
        label = "Сандвич",
        weight = 200,
        stack = true,
        close = true,
        description = "Вкусничко",
        client = {
            image = "sandwich.png",
        }
    },

    ["cryptostick"] = {
        label = "Крипто флашка",
        weight = 200,
        stack = false,
        close = true,
        description = "Защо някой би купил валута, която не съществува... Колко ли ще издържи..?",
        client = {
            image = "cryptostick.png",
        }
    },

    ["dendrogyra_coral"] = {
        label = "Dendrogyra",
        weight = 1000,
        stack = true,
        close = true,
        description = "Вид корал",
        client = {
            image = "dendrogyra_coral.png",
        }
    },

    ["glass"] = {
        label = "Стъкло",
        weight = 100,
        stack = true,
        close = false,
        description = "Внимавай да не се порежеш!",
        client = {
            image = "glass.png",
        }
    },

    ["glass_pane"] = {
        label = "Парчета стъкло",
        weight = 100,
        stack = true,
        close = false,
        description = "Плоско парче стъкло.",
        client = {
            image = "glass_pane.png",
        }
    },

    ["weed_brick"] = {
        label = "Пакет трева",
        weight = 1000,
        stack = true,
        close = true,
        description = "Кило чубрица",
        client = {
            image = "weed_brick.png",
        }
    },

    ["meth"] = {
        label = "Кристали",
        weight = 100,
        stack = true,
        close = true,
        description = "Против стрес",
        client = {
            image = "meth.png",
        }
    },

    ["diamond_ring"] = {
        label = "Диамантен пръстен",
        weight = 1500,
        stack = true,
        close = true,
        description = "За жената на живота ти.",
        client = {
            image = "diamond_ring.png",
        }
    },

    ["10kgoldchain"] = {
        label = "10 каратов златен ланец",
        weight = 2000,
        stack = true,
        close = true,
        description = "Много тегав гъзарски ланец.",
        client = {
            image = "10kgoldchain.png",
        }
    },

    ["lawyerpass"] = {
        label = "Адвокадска карта",
        weight = 0,
        stack = false,
        close = false,
        description = "Документ само за адвокати.",
        client = {
            image = "lawyerpass.png",
        }
    },

    ["cokebaggy"] = {
        label = "Пакет кокаин",
        weight = 0,
        stack = true,
        close = true,
        description = "Прашно брашно",
        client = {
            image = "cokebaggy.png",
        }
    },

    ["firework4"] = {
        label = "Weeping Willow",
        weight = 1000,
        stack = true,
        close = true,
        description = "Фойерверки",
        client = {
            image = "firework4.png",
        }
    },

    ["water_bottle"] = {
        label = "Шише вода",
        weight = 500,
        stack = true,
        close = true,
        description = "За жадните.",
        client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
			usetime = 2500,
			cancel = true,
			notification = 'Ти пийна освежаваща водичка.'
		}
    },

    

    ['rc_monster'] = {
        label = "RC Monster",
        weight = 1500,
        stack = false,
        close = true,
        description = "RC car in 4x4 type",
        client = {
            image = "rc_monster.png",
        }
    },

    ['rc_ruiner'] = {
        label = "RC Ruiner",
        weight = 1500,
        stack = false,
        close = true,
        description = "RC car in 4x4 type",
        client = {
            image = "rc_ruiner.png",
        }
    },

    ['rc_sultanrs'] = {
        label = "RC Sultan RS",
        weight = 1500,
        stack = false,
        close = true,
        description = "RC car in 4x4 type",
        client = {
            image = "rc_sultanrs.png",
        }
    },

    ['rc_bandito'] = {
        label = "RC Bandito",
        weight = 1500,
        stack = false,
        close = true,
        description = "RC car in 4x4 type",
        client = {
            image = "rc_bandito.png",
        }
    },

    ['rc_bandito_offroad'] = {
        label = "RC Bandito Offroad",
        weight = 1500,
        stack = false,
        close = true,
        description = "RC car in 4x4 type",
        client = {
            image = "rc_bandito_offroad.png",
        }
    },

    ['rc_bandito_trophy'] = {
        label = "RC Bandito Trophy",
        weight = 1500,
        stack = false,
        close = true,
        description = "RC car in 4x4 type",
        client = {
            image = "rc_bandito_trophy.png",
        }
    },

    ['rc_bandito_gang'] = {
        label = "RC Bandito Gang",
        weight = 1500,
        stack = false,
        close = true,
        description = "RC car in 4x4 type",
        client = {
            image = "rc_bandito_gang.png",
        }
    },

    ['rc_bandito_big'] = {
        label = "RC Bandito Big",
        weight = 1500,
        stack = false,
        close = true,
        description = "RC car in 4x4 type",
        client = {
            image = "rc_bandito_big.png",
        }
    },

    ['rc_bandito_midnight'] = {
        label = "RC Bandito Midnight",
        weight = 1500,
        stack = false,
        close = true,
        description = "RC car in 4x4 type",
        client = {
            image = "rc_bandito_midnight.png",
        }
    },

    ['rc_advancedcamera'] = {
        label = "Advanced Camera Extension",
        weight = 500,
        stack = false,
        close = false,
        description = "Night vision plugin for RC car",
        client = {
            image = "rc_advancedcamera.png",
        }
    },

    ['rc_nitrous'] = {
        label = "Nitrous Extension",
        weight = 500,
        stack = false,
        close = false,
        description = "Nitrous plugin for RC car",
        client = {
            image = "rc_nitrous.png",
        }
    },

    ['rc_battery'] = {
        label = "Battery Extension",
        weight = 500,
        stack = false,
        close = false,
        description = "Battery plugin for RC car",
        client = {
            image = "rc_battery.png",
        }
    },

    ['rc_bomb'] = {
        label = "Bomb Extension",
        weight = 500,
        stack = false,
        close = false,
        description = "Bomb plugin for RC car",
        client = {
            image = "rc_bomb.png",
        }
    },

    ['rc_jump'] = {
        label = "Jump Extension",
        weight = 500,
        stack = false,
        close = false,
        description = "Jump plugin for RC car",
        client = {
            image = "rc_jump.png",
        }
    },

    ['rc_identifier'] = {
        label = "Scan Identifier Extension",
        weight = 500,
        stack = false,
        close = false,
        description = "Scan identifier plugin for RC car",
        client = {
            image = "rc_identifier.png",
        }
    },

    ['rc_teaser'] = {
        label = "Teaser Extension",
        weight = 500,
        stack = false,
        close = false,
        description = "Teaser plugin for RC car",
        client = {
            image = "rc_teaser.png",
        }
    },

    --[[
    ['copper'] = {
        label = "Мед",
        weight = 100,
        stack = false,
        close = false,
        description = "Nice piece of metal that you can probably use for something",
        client = {
            image = "copper.png",
        }
    },

    ['iron'] = {
        label = "Желязо",
        weight = 100,
        stack = false,
        close = false,
        description = "Handy piece of metal that you can probably use for something",
        client = {
            image = "iron.png",
        }
    },
    ]]

    ['silver'] = {
        label = "Сребро",
        weight = 100,
        stack = true,
        close = false,
        description = "Handy piece of metal that you can probably use for something",
        client = {
            image = "silver.png",
        }
    },

    ['emerald'] = {
        label = "Емералд",
        weight = 100,
        stack = true,
        close = false,
        description = "Handy piece of metal that you can probably use for something",
        client = {
            image = "emerald.png",
        }
    },

    ['screw'] = {
        label = "Винт",
        weight = 100,
        stack = true,
        close = false,
        description = "Handy piece of metal that you can probably use for something",
        client = {
            image = "screw.png",
        }
    },


    ["lighter"] = {
        label = "Запалка",
        weight = 0,
        stack = true,
        close = true,
        description = "Внимавай да не запалиш къщата!",
        client = {
            image = "lighter.png",
        }
    },

    ["coke_brick"] = {
        label = "Пакет кокаин",
        weight = 1000,
        stack = false,
        close = true,
        description = "Пакет пудра захар",
        client = {
            image = "coke_brick.png",
        }
    },

    ["heavyarmor"] = {
        label = "Военна бронежилетка",
        weight = 5000,
        stack = true,
        close = true,
        description = "Тежка бронежилетка",
        client = {
            image = "armor.png",
        }
    },

    ["gatecrack"] = {
        label = "Gatecrack",
        weight = 0,
        stack = true,
        close = true,
        description = "Устройство за отключване на врати",
        client = {
            image = "usb_device.png",
        }
    },

    ["security_card_01"] = {
        label = "Карта за сигурност A",
        weight = 0,
        stack = true,
        close = true,
        description = "Охранителна карта... Чудя се за какво ли е?",
        client = {
            image = "security_card_01.png",
        }
    },

    ["nitrous"] = {
        label = "Нитро",
        weight = 1000,
        stack = true,
        close = true,
        description = "Газ до ламарината.",
        client = {
            image = "nitrous.png",
        }
    },

    ["moneybag"] = {
        label = "Чанта с пари",
        weight = 0,
        stack = false,
        close = true,
        description = "Торба с пари",
        client = {
            image = "moneybag.png",
        }
    },

    ["weed_skunk"] = {
        label = "Skunk 2g",
        weight = 200,
        stack = true,
        close = false,
        description = "Грам Skunk",
        client = {
            image = "weed_baggy.png",
        }
    },

    ["security_card_02"] = {
        label = "Карта за сигурност B",
        weight = 0,
        stack = true,
        close = true,
        description = "Охранителна карта... Чудя се за какво ли служи.",
        client = {
            image = "security_card_02.png",
        }
    },

    ["coffee"] = {
        label = "Кафе",
        weight = 200,
        stack = true,
        close = true,
        description = "Да се събудиш.",
        client = {
            image = "coffee.png",
        }
    },

    ["plastic"] = {
        label = "Пластмаса",
        weight = 100,
        stack = true,
        close = false,
        description = "РЕЦЕКЛИРАЙ! - Грета Тунберг 2019",
        client = {
            image = "plastic.png",
        }
    },

    ["casinochips"] = {
        label = "Казино чипове",
        weight = 0,
        stack = true,
        close = false,
        description = "Казино чипове",
        client = {
            image = "casinochips.png",
        }
    },

    ["rubber"] = {
        label = "Гума",
        weight = 50,
        stack = true,
        close = false,
        description = "Не тази гумичка която си мислиш.",
        client = {
            image = "rubber.png",
        }
    },

    ["iphone"] = {
        label = "Телефон",
        weight = 1000,
        stack = true,
        close = true,
        description = "Да звъниш на мама.",
        client = {
            image = "iphone.png",
        }
    },

    ["toaster"] = {
        label = "Тостер",
        weight = 18000,
        stack = false,
        close = true,
        description = "Да си печещ.",
        client = {
            image = "placeholder.png",
        }
    },

    ["visa"] = {
        label = "Дебитна карта",
        weight = 0,
        stack = false,
        close = false,
        description = "Ходи да си теглиш пари.",
        client = {
            image = "visa.png",
        }
    },

    ["weed_amnesia_seed"] = {
        label = "Семка",
        weight = 0,
        stack = true,
        close = true,
        description = "Семка Amnesia"
    },

    ["microwave"] = {
        label = "Микровълнова",
        weight = 46000,
        stack = false,
        close = true,
        description = "Да не ядеш студена храна.",
        client = {
            image = "placeholder.png",
        }
    },

    ["weed_white-widow"] = {
        label = "White Widow 2g",
        weight = 200,
        stack = true,
        close = false,
        description = "Грам White Widow"
    },

    ["painkillers"] = {
        label = "Болкоуспокояващи",
        weight = 0,
        stack = true,
        close = true,
        description = "За леки наболки.",
        client = {
            image = "painkillers.png",
        }
    },

    ["radioscanner"] = {
        label = "Скенер",
        weight = 1000,
        stack = true,
        close = true,
        description = "С това можеш да получаваш полицейски сигнали. Не е обаче 100% ефективно.",
        client = {
            image = "radioscanner.png",
        }
    },

    -- Addon Items

    -- vfs-radio
    ['radio_battery'] = {
        label = 'Радио батерия',
        description = 'Да си ги менкаш.',
        weight = 1000,
        stack = true,
        allowArmed = true
    },

    ['radio_broken'] = {
        label = 'Намокрено радио',
        description = 'Вода и елекроника не вървят ръка за ръка.',
        weight = 500,
        stack = false,
        allowArmed = true
    },

    ['dry_rice'] = {
        label = 'Ориз',
        description = 'Може да ти помогне с подсушаването.',
        weight = 2000,
        stack = false,
        allowArmed = true,
        client = {
            anim = {
                dict = 'anim@amb@business@weed@weed_inspecting_high_dry@',
                clip = 'weed_inspecting_high_base_inspector'
            },
            disable = {
                combat = true,
                car = true
            },
            usetime = 20000,
            cancel = true
        }
    },
    -- 

    -- tk_mdt
    ["pol_mdt"] = {
        label = "Полицейски таблет",
        weight = 200,
        stack = true,
        close = true,
    },

    ["ems_mdt"] = {
        label = "Медицински таблет",
        weight = 200,
        stack = true,
        close = true,
    },

    ["citizen_mdt"] = {
        label = "Градски регистър",
        weight = 200,
        stack = true,
        close = true,
    },
    -- 

    -- tk_jail
    ["ankle_monitor"] = {
        label = "Устройство за глезена",
        weight = 500,
        stack = true,
        close = true,
    },

    ["power_saw"] = {
        label = "Резачка",
        weight = 5000,
        stack = true,
        close = true,
    },

    ["prisunflower"] = {
        label = "Цвете",
        weight = 50,
        stack = true,
        close = false,
    },

    ["prisunflower_seed"] = {
        label = "Семе от цвете",
        weight = 10,
        stack = true,
        close = true,
    },

    ["watering_can"] = {
        label = "Лейка",
        weight = 2500,
        stack = true,
        close = false,
    },

    ["jail_chemicals"] = {
        label = "Химикали",
        weight = 10,
        stack = true,
        close = false,
    },

    ["slammer"] = {
        label = "Slammer",
        weight = 10,
        stack = true,
        close = false,
    },

    ["jail_lab_tools"] = {
        label = "Екипировка за лабораториа",
        weight = 100,
        stack = true,
        close = false,
    },

    ["jail_cigarette"] = {
        label = "Цигари",
        weight = 10,
        stack = true,
        close = false,
    },

    ["jail_lighter"] = {
        label = "Ръчно направена запалка",
        weight = 50,
        stack = true,
        close = true,
    },

    ["jail_explosive"] = {
        label = "Експлозив",
        weight = 500,
        stack = true,
        close = true,
    },

    ["plastic_knife"] = {
        label = "Пластмасов нож",
        weight = 5,
        stack = true,
        close = false,
    },

    ["plastic_spoon"] = {
        label = "Пластмасова лъжица",
        weight = 5,
        stack = true,
        close = false,
    },

    ["plastic_fork"] = {
        label = "Пластмасова вилица",
        weight = 5,
        stack = true,
        close = false,
    },

    ["sharpened_plastic_knife"] = {
        label = "Наострен пластмасов нож",
        weight = 5,
        stack = true,
        close = true,
    },

    ["sharpened_plastic_spoon"] = {
        label = "Наострена пластмасова лъжица",
        weight = 5,
        stack = true,
        close = true,
    },

    ["sharpened_plastic_fork"] = {
        label = "Наострена пластмасова вилица",
        weight = 5,
        stack = true,
        close = true,
    },

    ["freedom_chip"] = {
        label = "A32 чип за свобода",
        weight = 10,
        stack = true,
        close = true,
    },

    ["fence_cutters"] = {
        label = "Ножици за тел",
        weight = 1000,
        stack = true,
        close = true,
    },

    ["jail_shovel"] = {
        label = "Ръчно направена лопата",
        weight = 3000,
        stack = true,
        close = true,
    },

    ["jail_security_card"] = {
        label = "Карта за пропуск в затвора",
        weight = 50,
        stack = true,
        close = false,
    },

    ["battery"] = {
        label = "Батерия",
        weight = 250,
        stack = true,
        close = false,
    },

    --[[
    ["metal_scrap"] = {
        label = "Метален скрап3",
        weight = 10,
        stack = true,
        close = false,
    },
    ]]

    ["electronic_scrap"] = {
        label = "Неисправна електроника",
        weight = 10,
        stack = true,
        close = false,
    },

    ["plastic_scrap"] = {
        label = "Пластмасов скап",
        weight = 10,
        stack = true,
        close = false,
    },

    ["tape"] = {
        label = "Тиксо",
        weight = 10,
        stack = true,
        close = false,
    },

    ["electric_cable"] = {
        label = "Кабел",
        weight = 10,
        stack = true,
        close = false,
    },

    ["metal_pipe"] = {
        label = "Метална тръба",
        weight = 10,
        stack = true,
        close = false,
    },

    ["tin_foil"] = {
        label = "Станиол",
        weight = 10,
        stack = true,
        close = false,
    },

    ["gunpowder"] = {
        label = "Барут",
        weight = 10,
        stack = true,
        close = false,
    },

    ["prison_mdt"] = {
        label = "Затворнически таблет",
        weight = 100,
        stack = true,
        close = true,
    },

    ["ifak"] = {
        label = "IFAK",
        weight = 50,
        stack = true,
        close = true,
    },
    -- 

    -- bbv-nos
    ["nos_system"] = {
        label = "Нитро система",
        weight = 5500,
        stack = false,
        close = true,
    },

    ["nos_display"] = {
        label = "Нитро екран",
        weight = 1000,
        stack = false,
        close = true,
    },

    ["nos_controller"] = {
        label = "Дистанционно за нитро",
        weight = 1000,
        stack = false,
        close = true,
    },

    ["nos_remover"] = {
        label = "Система за премахване на NOS",
        weight = 1000,
        stack = false,
        close = true,
    },

    ["nos_bottle_large"] = {
        label = "Голяма нитро бyтилка",
        weight = 10500,
        stack = false,
        close = true,
        client = {
            image = "nos_bottle.png"
        }
    },

    ["nos_bottle_medium"] = {
        label = "Средна нитро бyтилка",
        weight = 5500,
        stack = false,
        close = true,
        client = {
            image = "nos_bottle.png"
        }
    },

    ["nos_bottle_small"] = {
        label = "Малка нитро бyтилка",
        weight = 2500,
        stack = false,
        close = true,
        client = {
            image = "nos_bottle.png"
        }
    },
    -- 

    -- bbv-neons
    ["neonkit"] = {
        label = "Система за неон",
        weight = 5500,
        stack = false,
        close = true,
        description = "Neon Kit!",
        client = {
            image = "neonkit.png",
        }
    },
    ["neoncontroller"] = {
        label = "Дистанционно за неон",
        weight = 5500,
        stack = false,
        close = true,
        description = "Neon Controller !",
        client = {
            image = "neoncontroller.png",
        }
    },
    --

    -- messy-smoking
    ["ajoint"] = {
        label = "Джойнт",
        weight = 200,
    },

    ["acigar"] = {
        label = "Пура",
        weight = 200,
    },

    ["aciggy"] = {
        label = "Цигарка",
        weight = 200,
        client = {
            image = "acigarette.png"
        }
    },

    ["pack_cig"] = {
        label = "Пакет с цигари",
        description = "Не са много, но са от сърце!",
        weight = 200,
        client = {
            image = "packofcigarettes.png"
        }
    },
    -- 

    -- ro-policebadge
    ["police_badge"] = {
        label = "Полицейска значка",
        weight = 1000,
        description = "С тази значка се легитимираш."
    },
    -- 

    -- tgg-contracts
    ["contract"] = {
        label = "Договор за МПС",
        weight = 200,
        description = "За да прехвърлите колата на друг човек."
    },
    --

    -- rahe-boosting
    ['hackingdevice'] = {
        label = 'Хакерско устройство',
        weight = 0,
        description = 'Ще ви помогне с автоджамбаза.',
        client = {
            export = 'rahe-boosting.hackingdevice',
        }
    },
    ['gpshackingdevice'] = {
        label = 'GPS хак',
        weight = 0,
        description = 'Ако искате да спрете GPS-а на колата.',
        client = {
            export = 'rahe-boosting.gpshackingdevice',
        }
    },
    -- 

    -- qs-housing
    ['house_lockpick'] = {
        label = 'Шперц за къща',
        weight = 100,
    },
    -- 

    -- rahe-tablet
    ['app_tablet'] = {
        label = 'Таблет',
        weight = 0,
        description = 'Може да теглите работи.',
        stack = false,
        client = {
            export = 'rahe-tablet.tablet'
        }
    },

    ['usb_racing'] = {
        label = 'USB флашка',
        weight = 50,
        description = 'Флашка с приложение за състезаване.',
        stack = false,
        client = {
            export = 'rahe-tablet.usb_install'
        }
    },

    ['usb_boosting'] = {
        label = 'USB флашка',
        weight = 50,
        description = 'Флашка с приложение за кражба на коли.',
        stack = false,
        client = {
            export = 'rahe-tablet.usb_install'
        }
    },
    ['usb_trucking'] = {
        label = 'USB - Trucking',
        weight = 50,
        description = 'An USB stick with a trucking app installed.',
        stack = false,
        client = {
           export = 'rahe-tablet.usb_install',
        },
    },
    ["racing_chip"] = {
        label = "Racing Coin",
        weight = 1,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "racing_chip.png",
        }
    },
    
    --

    -- rahe-speakers
    ['speaker'] = {
        label = 'Тонколона',
        weight = 0,
        description = 'Да се чува яко.',
        consume = 0,
        server = {
            export = 'rahe-speakers.speaker'
        }
    },
    -- 

    -- k5_documents
    ['documents_folder'] = {
        label = 'Папка с документи',
        weight = 200
    },
    --

    -- kuz_diving
    ['kuz_divinggear'] = {
        label = 'Екипировка за гмуркане',
        weight = 3000,
        description = 'Нормална елипировка за гмуркане.'
    },

    ['kuz_divinggeargood'] = {
        label = 'Професионална екипировка за гмуркане',
        weight = 6000,
        description = 'За протата в гмуркането.'
    },

    ['kuz_silvercoin'] = {
        label = 'Сребърна монета',
        weight = 400,
        description = 'Охоо, якоо.',
        close = false
    },

    ['kuz_goldcoin'] = {
        label = 'Златна монета',
        weight = 500,
        description = 'Златото означава пари.',
        close = false
    },

    ['kuz_pearl'] = {
        label = 'Перла',
        weight = 250,
        description = 'Оп, късметлия.',
        close = false
    },

    ['kuz_rarecoin'] = {
        label = 'Рядка монета',
        weight = 700,
        description = 'Може да е от Титаник.',
        close = false,
        stack = false
    },

    ['kuz_plasmacutter'] = {
        label = 'Поялник',
        weight = 2500,
        description = 'Работи и под вода!',
        close = false,
        stack = false
    },

    ['kuz_merryweather'] = {
        label = 'Документи на Merryweather',
        weight = 1000,
        description = 'Куфар пълен с тайни.',
        close = false,
    },

    ['kuz_govdocs'] = {
        label = 'Документи',
        weight = 300,
        description = 'Правителствени документи!?',
        close = false,
    },

    ['kuz_jewelry'] = {
        label = 'Бижута',
        weight = 1000,
        description = 'Скъпичко.',
        close = false,
    },

    ['kuz_watch'] = {
        label = 'Скъп часовник',
        weight = 500,
        description = 'Може да струва доста..',
        close = false,
    },
    -- 

    -- lunar_fishing
    ['basic_rod'] = {
        label = 'Въдица',
        stack = false,
        weight = 250
    },

    ['graphite_rod'] = {
        label = 'Подобрена въдица',
        stack = false,
        weight = 350
    },

    ['titanium_rod'] = {
        label = 'Въдица за напреднали',
        stack = false,
        weight = 450
    },

    ['worms'] = {
        label = 'Червии',
        weight = 10
    },

    ['artificial_bait'] = {
        label = 'Примамка',
        weight = 30
    },

    ['anchovy'] = {
        label = 'Аншоа',
        weight = 200
    },

    ['grouper'] = {
        label = 'Групер',
        weight = 350
    },

    ['haddock'] = {
        label = 'Адок',
        weight = 500
    },

    ['mahi_mahi'] = {
        label = 'Махи Махи',
        weight = 350
    },

    ['piranha'] = {
        label = 'Пирания',
        weight = 150
    },

    ['red_snapper'] = {
        label = 'Червен скобар',
        weight = 250
    },

    ['salmon'] = {
        label = 'Сьомга',
        weight = 100
    },

    ['shark'] = {
        label = 'Акула',
        weight = 750
    },

    ['trout'] = {
        label = 'Пъстърва',
        weight = 750
    },

    ['tuna'] = {
        label = 'Риба Тон',
        weight = 1000
    },
    -- 

    -- cdn-fuel
    ['jerrycan'] = {
        label = 'Туба с бензин',
        weight = 15000,
        stack = false,
        description = 'Да си крадеш гориво.'
    },

    ['syphoningkit'] = {
        label = 'Комплект за гориво',
        weight = 5000,
        stack = false,
        description = 'Комплект, създаден за източване на бензин от превозни средства.'
    },
    -- 

    -- Vehicle Handler
    ["cleaningkit"] = {
        label = "Микрофибърна кърпа",
        weight = 250,
        stack = true,
        close = true,
        description = "Микрофибърна кърпа за почистване на вашият автомобил",
        client = {
            image = "cleaningkit.png",
        },
        server = {
            export = 'vehiclehandler.cleaningkit'
        }
    },

    ["tirekit"] = {
        label = "Комплект за гуми",
        weight = 250,
        stack = true,
        close = true,
        description = "Комплект за поправка на спукани гуми",
        client = {
            image = "tirekit.png",
        },
        server = {
            export = 'vehiclehandler.tirekit'
        }
    },

    ["repairkit"] = {
        label = "Комплект за поправка",
        weight = 2500,
        stack = true,
        close = true,
        description = "Комплект за поправка на коли",
        client = {
            image = "repairkit.png",
        },
        server = {
            export = 'vehiclehandler.repairkit',
        }
    },

    ["advancedrepairkit"] = {
        label = "Скъп комплект за поправка",
        weight = 5000,
        stack = true,
        close = true,
        description = "Скъп комплект за поправка на коли",
        client = {
            image = "advancedrepairkit.png",
        },
        server = {
            export = 'vehiclehandler.advancedrepairkit',
        }
    },
    -- m-hunting
    ["pigeonmeat"] = {
        label = "Месо от гълъб",
        weight = 1000,
        stack = true,
        close = true,
        description = "Вкусно гълъбово месо за вашите кулинарни приключения.",
    },
    ["pigeonfeather"] = {
        label = "Перо от гълъб",
        weight = 1000,
        stack = true,
        close = true,
        description = "Меко и леко перце от гълъб.",
    },
    ["crowmeat"] = {
        label = "Месо от гарван",
        weight = 1000,
        stack = true,
        close = true,
        description = "Вкусно месо от врана, идеално за смели чревоугодници.",
    },
    ["crowfeather"] = {
        label = "Перо от гарван",
        weight = 1000,
        stack = true,
        close = true,
        description = "Елегантно и тъмно перо от врана.",
    },
    ["seagullmeat"] = {
        label = "Месо от чайка",
        weight = 1000,
        stack = true,
        close = true,
        description = "Пикантно месо от чайка, деликатес сред рибарите.",
    },
    ["seagullfeather"] = {
        label = "Перо на чайка",
        weight = 1000,
        stack = true,
        close = true,
        description = "Грациозно и леко перце от чайка.",
    },
    ["cormorantmeat"] = {
        label = "Месо от гъска",
        weight = 1000,
        stack = true,
        close = true,
        description = "Месесто месо от корморан, рядка находка за любителите на приключенията.",
    },
    ["cormorantbeak"] = {
        label = "Клюн от гъска",
        weight = 1000,
        stack = true,
        close = true,
        description = "Здрав и заострен клюн от корморан.",
    },
    ["deermeat"] = {
        label = "Еленово месо",
        weight = 1000,
        stack = true,
        close = true,
        description = "Сочно еленско месо, любимо на ловците.",
    },
    ["deerhorn"] = {
        label = "Еленски рог",
        weight = 1000,
        stack = true,
        close = true,
        description = "Величествен рог от елен, ценен заради красотата си.",
    },
    ["rabbitmeat"] = {
        label = "Заешко месо",
        weight = 1000,
        stack = true,
        close = true,
        description = "Крехко заешко месо, идеално за яхнии и печено.",
    },
    ["rabbitskin"] = {
        label = "Заешка кожа",
        weight = 1000,
        stack = true,
        close = true,
        description = "Мека и еластична кожа от заек, идеална за изработка.",
    },
    ["ratmeat"] = {
        label = "Месо от плъх",
        weight = 1000,
        stack = true,
        close = true,
        description = "Годно за консумация месо от плъхове.",
    },
    ["pigmeat"] = {
        label = "Месо от прасе",
        weight = 1000,
        stack = true,
        close = true,
        description = "Сочно свинско месо, основна част от много обилни ястия.",
    },
    ["pigskin"] = {
        label = "Свинска кожа",
        weight = 1000,
        stack = true,
        close = true,
        description = "Дебела и издръжлива свинска кожа, полезна за изработка на кожени изделия.",
    },
    ["coyotemeat"] = {
        label = "Месо от койот",
        weight = 1000,
        stack = true,
        close = true,
        description = "Постно и дивечово месо от койот, предпочитано от любителите на дивата природа.",
    },
    ["coyoteskin"] = {
        label = "Кожа на койот",
        weight = 1000,
        stack = true,
        close = true,
        description = "Здрава и устойчива на атмосферни влияния кожа от койот, идеална за екипировка на открито.",
    },
    ["coguarmeat"] = {
        label = "Месо от пума",
        weight = 1000,
        stack = true,
        close = true,
        description = "Екзотично месо от пума, деликатес за любителите на приключенията.",
    },
    ["coguarskin"] = {
        label = "Кожа на пума",
        weight = 1000,
        stack = true,
        close = true,
        description = "Гъвкава кожа на пума, високо ценена в модната индустрия.",
    },
    ["boarmeat"] = {
        label = "Месо от глиган",
        weight = 1000,
        stack = true,
        close = true,
        description = "Сърдечно месо от глиган, популярен избор сред ловци и готвачи.",
    },
    ["boarskin"] = {
        label = "Глиганска кожа",
        weight = 1000,
        stack = true,
        close = true,
        description = "Твърда кожа от глиган, отлична за изработка на здрави стоки.",
    },
    ["snakemeat"] = {
        label = "Месо от змия",
        weight = 1000,
        stack = true,
        close = true,
        description = "Пикантно змийско месо, деликатес в някои култури.",
    },
    ["boarhorn"] = {
        label = "Глигански рог",
        weight = 1000,
        stack = true,
        close = true,
        description = "Голям и ефектен рог от глиган.",
    },
    ["snakeskin"] = {
        label = "Кожа от змия",
        weight = 1000,
        stack = true,
        close = true,
        description = "Гладка и шарена змийска кожа, използвана за различни занаяти.",
    },
    ["hawkmeat"] = {
        label = "Месо от ястреб",
        weight = 1000,
        stack = true,
        close = true,
        description = "Постно и дивечово месо от ястреб, рядък деликатес сред ловците.",
    },
    ["hawkskin"] = {
        label = "Кожа от ястреб",
        weight = 1000,
        stack = true,
        close = true,
        description = "Красива кожа на ястреб, ценена заради уникалните си белези.",
    },
    ["hawkpeak"] = {
        label = "Перо от ястреб",
        weight = 1000,
        stack = true,
        close = true,
        description = "Величествено перо от върха на ястреб, символ на свободата.",
    },
    -- 

    -- codem-minerjob
    ['advanced_pickaxe'] = {
        name = 'advanced_pickaxe',
        label = 'Подобрена кирка',
        weight = 1000,
        description = 'за яките миньори'
    },
    ['blackpowder'] = {
        name = 'blackpowder',
        label = 'Черен прах',
        weight = 100,
        description = 'Нищо се не види.'
    },
    ['coal'] = {
        name = 'coal',
        label = 'Въглища',
        weight = 100,
        description = 'Въглища'
    },
    ['concrete'] = {
        name = 'concrete',
        label = 'Бетон',
        weight = 100,
        description = 'Бетон',
    },
    ['concrete_package'] = {
        name = 'concrete_package',
        label = 'Пакет Бетон',
        weight = 500,
        description = 'Бетон',
        client = {
            image = "concrete.png",
        }
    },
    ['copper_ingot'] = {
        name = 'copper_ingot',
        label = 'Медно кюлче',
        weight = 100,
        description = 'Медно кюлче'
    },
    ['copper_ore'] = {
        name = 'copper_ore',
        label = 'Медна руда',
        weight = 100,
        description = 'Медна руда'
    },
    ['diamond_ingot'] = {
        name = 'diamond_ingot',
        label = 'Диамант',
        weight = 100,
        description = 'Диамант'
    },
    ['diamond_ore'] = {
        name = 'diamond_ore',
        label = 'Диамантена руда',
        weight = 100,
        description = 'Диамантена руда'
    },
    ['glass_mold'] = {
        name = 'glass_mold',
        label = 'Отливка за стъкло',
        weight = 100,
        description = 'Отливка за стъкло'
    },
    ['goldingot'] = {
        name = 'goldingot',
        label = 'Златно кюлче',
        weight = 100,
        description = 'Ихааа'
    },
    ['gold_ore'] = {
        name = 'gold_ore',
        label = 'Златна руда',
        weight = 100,
        description = 'Златна руда'
    },
    ['ingot_mold'] = {
        name = 'ingot_mold',
        label = 'Отливка за руда',
        weight = 500,
        description = 'нещо интересно'
    },
    ['iron_ingot'] = {
        name = 'iron_ingot',
        label = 'Железно кюлче',
        weight = 100,
        description = 'Железно кюлче'
    },
    ['iron_ore'] = {
        name = 'iron_ore',
        label = 'Железна руда',
        weight = 100,
        description = 'Железна руда'
    },
    ['limestone'] = {
        name = 'limestone',
        label = 'Варовик',
        weight = 100,
        description = 'Варовик'
    },
    ['normal_pickaxe'] = {
        name = 'normal_pickaxe',
        label = 'Нормална кирка',
        weight = 1000,
        description = 'Нормална кирка'
    },
    ['professional_pickaxe'] = {
        name = 'professional_pickaxe',
        label = 'Професионална кирка',
        weight = 1000,
        description = 'За напреднали.'
    },
    ['rock'] = {
        name = 'rock',
        label = 'Камък',
        weight = 100,
        description = 'Не ги хвърляй по хората!'
    },
    ['sandstone'] = {
        name = 'sandstone',
        label = 'Пясъчно камъче',
        weight = 100,
        description = 'Пясъчно камъче'
    },
    ['special_water'] = {
        name = 'special_water',
        label = 'Специална вода',
        weight = 500,
        description = 'Да миеш с нея.'
    },
    ['sticky_gel'] = {
        name = 'sticky_gel',
        label = 'Лепкав гел',
        weight = 100,
        description = 'Да лепне.'
    },
    ['sulfur'] = {
        name = 'sulfur',
        label = 'Сяра',
        weight = 100,
        description = 'Сяра'
    },
    -- rm truckk robbery

    
    ['bt_c4'] = {
        label = 'Small C4 (Bank Truck)',
        weight = 500,
        stack = true,
        close = true,
        consume = 0,
        description = 'Compact explosive for bank truck operations',
        client = {
            event = 'rm_banktruck:client:itemUsed',
        },
    },
    ['bt_hackdevice'] = {
        label = 'Hack Device (Bank Truck)',
        weight = 250,
        stack = true,
        close = true,
        consume = 0,
        description = 'Device for bypassing bank truck security',
        client = {
            event = 'rm_banktruck:client:itemUsed',
        },
    },
    ['bt_gastank'] = {
        label = 'Gas Tank (Bank Truck)',
        weight = 750,
        stack = true,
        close = true,
        consume = 0,
        description = 'Lethal gas that eliminates truck guards',
        client = {
            event = 'rm_banktruck:client:itemUsed',
        },
    },
    -- rm_vaultheist
    ['big_bomb'] = {
        label = 'Голяма бомба',
        weight = 160,
    },
    
    ['rope'] = {
        label = 'Въже',
        weight = 160,
    },

    ['hack_usb'] = {
        label = 'Хакерско USB',
        weight = 160,
    },
    -- 

    -- projectx-vangelicoheist
    ["glass_cutter"] = {
        label = "Резачки за стъкло",
        weight = 1000,
        stack = false,
        close = false,
        description = "Устройство за изрязване на стъкло",
        client = {
            image = "glass_cutter.png",
        }
    },

    ["giant_gem"] = {
        label = "Голям скъпоценен камък",
        weight = 2500,
        stack = false,
        close = false,
        description = "Голям скъпоценен камък",
        client = {
            image = "giant_gem.png",
        }
    },

    ["diamond_necklace"] = {
        label = "Диамантено колие",
        weight = 200,
        stack = true,
        close = false,
        description = "Диамантено колие",
        client = {
            image = "diamond_necklace.png",
        }
    },

    ["diamond_earring"] = {
        label = "Диамантени обеци",
        weight = 200,
        stack = true,
        close = false,
        description = "Диамантени обеци",
        client = {
            image = "diamond_earring.png",
        }
    },

    ["ruby_ring"] = {
        label = "Рубинен пръстен",
        weight = 200,
        stack = true,
        close = false,
        description = "Рубинен пръстен",
        client = {
            image = "ruby_ring.png",
        }
    },

    ["ruby_necklace"] = {
        label = "Ruby Necklace",
        weight = 200,
        stack = true,
        close = false,
        description = "Рубинено колие",
        client = {
            image = "ruby_necklace.png",
        }
    },

    ["ruby_earring"] = {
        label = "Рубинени обеци",
        weight = 200,
        stack = true,
        close = false,
        description = "Рубинени обеци",
        client = {
            image = "ruby_earring.png",
        }
    },

    ["sapphire_ring"] = {
        label = "Сапфирен пръстен",
        weight = 200,
        stack = true,
        close = false,
        description = "Сапфирен пръстен",
        client = {
            image = "sapphire_ring.png",
        }
    },

    ["sapphire_necklace"] = {
        label = "Сапфирено колие",
        weight = 200,
        stack = true,
        close = false,
        description = "Сапфирено колие",
        client = {
            image = "sapphire_necklace.png",
        }
    },

    ["sapphire_earring"] = {
        label = "Сапфирени обеци",
        weight = 200,
        stack = true,
        close = false,
        description = "Сапфирени обеци",
        client = {
            image = "sapphire_earring.png",
        }
    },

    ["emerald_ring"] = {
        label = "Пръстен от емералд",
        weight = 200,
        stack = true,
        close = false,
        description = "Пръстен от емералд",
        client = {
            image = "emerald_ring.png",
        }
    },

    ["emerald_necklace"] = {
        label = "Колие от емералд",
        weight = 200,
        stack = true,
        close = false,
        description = "Колие от емералд",
        client = {
            image = "emerald_necklace.png",
        }
    },

    ["emerald_earring"] = {
        label = "Обеци от емералд",
        weight = 200,
        stack = true,
        close = false,
        description = "Обеци от емералд",
        client = {
            image = "emerald_earring.png",
        }
    },

    ["pliers"] = {
        label = "Клещи",
        weight = 125,
        stack = false,
        close = false,
        description = "Клещи",
        client = {
            image = "pliers.png",
        }
    },
    
    ["x_device"] = {
        label = "Хакерско Устройство",
        weight = 125,
        stack = false,
        close = false,
        description = "?????????",
        client = {
            image = "x_device.png",
        }
    },
    ["x_phone"] = {
        label = "Странен Телефон",
        weight = 125,
        stack = false,
        close = false,
        description = "?????????",
        client = {
            image = "x_phone.png",
        }
    },

    ["x_smoke"] = {
        label = "Димка",
        weight = 525,
        stack = false,
        close = false,
        description = "?????????",
        client = {
            image = "x_smoke.png",
        }
    },

    ["bag"] = {
        label = "Чанта",
        weight = 250,
        stack = false,
        close = false,
        description = "Спортен сак, и още нещо?",
        client = {
            image = "bag.png",
        }
    },
    

    -- rcore_beerpong
    ['cups'] = {
        label = 'Чаши',
        weight = 250,
        close = true,
        consume = 0,
        server = {
            export = 'rcore_beerpong.cups',
        },
    },
    -- 

    -- 2b-clothingbag
    ['clothing_bag'] = {
        label = 'Чанта с дрехи',
        weight = 10000,
    },
    -- 

    ["phone_charger"] = {
        label = "Зарядно",
        weight = 200,
        stack = false,
        close = true,
        consume = 1,
        description = "Зарядно за телефон",
        client = {
            image = "phone_charger.png",
        }
    },

    ["liquid_sulfur"] = {
        label = "Течна сяра",
        weight = 500,
        stack = true,
        close = false,
        client = {
            image = "liquid_sulfur.png",
        }
    },

    ["drug_meth"] = {
        label = "Кристали",
        weight = 500,
        stack = true,
        close = false,
        client = {
            image = "drug_meth.png",
        }
    },

    ["cannabis"] = {
        label = "Канабис",
        weight = 500,
        stack = true,
        close = false,
        client = {
            image = "cannabis.png",
        }
    },

    ["oxygen"] = {
        label = "Кислород",
        weight = 500,
        stack = true,
        close = false,
        client = {
            image = "oxygen.png",
        }
    },

    ["cocaine"] = {
        label = "Cocaine",
        weight = 500,
        stack = true,
        close = false,
        client = {
            image = "cocaine.png",
        }
    },

    ["ice"] = {
        label = "Лед",
        weight = 500,
        stack = true,
        close = false,
        client = {
            image = "ice.png",
        }
    },

    ["sodium_hydroxide"] = {
        label = "Натриев хидроксид",
        weight = 500,
        stack = true,
        close = false,
        client = {
            image = "sodium_hydroxide.png",
        }
    },

    ["green_gelato_cannabis"] = {
        label = "Канабис",
        weight = 500,
        stack = true,
        close = false,
        client = {
            image = "green_gelato_cannabis.png",
        }
    },

    ["drink_sprite"] = {
        label = "Sprite",
        weight = 500,
        stack = true,
        close = false,
        client = {
            image = "drink_sprite.png",
        }
    },

    ["hydrogen"] = {
        label = "Водород",
        weight = 500,
        stack = true,
        close = false,
        client = {
            image = "hydrogen.png",
        }
    },

    ["red_sulfur"] = {
        label = "Червена сяра",
        weight = 500,
        stack = true,
        close = false,
        client = {
            image = "red_sulfur.png",
        }
    },

    ["pseudoefedrine"] = {
        label = "Псевдоефедрин",
        weight = 500,
        stack = true,
        close = false,
        client = {
            image = "pseudoefedrine.png",
        }
    },

    ["nitrogen"] = {
        label = "Азот",
        weight = 500,
        stack = true,
        close = false,
        client = {
            image = "nitrogen.png",
        }
    },

    ["drug_ecstasy"] = {
        label = "Екстази",
        weight = 500,
        stack = true,
        close = false,
        client = {
            image = "drug_ecstasy.png",
        }
    },

    ["jolly_ranchers"] = {
        label = "Jolly Ranchers",
        weight = 500,
        stack = true,
        close = false,
        client = {
            image = "jolly_ranchers.png",
        }
    },

    ["drug_lean"] = {
        label = "Лийн",
        weight = 500,
        stack = true,
        close = false,
        client = {
            image = "drug_lean.png",
        }
    },

    ["carbon"] = {
        label = "Карбон",
        weight = 500,
        stack = true,
        close = false,
        client = {
            image = "carbon.png",
        }
    },

    ["opium"] = {
        label = "Опиум",
        weight = 500,
        stack = true,
        close = false,
        client = {
            image = "opium.png",
        }
    },

    ["ammonium_nitrate"] = {
        label = "Амониев нитрат",
        weight = 500,
        stack = true,
        close = false,
        client = {
            image = "ammonium_nitrate.png",
        }
    },

    ["muriatic_acid"] = {
        label = "Муриатна киселина",
        weight = 500,
        stack = true,
        close = false,
        client = {
            image = "muriatic_acid.png",
        }
    },

    ["codeine"] = {
        label = "Кодеин",
        weight = 500,
        stack = true,
        close = false,
        client = {
            image = "codeine.png",
        }
    },

    ["drug_lsd"] = {
        label = "LSD",
        weight = 500,
        stack = true,
        close = false,
        client = {
            image = "drug_lsd.png",
        }
    },

    ["yogamat"] = {
        label = "Килимче за йога",
        weight = 500,
        stack = true,
        close = true,
        description = "Килимче за йога",
        client = {
            image = "yogamat.png",
        }
    },

    --DRUGS CREATOR ITEMS 


    -- Weed lv 4
    ["ogkushg"] = {
        label = "Трева",
        weight = 100,
        stack = true,
        close = false,
        description = "OG Kush",
        client = {
            image = "ogkushg.png",
        }
    },
    -- пакетирани тревички
    ["ogkushbag"] = {
        label = "Пакетирана трева",
        weight = 100,
        stack = true,
        close = false,
        description = "OG Weeed само за най-долните тревомани, не пафкай много че щи причернее!!!",
        client = {
            image = "ogkushbag.png",
        }
    },
    -- in [Kuz Diving] loot
    ["fentanyl"] = {
        label = "Пакет Фентанил",
        weight = 500,
        stack = true,
        close = false,
        client = {
            image = "fentanyl.png",
        }
    },
       -- Basic weed обработена
    -- Weed lv 4 обработена
    ["ogkushgg"] = {
        label = "Трева",
        weight = 100,
        stack = true,
        close = false,
        description = "OG Kush",
        client = {
            image = "grinded.png",
        }
    },
    -- Weed tools 
    ["grinder"] = {
        label = "Грайндер",
        weight = 100,
        stack = true,
        close = false,
        description = "Полезно нещо",
        client = {
            image = "grinder.png",
        }
    },
    ["scissors"] = {
        label = "Ножица",
        weight = 100,
        stack = true,
        close = false,
        description = "Не тичай с нея в ръце!",
        client = {
            image = "scissors.png",
        }
    },
    ["papersls"] = {
        label = "Листчета",
        weight = 100,
        stack = true,
        close = false,
        description = "Натурални!",
        client = {
            image = "papersls.png",
        }
    },
    ["jumpers"] = {
        label = "Пликчета",
        weight = 10,
        stack = true,
        close = false,
        description = "Празно пликче",
        client = {
            image = "jumpers.png",
        }
    },
    ["ogjoint"] = {
        label = "Цигарка",
        weight = 100,
        stack = true,
        close = false,
        description = "OG Kush",
        client = {
            image = "ogjoint.png",
        }
    },
    -- Гъбки неща 
    ["shrooms"] = {
        label = "Гъбки",
        weight = 100,
        stack = true,
        close = false,
        description = "Напомнят ми за тиймо.",
        client = {
            image = "shrooms.png",
        }
    },
    -- Хапченца 
    ["opiumm"] = {
        label = "Опиум",
        weight = 100,
        stack = true,
        close = false,
        client = {
            image = "opiumm.png",
        }
    },
    ["ephedrine"] = {
        label = "Псевдоефедрин",
        weight = 100,
        stack = true,
        close = false,
        client = {
            image = "ephedrine.png",
        }
    },
    ["aluminumoxide"] = {
        label = "Алуминиевоксид",
        weight = 100,
        stack = true,
        close = false,
        client = {
            image = "aluminumoxide.png",
        }
    },
    ["oxycotin"] = {
        label = "Оксикотин",
        weight = 100,
        stack = true,
        close = false,
        client = {
            image = "oxycotin.png",
        }
    },
    ["hydrochloricacid"] = {
        label = "Хидрохлорична Киселина",
        weight = 400,
        stack = true,
        close = false,
        client = {
            image = "hydrochloricacid.png",
        }
    },
    ["mpills"] = {
        label = "Екстази",
        weight = 100,
        stack = true,
        close = false,
        client = {
            image = "mpilss.png",
        }
    },
-- cocaine 
    ["acetone"] = {
        label = "Ацетон",
        weight = 100,
        stack = true,
        close = false,
        client = {
            image = "acetone.png",
        }
    },
    ["chemicals"] = {
        label = "Белина",
        weight = 100,
        stack = true,
        close = false,
        client = {
            image = "chemicals.png",
        }
    },
    ["ironoxide"] = {
        label = "Железен пероксид",
        weight = 100,
        stack = true,
        close = false,
        client = {
            image = "ironoxide.png",
        }
    },
    ["lithium"] = {
        label = "Хлор",
        weight = 100,
        stack = true,
        close = false,
        client = {
            image = "lithium.png",
        }
    },
    ["cocaine"] = {
        label = "Лист от кока.",
        weight = 100,
        stack = true,
        close = false,
        client = {
            image = "cocaine.png",
        }
    },
    ["cokebrick"] = {
        label = "Бяло на буца",
        weight = 100,
        stack = true,
        close = false,
        client = {
            image = "cokebrick.png",
        }
    },
    ["cocainebag"] = {
        label = "Кока",
        weight = 100,
        stack = true,
        close = false,
        description = "Точно един кантар брат ми!",
        client = {
            image = "cocainebag.png",
        }
    },
    ["ibuprofen"] = {
        label = "Ибупрофен",
        weight = 100,
        stack = true,
        close = false,
        client = {
            image = "ibuprofen.png",
        }
    },
    ["acid"] = {
        label = "Хлорна Киселина",
        weight = 100,
        stack = true,
        close = false,
        client = {
            image = "acid.png",
        }
    },
    ["aspirin"] = {
        label = "Аспирин",
        weight = 100,
        stack = true,
        close = false,
        client = {
            image = "aspirin.png",
        }
    },
    ["sscale"] = {
        label = "Везна",
        weight = 100,
        stack = true,
        close = false,
        client = {
            image = "sscale.png",
        }
    },
    ["shroom"] = {
        label = "Гъбка",
        weight = 100,
        stack = true,
        close = false,
        client = {
            image = "shroom.png",
        }
    },
    ["magicg"] = {
        label = "Магически гъби",
        weight = 100,
        stack = true,
        close = false,
        client = {
            image = "magicg.png",
        }
    },

    ["powerbank"] = {
        label = "Преносима батерия",
        weight = 200,
        stack = false,
        close = true,
        description = "Преносима батерия за телефон",
        client = {
            image = "powerbank.png",
        }
    },

    -- crafting неща 
    ["snsparts"] = {
        label = "Части",
        weight = 200,
        stack = true,
        close = true,
        description = "Част за нещо",
        client = {
            image = "pistolprint.png",
        }
    },

    ["pistolprint"] = {
        label = "Чертежи",
        weight = 50,
        stack = true,
        close = true,
        description = "Чертеж за нещо",
        client = {
            image = "pistolprint.png",
        }
    },

    ["smgprint"] = {
        label = "Чертежи",
        weight = 50,
        stack = true,
        close = true,
        description = "Чертеж за нещо",
        client = {
            image = "smgprint.png",
        }
    },

    ["rifleprint"] = {
        label = "Чертежи",
        weight = 50,
        stack = true,
        close = true,
        description = "Чертеж за нещо",
        client = {
            image = "rifleprint.png",
        }
    },

    ["heavyprint"] = {
        label = "Чертежи",
        weight = 200,
        stack = true,
        close = true,
        description = "Чертеж за нещо",
        client = {
            image = "heavyprint.png",
        }
    },

    ["kurkakola"] = {
        label = "Кола",
        weight = 500,
        stack = true,
        close = true,
        description = "За жадните",
        client = {
            image = "kurkakola.png",
        }
    },

    --drugs-recepti
    ["drugrecipe1"] = {
        label = "Записки",
        weight = 200,
        stack = false,
        close = true,
        description = "5x пликчета, 1x ножици, 5x OG Kush",
        client = {
            image = "drugrecipe.png",
        }
    },
    ["drugrecipe2"] = {
        label = "Записки",
        weight = 200,
        stack = false,
        close = true,
        description = "1x грайндер, 7x пакетирана OG Kush",
        client = {
            image = "drugrecipe.png",
        }
    },
    ["drugrecipe3"] = {
        label = "Записки",
        weight = 200,
        stack = false,
        close = true,
        description = "2x трева, 4x листчета",
        client = {
            image = "drugrecipe.png",
        }
    },
    ["drugrecipe4"] = {
        label = "Записки",
        weight = 200,
        stack = false,
        close = true,
        description = "4x опиум, 2x оксикотин",
        client = {
            image = "drugrecipe.png",
        }
    },
    ["drugrecipe5"] = {
        label = "Записки",
        weight = 200,
        stack = false,
        close = true,
        description = "6x ефедрин, 3x алуминиев оксид, 5x солна киселина",
        client = {
            image = "drugrecipe.png",
        }
    },
    ["drugrecipe6"] = {
        label = "Записки",
        weight = 200,
        stack = false,
        close = true,
        description = "4x белина, 5x кокаинови листа",
        client = {
            image = "drugrecipe.png",
        }
    },
    ["drugrecipe7"] = {
        label = "Записки",
        weight = 200,
        stack = false,
        close = true,
        description = "2x хлорна киселина, 5x железен пероксид, 2x литий",
        client = {
            image = "drugrecipe.png",
        }
    },
    ["drugrecipe8"] = {
        label = "Записки",
        weight = 200,
        stack = false,
        close = true,
        description = "10x пликчета, 1x везна",
        client = {
            image = "drugrecipe.png",
        }
    },
    ["drugrecipe9"] = {
        label = "Записки",
        weight = 200,
        stack = false,
        close = true,
        description = "1x буца бяло, 3x фентанил",
        client = {
            image = "drugrecipe.png",
        }
    },
    ["drugrecipe10"] = {
        label = "Записки",
        weight = 200,
        stack = false,
        close = true,
        description = "4x ибупрофен, 4x аспирин",
        client = {
            image = "drugrecipe.png",
        }
    },
    ["drugrecipe11"] = {
        label = "Записки",
        weight = 200,
        stack = false,
        close = true,
        description = "2x ацетон, 2x гъби",
        client = {
            image = "drugrecipe.png",
        }
    },
    ['blindfold'] = {
        label = 'Blindfold',
        weight = 200,
        stack = true,
        close = true,
        description = 'A blindfold to cover someone\'s eyes.',
        client = {
            image = 'blindfold.png', -- Ensure you have an image for the blindfold item
        }
    },
    
    ['blue_mask'] = {
		label = 'маска',
		consume = 0,
        weight = 300,
        stack = true,
	},
    ['green_mask'] = {
		label = 'маска',
		consume = 0,
        weight = 300,
        stack = true,
	},
    ['red_mask'] = {
		label = 'YAKUZA маска',
		consume = 0,
        weight = 300,
        stack = true,
	},
    ['yellow_mask'] = {
		label = 'VAGOS маска',
		consume = 0,
        weight = 300,
        stack = true,
	},
    ['black_mask'] = {
		label = 'OGG маска',
		consume = 0,
        weight = 300,
        stack = true,
	},

    -- Tk_house robbery
    ["silver_coin"] = {
		label = 'Silver Coin',
		weight = 50,
	},

	["gold_coin"] = {
		label = 'Gold Coin',
		weight = 50,
	},

	["charlotte_ring"] = {
		label = 'Charlotte Ring',
		weight = 50,
	},

	["simbolos_chain"] = {
		label = 'Simbolos Chain',
		weight = 100,
	},

	["action_figure"] = {
		label = 'Action Figure',
		weight = 100,
	},

	["nominos_ring"] = {
		label = 'Nominos Ring',
		weight = 50,
	},

	["boss_chain"] = {
		label = 'BOSS Chain',
		weight = 200,
	},

	["branded_cigarette"] = {
		label = 'Branded Cigarette',
		weight = 10,
	},

	["branded_cigarette_box"] = {
		label = 'Branded Cigarette Box',
		weight = 200,
	},

	["ninja_figure"] = {
		label = 'Ninja Figure',
		weight = 50,
	},

	["tk_painting"] = {
		label = 'Painting',
		weight = 100,
        client = {
            image = "painting.png"
        }
	},

	["statue"] = {
		label = 'Statue',
		weight = 200,
	},

	["ancient_egypt_artifact"] = {
		label = 'Ancient Egypt Artifact',
		weight = 200,
	},

	["ruby"] = {
		label = 'Ruby',
		weight = 100,
	},

	["tk_diamond"] = {
		label = 'Diamond',
		weight = 100,
        client = {
            image = "diamond.png"
        }
	},

	["danburite"] = {
		label = 'Danburite',
		weight = 100,
	},

	["television"] = {
		label = 'Television',
		weight = 5000,
		stack = false
	},

   ["coffee_machine"] = {
		label = 'Coffee Machine',
		weight = 1000,
		stack = false
	},

	["computer"] = {
		label = 'Computer',
		weight = 2500,
		stack = false
	},

	-- ["microwave"] = {
	-- 	label = 'Microwave',
	-- 	weight = 3500,
	-- 	stack = false
	-- },

	["music_player"] = {
		label = 'Music Player',
		weight = 2000,
		stack = false
	},

	["cutter"] = {
		label = 'Cutter',
		weight = 1000,
		stack = true
	},

	["trading_statue"] = {
		label = 'Dodo Statue',
		weight = 1000,
		stack = true
	},

	["trading_painting"] = {
		label = 'Trading Painting',
		weight = 1000,
		stack = true
	},

}