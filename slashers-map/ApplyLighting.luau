-- Run in Studio command bar. Matches the preview renders (warm low sun, cool fill, light haze, restrained dust).
local L = game:GetService("Lighting")
L.ClockTime = 16.6; L.Brightness = 3.2; L.GeographicLatitude = 20
L.Ambient = Color3.fromRGB(70, 74, 92); L.OutdoorAmbient = Color3.fromRGB(96, 98, 112)
L.ColorShift_Top = Color3.fromRGB(255, 200, 150); L.EnvironmentDiffuseScale = 0.6; L.EnvironmentSpecularScale = 0.6
L.ShadowSoftness = 0.15
local function get(class) local o = L:FindFirstChildOfClass(class) if not o then o = Instance.new(class) o.Parent = L end return o end
local a = get("Atmosphere"); a.Density = 0.3; a.Offset = 0.2; a.Color = Color3.fromRGB(205, 185, 160); a.Decay = Color3.fromRGB(120, 100, 90); a.Glare = 0.5; a.Haze = 1.6
local cc = get("ColorCorrectionEffect"); cc.Contrast = 0.12; cc.Saturation = 0.08; cc.TintColor = Color3.fromRGB(255, 244, 232)
local b = get("BloomEffect"); b.Intensity = 0.25; b.Size = 24; b.Threshold = 1.0
local s = get("SunRaysEffect"); s.Intensity = 0.12; s.Spread = 0.7
print("Lighting applied")
