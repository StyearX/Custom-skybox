local Lighting = game:GetService("Lighting")
for _, v in pairs(Lighting:GetChildren()) do if v:IsA("Sky") then v:Destroy() end end
if not isfolder("MikuNakano") then makefolder("MikuNakano") end
local faces = {
	{prop = "SkyboxBk", url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/MikuNakano/MikuNakano_Bk.png", file = "MikuNakano_Bk.png"},
	{prop = "SkyboxFt", url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/MikuNakano/MikuNakano_Ft.png", file = "MikuNakano_Ft.png"},
	{prop = "SkyboxLf", url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/MikuNakano/MikuNakano_Lf.png", file = "MikuNakano_Lf.png"},
	{prop = "SkyboxRt", url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/MikuNakano/MikuNakano_Rt.png", file = "MikuNakano_Rt.png"},
	{prop = "SkyboxUp", url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/MikuNakano/MikuNakano_Up.png", file = "MikuNakano_Up.png"},
	{prop = "SkyboxDn", url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/MikuNakano/MikuNakano_Dn.png", file = "MikuNakano_Dn.png"},
}
local Sky = Instance.new("Sky")
Sky.Name = "Sky"
Sky.CelestialBodiesShown = false
Sky.StarCount = 0
for _, v in ipairs(faces) do
	local path = "MikuNakano/" .. v.file
	if not isfile(path) then writefile(path, game:HttpGet(v.url, true)) end
	Sky[v.prop] = getcustomasset(path)
end
Sky.Parent = Lighting
