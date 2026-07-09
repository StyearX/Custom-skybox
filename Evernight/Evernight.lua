local Lighting = game:GetService("Lighting")

for _, v in pairs(Lighting:GetChildren()) do
	if v:IsA("Sky") then v:Destroy() end
end

if not isfolder("Evernight") then makefolder("Evernight") end

local faces = {
	{prop = "SkyboxBk", url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Evernight/evernight_RT.png", file = "SkyRt.png"},
	{prop = "SkyboxRt", url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Evernight/evernight_LF.png", file = "SkyIf.png"},
	{prop = "SkyboxLf", url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Evernight/evernight_BK.png", file = "SkyBk.png"},
	{prop = "SkyboxFt", url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Evernight/evernight_FT.png", file = "SkyFt.png"},
	{prop = "SkyboxUp", url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Evernight/evernight_UP.png", file = "SkyUp.png"},
	{prop = "SkyboxDn", url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Evernight/evernight_DN.png", file = "SkyDn.png"},
}

local Sky = Instance.new("Sky")
Sky.Name = "Sky"
Sky.CelestialBodiesShown = false
Sky.StarCount = 0

for _, v in ipairs(faces) do
	local path = "Evernight/" .. v.file
	if not isfile(path) then
		writefile(path, game:HttpGet(v.url, true))
	end
	Sky[v.prop] = getcustomasset(path)
end

Sky.Parent = Lighting
