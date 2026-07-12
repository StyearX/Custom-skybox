local Lighting = game:GetService("Lighting")
for _, v in pairs(Lighting:GetChildren()) do if v:IsA("Sky") then v:Destroy() end end
if not isfolder("LilithAsami") then makefolder("LilithAsami") end
local faces = {
	{prop = "SkyboxBk", url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/LilithAsami/LilithAsami_BK.png", file = "LilithAsami_BK.png"},
	{prop = "SkyboxFt", url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/LilithAsami/LilithAsami_FT.png", file = "LilithAsami_FT.png"},
	{prop = "SkyboxLf", url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/LilithAsami/LilithAsami_LF.png", file = "LilithAsami_LF.png"},
	{prop = "SkyboxRt", url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/LilithAsami/LilithAsami_RT.png", file = "LilithAsami_RT.png"},
	{prop = "SkyboxUp", url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/LilithAsami/LilithAsami_UP.png", file = "LilithAsami_UP.png"},
	{prop = "SkyboxDn", url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/LilithAsami/LilithAsami_DN.png", file = "LilithAsami_DN.png"},
}
local Sky = Instance.new("Sky")
Sky.Name = "Sky"
Sky.CelestialBodiesShown = false
Sky.StarCount = 0
for _, v in ipairs(faces) do
	local path = "LilithAsami/" .. v.file
	if not isfile(path) then writefile(path, game:HttpGet(v.url, true)) end
	Sky[v.prop] = getcustomasset(path)
end
Sky.Parent = Lighting
