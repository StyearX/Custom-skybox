local Lighting = game:GetService("Lighting")
for _, v in pairs(Lighting:GetChildren()) do if v:IsA("Sky") then v:Destroy() end end
if not isfolder("TohkaYatogami") then makefolder("TohkaYatogami") end
local faces = {
	{prop = "SkyboxBk", url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/TohkaYatogami/TohkaYatogami2_BK.png", file = "TohkaYatogami2_BK.png"},
	{prop = "SkyboxFt", url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/TohkaYatogami/TohkaYatogami2_FT.png", file = "TohkaYatogami2_FT.png"},
	{prop = "SkyboxLf", url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/TohkaYatogami/TohkaYatogami2_LF.png", file = "TohkaYatogami2_LF.png"},
	{prop = "SkyboxRt", url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/TohkaYatogami/TohkaYatogami2_RT.png", file = "TohkaYatogami2_RT.png"},
	{prop = "SkyboxUp", url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/TohkaYatogami/TohkaYatogami2_UP.png", file = "TohkaYatogami2_UP.png"},
	{prop = "SkyboxDn", url = "https://raw.githubusercontent.com/StyearX/Custom-skybox/main/TohkaYatogami/TohkaYatogami2_DN.png", file = "TohkaYatogami2_DN.png"},
}
local Sky = Instance.new("Sky")
Sky.Name = "Sky"
Sky.CelestialBodiesShown = false
Sky.StarCount = 0
for _, v in ipairs(faces) do
	local path = "TohkaYatogami/" .. v.file
	if not isfile(path) then writefile(path, game:HttpGet(v.url, true)) end
	Sky[v.prop] = getcustomasset(path)
end
Sky.Parent = Lighting
