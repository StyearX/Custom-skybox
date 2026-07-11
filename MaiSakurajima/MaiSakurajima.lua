local Lighting = game:GetService("Lighting")
for _, v in pairs(Lighting:GetChildren()) do if v:IsA("Sky") then v:Destroy() end end
if not isfolder("MaiSakurajima") then makefolder("MaiSakurajima") end
local faces = {
	{prop = "SkyboxUp", url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/MaiSakurajima/top.png", file = "top.png"},
	{prop = "SkyboxDn", url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/MaiSakurajima/down.png", file = "down.png"},
	{prop = "SkyboxLf", url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/MaiSakurajima/left.png", file = "left.png"},
	{prop = "SkyboxRt", url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/MaiSakurajima/right.png", file = "right.png"},
	{prop = "SkyboxFt", url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/MaiSakurajima/front.png", file = "front.png"},
	{prop = "SkyboxBk", url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/MaiSakurajima/back.png", file = "back.png"},
}
local Sky = Instance.new("Sky")
Sky.Name = "Sky"
Sky.CelestialBodiesShown = false
Sky.StarCount = 0
for _, v in ipairs(faces) do
	local path = "MaiSakurajima/" .. v.file
	if not isfile(path) then writefile(path, game:HttpGet(v.url, true)) end
	Sky[v.prop] = getcustomasset(path)
end
Sky.Parent = Lighting
