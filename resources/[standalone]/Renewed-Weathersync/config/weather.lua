return {

    useScheduledWeather = true, -- Do you want txAdmin to schedule custom rain and thunder near restart?
    serverDuration = 9, -- How many hours will the server run before restarting?, if a server restarts every 8 hours put this to 9 etc.
    weatherCycletimer = 15, -- How many minutes between weather changes

    timeBetweenRain = 240, -- How many minutes between rain events
    rainAfterRestart = 240, -- How many minutes AFTER a server restart before rain will start to show?

    decemberSnow = false, -- if turned on means that only snow will happen in december

    useStaticWeather = false,
    staticWeather = {
        ['BLIZZARD'] = 0.0, --0% chance
        ['CLEAR'] = 0.9, -- 10% chance
        ['CLEARING'] = 0.9, -- 10% chance
        ['CLOUDS'] = 0.0, -- 10% chance
        ['EXTRASUNNY'] = 0.9, -- 40% chance
        ['FOGGY'] = 0.0,
        ['NEUTRAL'] = 0.0,
        ['OVERCAST'] = 0.0,
        ['RAIN'] = 0.0,
        ['SMOG'] = 0.0,
        ['SNOW'] = 0.0,
        ['SNOWLIGHT'] = 0.0,
        ['THUNDER'] = 0.0,
        ['XMAS'] = 0.0
    },

    useWeatherSequences = true,

    weatherSequences = {

        { -- Sunny
            probability = 0.9, -- 10%
            events = {
                {
                    weather = 'SMOG',
                    time = math.random(1, 3), -- Minutes
                    windSpeed = 0.05,
                },
                {
                    weather = 'CLEAR',
                    time = math.random(5, 10), -- Minutes
                    windSpeed = 0.1,
                },
                {
                    weather = 'EXTRASUNNY',
                    time = math.random(3, 10), -- Minutes
                    windSpeed = 0.05,
                }
            },
        },

        { -- cloudy
            probability = 0.0, -- 10%
            events = {
                {
                    weather = 'OVERCAST',
                    time = math.random(5, 10),
                    windSpeed = 0.1,
                },
                {
                    weather = 'CLOUDS',
                    time = math.random(3, 10),
                    windSpeed = 0.05,
                }
            },
        },

        { -- snowing
            probability = 0.0, -- 30%
            month = 12, -- What month can there be snow?
            events = {
                {
                    weather = 'OVERCAST',
                    time = math.random(5, 10), -- Minutes
                    windSpeed = 0.0,
                },
                {
                    weather = 'SNOWLIGHT',
                    time = math.random(5, 10), -- Minutes
                    windSpeed = 0.1,
                },
                {
                    weather = 'SNOW',
                    time = math.random(3, 7), -- Minutes
                    windSpeed = 0.3,
                },
                {
                    weather = 'SNOWLIGHT',
                    time = math.random(5, 10), -- Minutes
                    windSpeed = 0.1,
                },
                {
                    weather = 'OVERCAST',
                    time = math.random(3, 7), -- Minutes
                    windSpeed = 0.0,
                },
                {
                    weather = 'CLOUDS',
                    time = math.random(3, 7), -- Minutes
                    windSpeed = 0.0,
                },
            },
        },

        { -- snowstorm
            probability = 0.0, -- 30%
            windDirection = 120.0, -- Storms come from the south
            month = 12, -- What month can there be snow?
            events = {
                {
                    weather = 'OVERCAST',
                    time = math.random(5, 10), -- Minutes
                    windSpeed = 0.5,
                },
                {
                    weather = 'SNOWLIGHT',
                    time = math.random(3, 7), -- Minutes
                    windSpeed = 1.0,
                },
                {
                    weather = 'SNOW',
                    time = math.random(3, 7), -- Minutes
                    windSpeed = 1.0,
                },
                {
                    weather = 'SNOW',
                    time = math.random(5, 10), -- Minutes
                    windSpeed = 1.0,
                    hasSnow = true,
                },
                {
                    weather = 'BLIZZARD',
                    time = 14, -- Minutes
                    windSpeed = 3.0,
                    hasSnow = true,
                },
                {
                    weather = 'SNOW',
                    time = 15, -- Minutes
                    windSpeed = 2.0,
                    hasSnow = true,
                },
                {
                    weather = 'SNOWLIGHT',
                    time = 20, -- Minutes
                    windSpeed = 1.0,
                    hasSnow = true,
                },
                {
                    weather = 'OVERCAST',
                    windSpeed = 0.5,
                    time = 15, -- Minutes
                    hasSnow = true,
                },
                {
                    weather = 'CLOUDS',
                    windSpeed = 0.5,
                    time = 15, -- Minutes
                    hasSnow = true,
                },
                {
                    weather = 'CLEAR',
                    windSpeed = 0.5,
                    time = 15, -- Minutes
                    hasSnow = true,
                },
                {
                    weather = 'EXTRASUNNY',
                    time = 15, -- minutes
                    windSpeed = 0.5,
                },
            },
        },

        { -- rainshower
            probability = 0.1, -- 10%
            windDirection = 240.0, -- Storms come from the south
            events = {
                {
                    weather = 'CLOUDS',
                    time = math.random(2, 5), -- Minutes
                    windSpeed = 0.5,
                },
                {
                    weather = 'OVERCAST',
                    time = math.random(2, 5), -- Minutes
                    windSpeed = 1.0,
                },
                {
                    weather = 'RAIN',
                    time = math.random(3, 5), -- Minutes
                    windSpeed = 2.0,
                },
                {
                    weather = 'CLEARING',
                    time = math.random(1, 7), -- Minutes
                    windSpeed = 1.0,
                },
                {
                    weather = 'CLOUDS',
                    time = math.random(1, 4), -- Minutes
                    windSpeed = 0.5,
                },
                {
                    weather = 'EXTRASUNNY',
                    time = math.random(5, 10),
                    windSpeed = 0.0,
                },
            },
        },

        { -- rainstorm
            probability = 0.1, -- 10%
            windDirection = 280.0, -- Storms come from the south
            events = {
                {
                    weather = 'CLOUDS',
                    time = math.random(3, 7), -- Minutes
                    windSpeed = 0.5,
                },
                {
                    weather = 'OVERCAST',
                    time = math.random(3, 7), -- Minutes
                    windSpeed = 1.0,
                },
                {
                    weather = 'RAIN',
                    time = math.random(3, 5), -- Minutes
                    windSpeed = 3.5,
                },
                {
                    weather = 'CLEARING',
                    time = math.random(3, 7), -- Minutes
                    windSpeed = 1.5,
                },
                {
                    weather = 'CLOUDS',
                    time = math.random(3, 7),
                    windSpeed = 0.5,
                },
            },
        },

        { -- smallstorm
            probability = 0.0, -- 10%
            windDirection = 120.0, -- Storms come from the south
            events = {
                {
                    weather = 'CLOUDS',
                    time = math.random(3, 7),
                    windSpeed = 0.5,
                },
                {
                    weather = 'RAIN',
                    time = math.random(3, 7),
                    windSpeed = 1.0,
                },
                {
                    weather = 'THUNDER',
                    time = math.random(3, 7),
                    windSpeed = 3.0,
                },
                {
                    weather = 'RAIN',
                    time = math.random(5, 10), -- Minutes
                    windSpeed = 2.0,
                },
                {
                    weather = 'CLEARING',
                    time = math.random(3, 7),
                    windSpeed = 1.0,
                },
                {
                    weather = 'EXTRASUNNY',
                    time = math.random(5, 10),
                    windSpeed = 0.5,
                },
            },
        },

        { -- bigstorm
            windDirection = 180.0, -- Storms come from the south
            probability = 0.0, -- 10%
            events = {
                {
                    weather = 'OVERCAST',
                    time = math.random(3, 7),
                    windSpeed = 4.0,
                },
                {
                    weather = 'RAIN',
                    time = math.random(3, 7),
                    windSpeed = 8.0,
                },
                {
                    weather = 'THUNDER',
                    time = math.random(3, 7),
                    windSpeed = 12.0,
                },
                {
                    weather = 'RAIN',
                    time = math.random(3, 7),
                    windSpeed = 12.0,
                },
                {
                    weather = 'THUNDER',
                    time = math.random(3, 7),
                    windSpeed = 12.0,
                },
                {
                    weather = 'CLEARING',
                    time = math.random(3, 7),
                    windSpeed = 3.0,
                },
                {
                    weather = 'EXTRASUNNY',
                    time = math.random(3, 7),
                    windSpeed = 0.0,
                },
            },
        },
    }
}





