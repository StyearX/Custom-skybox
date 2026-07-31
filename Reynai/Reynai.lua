local Lighting = game:GetService("Lighting")
for _, v in pairs(Lighting:GetChildren()) do if v:IsA("Sky") then v:Destroy() end end
if not isfolder("Reynai") then makefolder("Reynai") end
local faces = {
	{prop = "SkyboxBk", url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Reynai/back.png", file = "back.png"},
	{prop = "SkyboxFt", url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Reynai/front.png", file = "front.png"},
	{prop = "SkyboxLf", url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Reynai/left.png", file = "left.png"},
	{prop = "SkyboxRt", url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Reynai/right.png", file = "right.png"},
	{prop = "SkyboxUp", url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Reynai/top.png", file = "top.png"},
	{prop = "SkyboxDn", url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/Reynai/down.png", file = "down.png"},
}
local Sky = Instance.new("Sky")
Sky.Name = "Sky"
Sky.CelestialBodiesShown = false
Sky.StarCount = 0
for _, v in ipairs(faces) do
	local path = "Reynai/" .. v.file
	if not isfile(path) then writefile(path, game:HttpGet(v.url, true)) end
	Sky[v.prop] = getcustomasset(path)
end
Sky.Parent = Lighting

