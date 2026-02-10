print("LOADER START")

local url = "https://raw.githubusercontent.com/yieldf999demons/yield-hub/main/v1.lua"
local src = game:HttpGet(url)

print("FETCHED SCRIPT")
loadstring(src)()
