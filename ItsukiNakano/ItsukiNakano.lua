local Lighting = game:GetService("Lighting")
for _, v in pairs(Lighting:GetChildren()) do if v:IsA("Sky") then v:Destroy() end end
if not isfolder("ItsukiNakano") then makefolder("ItsukiNakano") end
local faces = {
	{prop = "SkyboxBk", url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/ItsukiNakano/ItsukiNakano_Bk.png", file = "ItsukiNakano_Bk.png"},
	{prop = "SkyboxFt", url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/ItsukiNakano/ItsukiNakano_Ft.png", file = "ItsukiNakano_Ft.png"},
	{prop = "SkyboxLf", url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/ItsukiNakano/ItsukiNakano_Lf.png", file = "ItsukiNakano_Lf.png"},
	{prop = "SkyboxRt", url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/ItsukiNakano/ItsukiNakano_Rt.png", file = "ItsukiNakano_Rt.png"},
	{prop = "SkyboxUp", url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/ItsukiNakano/ItsukiNakano_Up.png", file = "ItsukiNakano_Up.png"},
	{prop = "SkyboxDn", url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/ItsukiNakano/ItsukiNakano_Dn.png", file = "ItsukiNakano_Dn.png"},
}
local Sky = Instance.new("Sky")
Sky.Name = "Sky"
Sky.CelestialBodiesShown = false
Sky.StarCount = 0
for _, v in ipairs(faces) do
	local path = "ItsukiNakano/" .. v.file
	if not isfile(path) then writefile(path, game:HttpGet(v.url, true)) end
	Sky[v.prop] = getcustomasset(path)
end
Sky.Parent = Lighting
