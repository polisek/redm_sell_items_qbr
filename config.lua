Config = {}

Config.VykupShops = {
    {
        uid="vykupdreva1",  -- Unique name - Must not be the same as others
        header="Wood seller", -- Heading of menu
        pos=vector3(-872.08, -1311.51, 43.01), -- Position
        ped={
            enable=true, -- PED true / false
            model="A_M_M_BiVWorker_01", -- Model 
            pos=vector3(-869.89, -1313.71, 43.01),  -- NPC position
            head=33.03, -- NPC Heading
        },
        blip={
            enable=true,  -- Blip true / false
            bliphash = 	688589278, -- Blip hash 
            bliptext="Wood seller", -- Blip text

        },
        shopdata={
            {
                title="Wood seller", -- Heading in menu
                description="Wood selling", -- Popis v menu
                price=0.03, -- Price 
                item="wood", -- Item
            },
        },
    },

}
