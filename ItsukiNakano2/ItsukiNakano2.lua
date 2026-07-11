local Lighting = game:GetService("Lighting")
for _, v in pairs(Lighting:GetChildren()) do if v:IsA("Sky") then v:Destroy() end end
if not isfolder("ItsukiNakano2") then makefolder("ItsukiNakano2") end
local faces = {
	{prop = "SkyboxBk", url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/ItsukiNakano2/ItsukiNakano2_Bk.png", file = "ItsukiNakano2_Bk.png"},
	{prop = "SkyboxFt", url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/ItsukiNakano2/ItsukiNakano2_Ft.png", file = "ItsukiNakano2_Ft.png"},
	{prop = "SkyboxLf", url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/ItsukiNakano2/ItsukiNakano2_Lf.png", file = "ItsukiNakano2_Lf.png"},
	{prop = "SkyboxRt", url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/ItsukiNakano2/ItsukiNakano2_Rt.png", file = "ItsukiNakano2_Rt.png"},
	{prop = "SkyboxUp", url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/ItsukiNakano2/ItsukiNakano2_Up.png", file = "ItsukiNakano2_Up.png"},
	{prop = "SkyboxDn", url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/ItsukiNakano2/ItsukiNakano2_Dn.png", file = "ItsukiNakano2_Dn.png"},
}
local Sky = Instance.new("Sky")
Sky.Name = "Sky"
Sky.CelestialBodiesShown = false
Sky.StarCount = 0
for _, v in ipairs(faces) do
	local path = "ItsukiNakano2/" .. v.file
	if not isfile(path) then writefile(path, game:HttpGet(v.url, true)) end
	Sky[v.prop] = getcustomasset(path)
end
Sky.Parent = Lighting
