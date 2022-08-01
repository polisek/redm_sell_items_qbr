Config = {}

Config.VykupShops = {
    {
        uid="vykupdreva1",  -- Unikátní název - Nesmí být stejný jak ostatní
        header="Výkup dřeva", -- Nadpis v menu
        pos=vector3(-872.08, -1311.51, 43.01), --Pozice pro prodej
        ped={
            enable=true, -- Pokud je false další 3 řádky nech klidně původní nebo random
            model="A_M_M_BiVWorker_01", -- Model prodejce
            pos=vector3(-869.89, -1313.71, 43.01),  -- Pozice prodejce
            head=33.03, -- Heading prodejce
        },
        blip={
            enable=true,  -- Pokud je false další 3 řádky nech klidně původní nebo random
            bliphash = 	688589278, -- Blip hash -- Hash, kterej tu je je dobrej ten bych nechal.
            bliptext="Výkup dřeva", -- Blip text na mapě

        },
        --Níže jsou itemy k výkupu v daném obchodě
        shopdata={
            {
                title="Prodat dřevo", -- Nadpis v menu
                description="Výkup dreva", -- Popis v menu
                price=0.2, -- Cena na výkup
                item="wood", -- Itemy
            },
        },
    },
    ---Další výkupní místo
    {
        uid="vykupmasa1", 
        header="Výkup masa",
        pos=vector3(1172.82, -180.68, 100.82),
        ped={
            enable=true, 
            model="CS_billwilliamson",
            pos=vector3(1172.82, -180.68, 100.82), 
            head=207.08,
        },
        blip={
            enable=true,  
            bliphash = 	688589278,
            bliptext="Výkup masa",

        },
        shopdata={
            {
                title="Prodat maso",
                description="Vykup masa",
                price=0.60,
                item="meat",
            },
            {
                title="Prodat rybí maso",
                description="Výkup rybího masa",
                price=0.85,
                item="fishmeat",
            },
        },
    },

    {
        uid="vykupuhlisd", 
        header="Výkup uhlí Saint Denis",
        pos=vector3(2578.48, -1413.23, 46.31),
        ped={
            enable=true, 
            model="A_M_M_BlWLaborer_02",
            pos=vector3(2577.73, -1413.3, 46.31), 
            head=284.1,
        },
        blip={
            enable=true, 
            bliphash = 	688589278,
            bliptext="Výkup uhlí",

        },
        shopdata={
            {
                title="Prodat uhlí",
                description="Vykoupime tvé uhlí",
                price=0.9,
                item="coal",
            },
        },
    },
}

