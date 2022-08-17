Config = {}
Config.StartingApartment = true -- Enable/disable starting apartments (make sure to set default spawn coords)
Config.Interior = vector3(121.72, -753.82, 249.84) -- Interior to load where characters are previewed
Config.DefaultSpawn = vector3(-1035.71, -2731.87, 12.86) -- Default spawn coords if you have start apartments disabled
Config.PedCoords = vector4(154.95, -731.5, 250.15, 154.26) -- Create preview ped at these coordinates
Config.HiddenCoords = vector4(142.07, -734.98, 250.18, 78.47) -- Hides your actual ped while you are in selection
Config.CamCoords = vector4(153.54, -734.94, 250.45, 336.32) -- Camera coordinates for character preview screen
Config.EnableDeleteButton = false -- Define if the player can delete the character or not

Config.DefaultNumberOfCharacters = 4 -- Define maximum amount of default characters (maximum 5 characters defined by default)
Config.PlayersNumberOfCharacters = { -- Define maximum amount of player characters by rockstar license (you can find this license in your server's database in the player table)
    { license = "license:xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx", numberOfChars = 2 },
}
