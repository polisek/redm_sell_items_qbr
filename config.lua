Config = {}

Config.VykupShops = {
    {
        uid="vykupdreva1",  --  Unique name - Must not be the same as others
        
        header="Selling wood BlackWater", -- Menu title
        pos=vector3(-872.08, -1311.51, 43.01), --Position for sell
        ped={
            enable=true, 
            model="A_M_M_BiVWorker_01",
            pos=vector3(-869.89, -1313.71, 43.01), 
            head=33.03,
        },
        blip={
            enable=true, 
            bliphash = 	688589278,
            bliptext="Wood sell",

        },
        shopdata={
            {
                title="Sell wood",
                description="Selling wood",
                price=0.2,
                item="wood",
            },
        },
    },

    {
        uid="vykupuhlisd", ---  Unique name - Must not be the same as others
        header="Selling coal Saint Denis",
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
            bliptext="Coal sell",

        },
        shopdata={
            {
                title="Sell coal",
                description="Selling coal",
                price=0.9,
                item="coal",
            },
        },
    },
}

