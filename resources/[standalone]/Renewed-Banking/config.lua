lib.locale()
Config = {
    -- Framework automatically detected
    -- QB, QBX, and ESX preconfigured edit the framework.lua to add functionality to other frameworks
    renewedMultiJob = false, -- QBCORE ONLY! https://github.com/Renewed-Scripts/qb-phone  
    progressbar = 'circle', -- circle or rectangle (Anything other than circle will default to rectangle)
    currency = 'USD', -- USD, EUR, GBP ect.....
    atms = {
        `prop_atm_01`,
        `prop_atm_02`,
        `prop_atm_03`,
        `prop_fleeca_atm`
    },
    peds = {
        [1] = { -- Pacific Standard
            model = 'u_m_m_bankman',
            coords = vector4(241.44, 227.19, 106.29, 170.43),
            createAccounts = true
        },
        [2] = {
            model = 'u_m_m_bankman',
            coords = vector4(313.84, -280.58, 54.16, 338.31),
            createAccounts = true
        },
        [3] = {
            model = 'u_m_m_bankman',
            coords = vector4(149.46, -1042.09, 29.37, 335.43),
            createAccounts = true
        },
        [3] = {
            model = 'u_m_m_bankman',
            coords = vector4(-351.23, -51.28, 49.04, 341.73),
            createAccounts = true
        },
        [4] = {
            model = 'u_m_m_bankman',
            coords = vector4(-1211.9, -331.9, 37.78, 20.07),
            createAccounts = true
        },
        [5] = {
            model = 'u_m_m_bankman',
            coords = vector4(-2961.14, 483.09, 15.7, 83.84),
            createAccounts = true
        },
        [6] = {
            model = 'u_m_m_bankman',
            coords = vector4(1174.8, 2708.2, 38.09, 178.52),
            createAccounts = true
        },
        [7] = { -- paleto
            model = 'u_m_m_bankman',
            coords = vector4(-112.22, 6471.01, 31.63, 134.18),
            createAccounts = true
        },
        [8] = { -- legion
            model = 'u_m_m_bankman',
            coords = vector4(149.49, -1042.07, 29.37, 340.29),
            createAccounts = true
        }
    }
}
