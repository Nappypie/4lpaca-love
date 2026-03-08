--[[
                          Neverlose.cc UI Library
            I don't care whether you want to give me credit or not.

    Author: 4lpaca
    Discord: https://arceney.win/discord
    Other-Projects: https://4lpaca.win
]]

do
    local a = "LPH_NO_VIRTUALIZE"
    getfenv()[a] = getfenv()[a] or function(b)
        return b
    end
end
cloneref = cloneref or function(a)
    return a
end
gethui = gethui or get_hidden_gui
getcustomasset = getcustomasset or getsynasset
getgenv = getgenv or getfenv
local a = LPH_NO_VIRTUALIZE(function()
    if game:GetService("RunService"):IsStudio() then
        local a = Instance.new("Folder", game:GetService("ReplicatedFirst"))
        a.Name = "PRI\000." .. tostring(string.char(math.random(50, 120))) .. tostring(string.char(math.random(50, 120))) .. tostring(string.char(math.random(50, 120))) .. tostring(string.char(math.random(50, 120))) .. tostring(string.char(math.random(50, 120))) .. tostring(string.char(math.random(50, 120)))
        local b = function(b)
            return (string.find(b, "/", 1, true) and string.split(b, "/")) or (string.find(b, "\\", 1, true) and string.split(b, "\\")) or {
                b
            }
        end
        local c = function(c)
            local d = b(c)
            local e = a
            for f, g in next, d do
                e = e[g]
            end
            return e
        end
        getgenv().readfile = function(d)
            local e = c(d)
            return e.Value
        end
        getgenv().isfile = function(d)
            local e, f = pcall(function()
                return c(d)
            end)
            if e and not f:IsA("Folder") then
                return true
            end
            return false
        end
        getgenv().isfolder = function(d)
            local e, f = pcall(function()
                return c(d)
            end)
            if e and f:IsA("Folder") then
                return true
            end
            return false
        end
        getgenv().writefile = function(d, e)
            local f = b(d)
            local g = a
            for h, i in next, f do
                local j = g:FindFirstChild(i)
                if not j then
                    local k = Instance.new("StringValue", g)
                    k.Name = tostring(i)
                    k.Value = e
                else
                    if j:IsA("StringValue") and tostring(j) == i then
                        j.Name = tostring(i)
                        j.Value = e
                    end
                    g = j
                end
            end
        end
        getgenv().listfiles = function(d)
            local e = c(d)
            local f = {}
            for g, h in next, e:GetChildren() do
                if h:IsA("StringValue") then
                    table.insert(f, d .. "/" .. tostring(h))
                end
            end
            return f
        end
        getgenv().makefolder = function(d)
            local e = b(d)
            local f = a
            for g, h in next, e do
                local i = f:FindFirstChild(h)
                if not i then
                    local j = Instance.new("Folder", f)
                    j.Name = tostring(h)
                else
                    f = i
                end
            end
        end
        getgenv().delfile = function(d)
            local e = b(d)
            local f = a
            for g, h in next, e do
                local i = f:FindFirstChild(h)
                if i and i:IsA("StringValue") then
                    i:Destroy()
                else
                    f = i
                end
            end
        end
    end
end)
a()
writefile = writefile or getgenv().writefile
makefolder = makefolder or getgenv().makefolder
readfile = readfile or getgenv().readfile
delfolder = delfolder or getgenv().delfolder
delfile = delfile or getgenv().delfile
listfiles = listfiles or getgenv().listfiles
isfolder = isfolder or getgenv().isfolder
isfile = isfile or getgenv().isfile
local b = {}
b.BuiltInRegular = Font.new("rbxasset://LuaPackages/Packages/_Index/BuilderIcons/BuilderIcons/BuilderIcons.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
b.BuiltInBold = Font.new("rbxasset://LuaPackages/Packages/_Index/BuilderIcons/BuilderIcons/BuilderIcons.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
b.GlobalSignals = {}
b.UnloadEnabled = false
local c = cloneref or function(c)
    return c
end
local d = c(game:GetService("TweenService"))
local e = c(game:GetService("UserInputService"))
local f = c(game:GetService("TextService"))
local g = c(game:GetService("RunService"))
local h = c(game:GetService("Players"))
local i = c(game:GetService("HttpService"))
local j = h.LocalPlayer
local k = (gethui and gethui()) or (get_hidden_gui and get_hidden_gui()) or c(game:FindFirstChild("CoreGui")) or c(j.PlayerGui)
local l = j:GetMouse()
local m = c(workspace.CurrentCamera)
local n = protect_gui or protectgui or (syn and syn.protect_gui) or function(n)
    return n
end
local o = Instance.new("ScreenGui")
local p = TweenInfo.new(0.1)
local q = TweenInfo.new(0.175)
TweenInfo.new(0.05)
local r = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
local s = {}
b.UserProfile = h:GetUserThumbnailAsync(j.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size150x150)
b.RandomString = LPH_NO_VIRTUALIZE(function()
    return string.rep(string.char(math.random(1, 7)), math.random(1, 4)) .. string.rep(string.char(math.random(1, 7)), math.random(1, 4)) .. string.rep(string.char(math.random(1, 7)), math.random(1, 4)) .. string.rep(string.char(math.random(1, 7)), math.random(1, 4)) .. string.rep(string.char(math.random(1, 7)), math.random(1, 4)) .. string.rep(string.char(math.random(1, 7)), math.random(1, 4)) .. string.rep(string.char(math.random(1, 7)), math.random(1, 4)) .. string.rep(string.char(math.random(1, 7)), math.random(1, 4)) .. string.rep(string.char(math.random(1, 7)), math.random(1, 4)) .. string.rep(string.char(math.random(1, 7)), math.random(1, 4)) .. string.rep(string.char(math.random(1, 7)), math.random(1, 4))
end)
n(o)
o.Name = b.RandomString()
o.IgnoreGuiInset = true
o.ZIndexBehavior = Enum.ZIndexBehavior.Global
o.ResetOnSpawn = false
o.Parent = k
b.Scales = {
    Small = UDim2.fromOffset(540, 380),
    Mobile = UDim2.fromOffset(640, 385),
    Default = UDim2.fromOffset(640, 480),
    Large = UDim2.fromOffset(800, 600)
}
b.IconColor = Color3.fromRGB(255, 255, 255)
b.ScreenGui = o
b.Flags = {}
b.AccentColor = Color3.fromRGB(78, 127, 252)
b.MainColor = Color3.fromRGB(8, 8, 13)
b.RegisiteryColor = {}
b.NameRegisitry = {}
b.IsMosueOverOtherFrame = false
b.GlobalLogo = "rbxassetid://120358385035996"
b.ImageColorMapping = "rbxassetid://4155801252"
if getcustomasset then
    local t = "https://github.com/4lpaca-pin/NeverLose/blob/main/assets/%s?raw=true"
    local u = "NLAssets"
    if not isfolder(u) then
        makefolder(u)
    end
    pcall(function()
        if not isfile(u .. "/logo.png") then
            local v = game:HttpGet(string.format(t, "logo.png"))
            writefile(u .. "/logo.png", v)
            task.wait()
        end
        if isfile(u .. "/logo.png") then
            b.GlobalLogo = getcustomasset(u .. "/logo.png")
        end
    end)
    pcall(function()
        if not isfile(u .. "/saturation_value_gradient.png") then
            local v = game:HttpGet(string.format(t, "saturation_value_gradient.png"))
            writefile(u .. "/saturation_value_gradient.png", v)
            task.wait()
        end
        if isfile(u .. "/saturation_value_gradient.png") then
            b.ImageColorMapping = getcustomasset(u .. "/saturation_value_gradient.png")
        end
    end)
end
b.AddSignal = function(t, u)
    if b.UnloadEnabled then
        table.insert(b.GlobalSignals, u)
    end
    return u
end
b.AddQuery = function(t, u, v)
    table.insert(b.NameRegisitry, {
        Root = u,
        Idx = v
    })
end
s.new = function(t)
    local u = {}
    local v = ((#t + 3782) % 111) + 1
    string.gsub(t, ".", LPH_NO_VIRTUALIZE(function(w)
        table.insert(u, tostring(w:byte() + v))
    end))
    local w = table.concat(u, "?")
    table.clear(u)
    return "{" .. tostring(v + 72667) .. "}?" .. w
end
s.reverse = function(t)
    local u = string.split(t, "?")
    local v = u[1]:gsub("{", ""):gsub("}", "")
    local w = tonumber(v)
    local x = {}
    local y = w - 72667
    for z, A in next, u do
        if z > 1 then
            local B = tonumber(A)
            table.insert(x, string.char(B - y))
        end
    end
    local z = table.concat(x)
    table.clear(x)
    return z
end
do
    local t = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
    b.Base64Encode = LPH_NO_VIRTUALIZE(function(u)
        return ((u:gsub(".", function(v)
            local w, x = "", v:byte()
            for y = 8, 1, -1 do
                w = w .. (x % 2 ^ y - x % 2 ^ (y - 1) > 0 and "1" or "0")
            end
            return w
        end) .. "0000"):gsub("%d%d%d?%d?%d?%d?", function(v)
            if (#v < 6) then
                return ""
            end
            local w = 0
            for x = 1, 6 do
                w = w + (v:sub(x, x) == "1" and 2 ^ (6 - x) or 0)
            end
            return t:sub(w + 1, w + 1)
        end) .. ({
            "",
            "==",
            "="
        })[#u % 3 + 1])
    end)
    b.Base64Decode = LPH_NO_VIRTUALIZE(function(u)
        u = string.gsub(u, "[^" .. t .. "=]", "")
        return (u:gsub(".", function(v)
            if (v == "=") then
                return ""
            end
            local w, x = "", (t:find(v) - 1)
            for y = 6, 1, -1 do
                w = w .. (x % 2 ^ y - x % 2 ^ (y - 1) > 0 and "1" or "0")
            end
            return w
        end):gsub("%d%d%d?%d?%d?%d?%d?%d?", function(v)
            if (#v ~= 8) then
                return ""
            end
            local w = 0
            for x = 1, 8 do
                w = w + (v:sub(x, x) == "1" and 2 ^ (8 - x) or 0)
            end
            return string.char(w)
        end))
    end)
end
b.LoadIcon = LPH_NO_VIRTUALIZE(function()
    b.RobloxIcon = {
        ["3d-cube-arrow-left"] = "3d-cube-arrow-left",
        amazon = "amazon",
        ["arm-left"] = "arm-left",
        ["arm-right"] = "arm-right",
        ["arrow-curl-to-left"] = "arrow-curl-to-left",
        ["arrow-curl-to-right"] = "arrow-curl-to-right",
        ["arrow-down-to-line"] = "arrow-down-to-line",
        ["arrow-large-down"] = "arrow-large-down",
        ["arrow-large-left"] = "arrow-large-left",
        ["arrow-large-right"] = "arrow-large-right",
        ["arrow-large-up"] = "arrow-large-up",
        ["arrow-right-from-portrait-rectangle"] = "arrow-right-from-portrait-rectangle",
        ["arrow-right-to-portrait-rectangle"] = "arrow-right-to-portrait-rectangle",
        ["arrow-rotate-down-dashed"] = "arrow-rotate-down-dashed",
        ["arrow-rotate-right"] = "arrow-rotate-right",
        ["arrow-rotate-right-dashed"] = "arrow-rotate-right-dashed",
        ["arrow-small-down"] = "arrow-small-down",
        ["arrow-small-left"] = "arrow-small-left",
        ["arrow-small-right"] = "arrow-small-right",
        ["arrow-small-up"] = "arrow-small-up",
        ["arrow-spin-clockwise"] = "arrow-spin-clockwise",
        ["arrow-spin-clockwise-10"] = "arrow-spin-clockwise-10",
        ["arrow-spin-clockwise-15"] = "arrow-spin-clockwise-15",
        ["arrow-spin-clockwise-30"] = "arrow-spin-clockwise-30",
        ["arrow-spin-counter-clockwise-10"] = "arrow-spin-counter-clockwise-10",
        ["arrow-spin-counter-clockwise-15"] = "arrow-spin-counter-clockwise-15",
        ["arrow-spin-counter-clockwise-30"] = "arrow-spin-counter-clockwise-30",
        ["arrow-thick-to-left"] = "arrow-thick-to-left",
        ["arrow-thick-to-right"] = "arrow-thick-to-right",
        ["arrow-up-from-landscape-rectangle"] = "arrow-up-from-landscape-rectangle",
        ["arrow-up-right-from-square"] = "arrow-up-right-from-square",
        ["arrow-wide-short-down"] = "arrow-wide-short-down",
        ["arrow-wide-short-left"] = "arrow-wide-short-left",
        ["arrow-wide-short-right"] = "arrow-wide-short-right",
        ["arrow-wide-short-up"] = "arrow-wide-short-up",
        ["arrows-small-directional"] = "arrows-small-directional",
        ["audio-wave-dotted-line"] = "audio-wave-dotted-line",
        backpack = "backpack",
        beard = "beard",
        bell = "bell",
        ["bell-clock"] = "bell-clock",
        ["bell-plus"] = "bell-plus",
        ["bell-slash"] = "bell-slash",
        belt = "belt",
        binoculars = "binoculars",
        ["book-closed"] = "book-closed",
        bookmark = "bookmark",
        ["bow-tie"] = "bow-tie",
        ["building-store"] = "building-store",
        ["bullet-flying"] = "bullet-flying",
        ["butterfly-wings"] = "butterfly-wings",
        calendar = "calendar",
        ["calendar-plus"] = "calendar-plus",
        ["calendar-star"] = "calendar-star",
        ["camera-small"] = "camera-small",
        ["caret-small-down"] = "caret-small-down",
        ["caret-small-left"] = "caret-small-left",
        ["caret-small-right"] = "caret-small-right",
        ["caret-small-up"] = "caret-small-up",
        ["chain-link"] = "chain-link",
        ["chart-four-vertical-bars"] = "chart-four-vertical-bars",
        ["chart-line"] = "chart-line",
        ["chart-pie"] = "chart-pie",
        ["chart-scatter-plot"] = "chart-scatter-plot",
        ["chart-three-vertical-bars"] = "chart-three-vertical-bars",
        check = "check",
        ["check-large"] = "check-large",
        ["check-small"] = "check-small",
        ["chevron-large-down"] = "chevron-large-down",
        ["chevron-large-down-to-line"] = "chevron-large-down-to-line",
        ["chevron-large-left"] = "chevron-large-left",
        ["chevron-large-left-to-line"] = "chevron-large-left-to-line",
        ["chevron-large-right"] = "chevron-large-right",
        ["chevron-large-right-to-line"] = "chevron-large-right-to-line",
        ["chevron-large-up"] = "chevron-large-up",
        ["chevron-large-up-to-line"] = "chevron-large-up-to-line",
        ["chevron-small-down"] = "chevron-small-down",
        ["chevron-small-down-to-line"] = "chevron-small-down-to-line",
        ["chevron-small-left"] = "chevron-small-left",
        ["chevron-small-left-to-line"] = "chevron-small-left-to-line",
        ["chevron-small-right"] = "chevron-small-right",
        ["chevron-small-right-to-line"] = "chevron-small-right-to-line",
        ["chevron-small-up"] = "chevron-small-up",
        ["chevron-small-up-to-line"] = "chevron-small-up-to-line",
        ["circle-check"] = "circle-check",
        ["circle-i"] = "circle-i",
        ["circle-minus"] = "circle-minus",
        ["circle-person"] = "circle-person",
        ["circle-person-three-horizontal-bars-wrapping-right"] = "circle-person-three-horizontal-bars-wrapping-right",
        ["circle-play"] = "circle-play",
        ["circle-plus"] = "circle-plus",
        ["circle-question"] = "circle-question",
        ["circle-slash"] = "circle-slash",
        ["circle-star"] = "circle-star",
        ["circle-three-dots-horizontal"] = "circle-three-dots-horizontal",
        ["circle-three-dots-vertical"] = "circle-three-dots-vertical",
        ["circle-x"] = "circle-x",
        clock = "clock",
        ["clock-dashed"] = "clock-dashed",
        ["clock-spin-reverse"] = "clock-spin-reverse",
        ["clock-spin-reverse-dashed"] = "clock-spin-reverse-dashed",
        ["clothes-hanger"] = "clothes-hanger",
        cloud = "cloud",
        ["cloud-arrow-down"] = "cloud-arrow-down",
        code = "code",
        ["compact-makeup-brush"] = "compact-makeup-brush",
        compass = "compass",
        ["controller-with-cog"] = "controller-with-cog",
        crop = "crop",
        crosshairs = "crosshairs",
        ["crosshairs-slash"] = "crosshairs-slash",
        ["cube-vertexes"] = "cube-vertexes",
        ["curved-rectangle-megaphone"] = "curved-rectangle-megaphone",
        ["diagonal-line-pattern"] = "diagonal-line-pattern",
        ["diagonal-line-pattern-sticker"] = "diagonal-line-pattern-sticker",
        ["diamond-simplified"] = "diamond-simplified",
        discord = "discord",
        ["disguise-nose-glasses"] = "disguise-nose-glasses",
        ["document-circle-slash"] = "document-circle-slash",
        ["document-list-heart"] = "document-list-heart",
        ["door-open-arrow-to-bottom-right"] = "door-open-arrow-to-bottom-right",
        dress = "dress",
        ["dual-arrows-horizontal"] = "dual-arrows-horizontal",
        ["dual-arrows-to-corners"] = "dual-arrows-to-corners",
        ["dual-arrows-vertical"] = "dual-arrows-vertical",
        envelope = "envelope",
        eraser = "eraser",
        eye = "eye",
        ["eye-slash"] = "eye-slash",
        ["eye-with-eyeliner"] = "eye-with-eyeliner",
        eyebrows = "eyebrows",
        eyelashes = "eyelashes",
        ["face-winking"] = "face-winking",
        facebook = "facebook",
        ["file-box"] = "file-box",
        fingerprint = "fingerprint",
        flag = "flag",
        flame = "flame",
        folder = "folder",
        ["fountain-pen-nib"] = "fountain-pen-nib",
        ["four-bars-horizontal-center-aligned"] = "four-bars-horizontal-center-aligned",
        ["four-bars-horizontal-chevron-left"] = "four-bars-horizontal-chevron-left",
        ["four-bars-horizontal-chevron-right"] = "four-bars-horizontal-chevron-right",
        ["four-bars-horizontal-justified-aligned"] = "four-bars-horizontal-justified-aligned",
        ["four-bars-horizontal-left-aligned"] = "four-bars-horizontal-left-aligned",
        ["four-bars-horizontal-right-aligned"] = "four-bars-horizontal-right-aligned",
        ["frame-bubble-slash"] = "frame-bubble-slash",
        ["frame-bubble-soundwave"] = "frame-bubble-soundwave",
        ["frame-camera"] = "frame-camera",
        ["frame-camera-center"] = "frame-camera-center",
        ["frame-collapsed"] = "frame-collapsed",
        ["frame-corners"] = "frame-corners",
        ["frame-expanded"] = "frame-expanded",
        ["frame-face"] = "frame-face",
        ["frame-person-torso"] = "frame-person-torso",
        ["frame-record"] = "frame-record",
        ["frame-single-bar-horizontal"] = "frame-single-bar-horizontal",
        ["frame-soundwave"] = "frame-soundwave",
        ["frame-video-camera"] = "frame-video-camera",
        gear = "gear",
        ["generic-dpad"] = "generic-dpad",
        ["gift-box"] = "gift-box",
        ["gift-card"] = "gift-card",
        glasses = "glasses",
        ["globe-detailed"] = "globe-detailed",
        ["globe-simplified"] = "globe-simplified",
        ["globe-simplipfied-speech-bubble"] = "globe-simplipfied-speech-bubble",
        grid = "grid",
        guilded = "guilded",
        ["hack-week"] = "hack-week",
        ["hammer-code"] = "hammer-code",
        ["hand-curved-arrow-left"] = "hand-curved-arrow-left",
        ["hand-dual-arrows"] = "hand-dual-arrows",
        ["hand-ellipse"] = "hand-ellipse",
        ["hand-half-ellipse"] = "hand-half-ellipse",
        ["hand-two-arrows-horizontal"] = "hand-two-arrows-horizontal",
        hashtag = "hashtag",
        ["hat-fedora"] = "hat-fedora",
        ["hat-toque"] = "hat-toque",
        ["head-blank"] = "head-blank",
        ["head-blush"] = "head-blush",
        ["head-female"] = "head-female",
        ["head-freckles"] = "head-freckles",
        ["head-lips"] = "head-lips",
        ["head-male"] = "head-male",
        headphones = "headphones",
        ["headphones-arrow-up"] = "headphones-arrow-up",
        ["headphones-arrow-up-lock"] = "headphones-arrow-up-lock",
        ["headphones-slash"] = "headphones-slash",
        ["headphones-x"] = "headphones-x",
        ["headphones-x-lock"] = "headphones-x-lock",
        heart = "heart",
        house = "house",
        image = "image",
        ["image-stacked"] = "image-stacked",
        instagram = "instagram",
        jacket = "jacket",
        key = "key",
        ["key-alt"] = "key-alt",
        ["key-apostrophe"] = "key-apostrophe",
        ["key-arrow-down"] = "key-arrow-down",
        ["key-arrow-right"] = "key-arrow-right",
        ["key-arrow-up"] = "key-arrow-up",
        ["key-asterisk"] = "key-asterisk",
        ["key-backspace"] = "key-backspace",
        ["key-caps-lock"] = "key-caps-lock",
        ["key-caret"] = "key-caret",
        ["key-comma"] = "key-comma",
        ["key-command"] = "key-command",
        ["key-control"] = "key-control",
        ["key-grave-accent"] = "key-grave-accent",
        ["key-period"] = "key-period",
        ["key-return"] = "key-return",
        ["key-shift"] = "key-shift",
        ["key-space"] = "key-space",
        ["key-tab"] = "key-tab",
        ["language-characters"] = "language-characters",
        ["leg-left"] = "leg-left",
        ["leg-right"] = "leg-right",
        ["lightning-bolt"] = "lightning-bolt",
        linkedin = "linkedin",
        lips = "lips",
        lipstick = "lipstick",
        ["list-bulleted"] = "list-bulleted",
        ["location-pin"] = "location-pin",
        ["location-pin-map"] = "location-pin-map",
        ["lock-closed"] = "lock-closed",
        lollipop = "lollipop",
        ["magnifying-glass"] = "magnifying-glass",
        ["magnifying-glass-minus"] = "magnifying-glass-minus",
        ["magnifying-glass-plus"] = "magnifying-glass-plus",
        mascara = "mascara",
        megaphone = "megaphone",
        ["memory-card"] = "memory-card",
        messenger = "messenger",
        microphone = "microphone",
        ["microphone-slash"] = "microphone-slash",
        ["microphone-text-box"] = "microphone-text-box",
        ["microphone-triangle-exclamation"] = "microphone-triangle-exclamation",
        minus = "minus",
        ["minus-small"] = "minus-small",
        ["mirror-standing"] = "mirror-standing",
        moments = "moments",
        moon = "moon",
        ["mouse-button-left"] = "mouse-button-left",
        ["mouse-button-right"] = "mouse-button-right",
        ["mouse-scrollwheel"] = "mouse-scrollwheel",
        ["music-note"] = "music-note",
        nebula = "nebula",
        necklace = "necklace",
        ["nine-dots-grid"] = "nine-dots-grid",
        ninja = "ninja",
        nose = "nose",
        page = "page",
        ["paint-brush"] = "paint-brush",
        ["paint-bucket"] = "paint-bucket",
        pants = "pants",
        ["pants-2d-text"] = "pants-2d-text",
        ["paper-airplane"] = "paper-airplane",
        parrot = "parrot",
        ["pause-large"] = "pause-large",
        ["pause-small"] = "pause-small",
        pencil = "pencil",
        ["pencil-square"] = "pencil-square",
        person = "person",
        ["person-arrow-from-bottom-right"] = "person-arrow-from-bottom-right",
        ["person-check"] = "person-check",
        ["person-circle-slash"] = "person-circle-slash",
        ["person-climbing"] = "person-climbing",
        ["person-clock"] = "person-clock",
        ["person-falling"] = "person-falling",
        ["person-graduate"] = "person-graduate",
        ["person-jumping"] = "person-jumping",
        ["person-magnifying-glass"] = "person-magnifying-glass",
        ["person-photo-camera"] = "person-photo-camera",
        ["person-play"] = "person-play",
        ["person-play-clock"] = "person-play-clock",
        ["person-plus"] = "person-plus",
        ["person-racing"] = "person-racing",
        ["person-running"] = "person-running",
        ["person-standing"] = "person-standing",
        ["person-standing-arrow-reverse"] = "person-standing-arrow-reverse",
        ["person-standing-dual-arrows-vertical"] = "person-standing-dual-arrows-vertical",
        ["person-standing-gear"] = "person-standing-gear",
        ["person-swimming"] = "person-swimming",
        ["person-teleport"] = "person-teleport",
        ["person-trash-can"] = "person-trash-can",
        ["person-walking"] = "person-walking",
        ["person-with-smaller-person"] = "person-with-smaller-person",
        phone = "phone",
        ["phone-down"] = "phone-down",
        ["phone-plus"] = "phone-plus",
        ["phone-volume"] = "phone-volume",
        ["phone-x"] = "phone-x",
        ["photo-camera"] = "photo-camera",
        ["photo-camera-face"] = "photo-camera-face",
        ["photo-camera-slash"] = "photo-camera-slash",
        ["picture-in-picture"] = "picture-in-picture",
        pig = "pig",
        pin = "pin",
        ["pin-slash"] = "pin-slash",
        ["play-large"] = "play-large",
        ["play-small"] = "play-small",
        ["plus-large"] = "plus-large",
        ["plus-small"] = "plus-small",
        premium = "premium",
        ["ps-circle"] = "ps-circle",
        ["ps-dpad-down"] = "ps-dpad-down",
        ["ps-dpad-left"] = "ps-dpad-left",
        ["ps-dpad-right"] = "ps-dpad-right",
        ["ps-dpad-up"] = "ps-dpad-up",
        ["ps-l1"] = "ps-l1",
        ["ps-l2"] = "ps-l2",
        ["ps-l3"] = "ps-l3",
        ["ps-r1"] = "ps-r1",
        ["ps-r2"] = "ps-r2",
        ["ps-r3"] = "ps-r3",
        ["ps-square"] = "ps-square",
        ["ps-stick-left"] = "ps-stick-left",
        ["ps-stick-right"] = "ps-stick-right",
        ["ps-triagle"] = "ps-triagle",
        ["ps-x"] = "ps-x",
        ["ps4-options"] = "ps4-options",
        ["ps4-share"] = "ps4-share",
        ["ps4-touchpad"] = "ps4-touchpad",
        ["ps5-options"] = "ps5-options",
        ["ps5-share"] = "ps5-share",
        ["ps5-touchpad"] = "ps5-touchpad",
        pumpkin = "pumpkin",
        purse = "purse",
        ["rectangle-list"] = "rectangle-list",
        ["rectangle-numbers-counting"] = "rectangle-numbers-counting",
        ["rectangle-person-with-three-horizontal-lines"] = "rectangle-person-with-three-horizontal-lines",
        robux = "robux",
        ["rosette-seven-point"] = "rosette-seven-point",
        ["rosette-ten-point"] = "rosette-ten-point",
        ["seven-point-rosette"] = "seven-point-rosette",
        ["shield-check"] = "shield-check",
        ["shield-lock"] = "shield-lock",
        shirt = "shirt",
        ["shirt-2d-text"] = "shirt-2d-text",
        ["shirt-pants"] = "shirt-pants",
        ["shoe-left"] = "shoe-left",
        ["shoe-right"] = "shoe-right",
        ["shopping-basket"] = "shopping-basket",
        ["shopping-basket-check"] = "shopping-basket-check",
        ["shopping-cart"] = "shopping-cart",
        shorts = "shorts",
        sidebar = "sidebar",
        ["signal-exclamation"] = "signal-exclamation",
        ["six-dots-two-column-grid"] = "six-dots-two-column-grid",
        ["skip-end-large"] = "skip-end-large",
        ["skip-end-small"] = "skip-end-small",
        ["skip-next-large"] = "skip-next-large",
        ["skip-next-small"] = "skip-next-small",
        ["skip-previous-large"] = "skip-previous-large",
        ["skip-previous-small"] = "skip-previous-small",
        ["skip-start-large"] = "skip-start-large",
        ["skip-start-small"] = "skip-start-small",
        ["smartphone-portrait"] = "smartphone-portrait",
        speaker = "speaker",
        ["speaker-slash"] = "speaker-slash",
        ["speaker-triangle-exclamation"] = "speaker-triangle-exclamation",
        ["speaker-x"] = "speaker-x",
        ["speech-bubble-align-center"] = "speech-bubble-align-center",
        ["speech-bubble-align-left"] = "speech-bubble-align-left",
        ["speech-bubble-exclamation"] = "speech-bubble-exclamation",
        ["speech-bubble-round"] = "speech-bubble-round",
        ["square-bone"] = "square-bone",
        ["square-books"] = "square-books",
        ["square-check"] = "square-check",
        ["square-code"] = "square-code",
        ["square-dashed-person-standing"] = "square-dashed-person-standing",
        ["square-dual-arrows-horizontal"] = "square-dual-arrows-horizontal",
        ["square-dual-arrows-to-corner"] = "square-dual-arrows-to-corner",
        ["square-face-sound"] = "square-face-sound",
        ["square-face-waving-hand"] = "square-face-waving-hand",
        ["square-face-winking"] = "square-face-winking",
        ["square-minus"] = "square-minus",
        ["square-person"] = "square-person",
        ["squares-grid-plus"] = "squares-grid-plus",
        ["squares-grid-qr"] = "squares-grid-qr",
        ["stacked-squares-arrow-down-left"] = "stacked-squares-arrow-down-left",
        ["stacked-squares-arrow-up-right"] = "stacked-squares-arrow-up-right",
        ["stacked-squares-plus"] = "stacked-squares-plus",
        star = "star",
        ["stop-large"] = "stop-large",
        ["stop-small"] = "stop-small",
        studio = "studio",
        sun = "sun",
        sweater = "sweater",
        sword = "sword",
        ["tag-sparkle"] = "tag-sparkle",
        teletype = "teletype",
        ["tencent-qq"] = "tencent-qq",
        ["text-b-bold"] = "text-b-bold",
        ["text-box-microphone"] = "text-box-microphone",
        ["text-h-subscript-1"] = "text-h-subscript-1",
        ["text-h-subscript-2"] = "text-h-subscript-2",
        ["text-h-subscript-3"] = "text-h-subscript-3",
        ["text-i-italic"] = "text-i-italic",
        ["text-s-strikethrough"] = "text-s-strikethrough",
        ["text-u-underline"] = "text-u-underline",
        ["text-uppercase-a-lowercase-a"] = "text-uppercase-a-lowercase-a",
        ["text-x-subscript-2"] = "text-x-subscript-2",
        ["text-x-superscript-2"] = "text-x-superscript-2",
        ["three-bars-horizontal"] = "three-bars-horizontal",
        ["three-bars-horizontal-chevron-left"] = "three-bars-horizontal-chevron-left",
        ["three-bars-horizontal-narrowing"] = "three-bars-horizontal-narrowing",
        ["three-bars-horizontal-triangles-vertical"] = "three-bars-horizontal-triangles-vertical",
        ["three-bars-vertical-triangles-horizontal"] = "three-bars-vertical-triangles-horizontal",
        ["three-chevrons-enlarging-down"] = "three-chevrons-enlarging-down",
        ["three-chevrons-enlarging-up"] = "three-chevrons-enlarging-up",
        ["three-dots-horizontal"] = "three-dots-horizontal",
        ["three-dots-vertical"] = "three-dots-vertical",
        ["three-horizontal-bars-wrapping-right"] = "three-horizontal-bars-wrapping-right",
        ["three-people"] = "three-people",
        ["three-ring-note"] = "three-ring-note",
        ["three-sliders-horizontal"] = "three-sliders-horizontal",
        ["three-stacked-squares-tilted"] = "three-stacked-squares-tilted",
        ["thumb-down"] = "thumb-down",
        ["thumb-up"] = "thumb-up",
        ["tik-tok"] = "tik-tok",
        tilt = "tilt",
        torso = "torso",
        ["trash-can"] = "trash-can",
        ["triangle-exclamation"] = "triangle-exclamation",
        trophy = "trophy",
        tshirt = "tshirt",
        ["tshirt-2d-text"] = "tshirt-2d-text",
        ["tshirt-dual-arrows"] = "tshirt-dual-arrows",
        twitch = "twitch",
        twitter = "twitter",
        ["two-arrows-down-and-up"] = "two-arrows-down-and-up",
        ["two-arrows-from-center"] = "two-arrows-from-center",
        ["two-arrows-left-right"] = "two-arrows-left-right",
        ["two-arrows-loop-clockwise"] = "two-arrows-loop-clockwise",
        ["two-arrows-loop-clockwise-1"] = "two-arrows-loop-clockwise-1",
        ["two-arrows-loop-clockwise-infinity"] = "two-arrows-loop-clockwise-infinity",
        ["two-arrows-spin-clockwise"] = "two-arrows-spin-clockwise",
        ["two-arrows-spin-clockwise-plus"] = "two-arrows-spin-clockwise-plus",
        ["two-arrows-switch-right"] = "two-arrows-switch-right",
        ["two-arrows-to-center"] = "two-arrows-to-center",
        ["two-folders"] = "two-folders",
        ["two-location-pins-connecting-arrow"] = "two-location-pins-connecting-arrow",
        ["two-makeup-brushes"] = "two-makeup-brushes",
        ["two-people"] = "two-people",
        ["two-people-speech-bubble"] = "two-people-speech-bubble",
        ["two-stacked-squares"] = "two-stacked-squares",
        ["two-switches-horizontal"] = "two-switches-horizontal",
        ["verified-backplate"] = "verified-backplate",
        ["verified-check"] = "verified-check",
        ["verified-mono"] = "verified-mono",
        ["video-camera"] = "video-camera",
        ["video-camera-arrow-to-bottom-left"] = "video-camera-arrow-to-bottom-left",
        ["video-camera-arrow-to-top-right"] = "video-camera-arrow-to-top-right",
        ["video-camera-slash"] = "video-camera-slash",
        ["video-camera-triangle-exclamation"] = "video-camera-triangle-exclamation",
        ["video-camera-x"] = "video-camera-x",
        wallet = "wallet",
        ["we-chat"] = "we-chat",
        whatsapp = "whatsapp",
        x = "x",
        ["x-small"] = "x-small",
        ["xbox-a"] = "xbox-a",
        ["xbox-a-pressed"] = "xbox-a-pressed",
        ["xbox-a-unpressed"] = "xbox-a-unpressed",
        ["xbox-b"] = "xbox-b",
        ["xbox-dpad"] = "xbox-dpad",
        ["xbox-dpad-down"] = "xbox-dpad-down",
        ["xbox-dpad-left"] = "xbox-dpad-left",
        ["xbox-dpad-right"] = "xbox-dpad-right",
        ["xbox-dpad-up"] = "xbox-dpad-up",
        ["xbox-lb"] = "xbox-lb",
        ["xbox-lt"] = "xbox-lt",
        ["xbox-menu"] = "xbox-menu",
        ["xbox-rb"] = "xbox-rb",
        ["xbox-rt"] = "xbox-rt",
        ["xbox-stick-left"] = "xbox-stick-left",
        ["xbox-stick-left-directional"] = "xbox-stick-left-directional",
        ["xbox-stick-left-horizontal"] = "xbox-stick-left-horizontal",
        ["xbox-stick-left-vertical"] = "xbox-stick-left-vertical",
        ["xbox-stick-right"] = "xbox-stick-right",
        ["xbox-stick-right-directional"] = "xbox-stick-right-directional",
        ["xbox-stick-right-horizontal"] = "xbox-stick-right-horizontal",
        ["xbox-stick-right-vertical"] = "xbox-stick-right-vertical",
        ["xbox-view"] = "xbox-view",
        ["xbox-x"] = "xbox-x",
        ["xbox-y"] = "xbox-y",
        ["xr-headset"] = "xr-headset",
        youtube = "youtube"
    }
end)
b.IsMouseOverFrame = LPH_NO_VIRTUALIZE(function(t, u)
    if not u then
        return
    end
    if b.Global3DRenderMode then
        if u.GuiState == Enum.GuiState.Hover or u.GuiState == Enum.GuiState.Press then
            return true
        end
        return false
    end
    local v, w = u.AbsolutePosition, u.AbsoluteSize
    if l.X >= v.X and l.X <= v.X + w.X and l.Y >= v.Y and l.Y <= v.Y + w.Y then
        return true
    end
end)
b.CreateSignal = LPH_NO_VIRTUALIZE(function(t, u)
    local v = Instance.new("BindableEvent")
    local w = {
        Value = u,
        __event = v
    }
    w.GetValue = function(x)
        return w.Value
    end
    w.SetValue = function(x, y)
        w.Value = y
        return v:Fire(y)
    end
    w.Connect = function(x, y)
        local z = v.Event:Connect(y)
        b:AddSignal(z)
        return z
    end
    return w
end)
b.SetIconMode = LPH_NO_VIRTUALIZE(function(t, u, v)
    local w = string.lower(string.sub(v, -5)) == "-bold"
    if w then
        u.Text = v:sub(1, -6)
        u.FontFace = b.BuiltInBold
    else
        u.Text = v
        u.FontFace = b.BuiltInRegular
    end
end)
b.GetIconFont = function(t, u)
    local v = string.lower(string.sub(u, -5)) == "-bold"
    if v then
        return b.BuiltInBold
    end
    return b.BuiltInRegular
end
b.MoreThanHalfY = function(t, u)
    return (b.ScreenGui.AbsoluteSize.Y / 2) < u
end
b.IsStudio = g:IsStudio()
b.IsMobile = e.TouchEnabled
b.CreateInput = LPH_NO_VIRTUALIZE(function(t, u, v)
    local w = Instance.new("ImageButton", u)
    w.ZIndex = u.ZIndex + 10
    w.Size = UDim2.fromScale(1, 1)
    w.BackgroundTransparency = 1
    w.ImageTransparency = 1
    w.Image = "rbxasset://textuers/translateIcon.png"
    if v then
        local x = w.MouseButton1Click:Connect(v)
        return w, x
    end
    return w
end)
b.PlayAnimate = LPH_NO_VIRTUALIZE(function(t, u, v)
    local w = d:Create(t, u or TweenInfo.new(0.25), v)
    w:Play()
    return w
end)
b.Drag = LPH_NO_VIRTUALIZE(function(t, u, v)
    local w = false
    local x
    local y
    local z = TweenInfo.new(v)
    local A = function(A)
        local B = A.Position - x
        local C = UDim2.new(y.X.Scale, y.X.Offset + B.X, y.Y.Scale, y.Y.Offset + B.Y)
        if b.Global3DRenderMode then
            b.PlayAnimate(u, z, {
                Position = UDim2.fromScale(0.5, 0.5)
            })
        else
            b.PlayAnimate(u, z, {
                Position = C
            })
        end
    end
    b:AddSignal(t.InputBegan:Connect(function(B)
        if (B.UserInputType == Enum.UserInputType.MouseButton1 or B.UserInputType == Enum.UserInputType.Touch) then
            w = true
            x = B.Position
            y = u.Position
            local C
            C = B.Changed:Connect(function()
                if B.UserInputState == Enum.UserInputState.End then
                    w = false
                    C:Disconnect()
                end
            end)
        end
    end))
    b:AddSignal(e.InputChanged:Connect(function(B)
        if B.UserInputType == Enum.UserInputType.MouseMovement or B.UserInputType == Enum.UserInputType.Touch then
            if w then
                A(B)
            end
        end
    end))
end)
b.Rounding = LPH_NO_VIRTUALIZE(function(t, u)
    local v = 10 ^ (u or 0)
    return math.floor(t * v + 0.5) / v
end)
b.ProcessParams = LPH_NO_VIRTUALIZE(function(t, u, v)
    u = u or {}
    local w = u or {}
    for x, y in next, v do
        w[x] = u[x] or y
    end
    table.clear(v)
    return w
end)
b.EnabledBlur = true
b.BlurModuleParent = workspace.CurrentCamera
b.GetCalculatePosition = LPH_NO_VIRTUALIZE(function(t, u, v, w)
    local x = u
    local y = w
    local z = v - t
    local A = (x.x * z.x) + (x.y * z.y) + (x.z * z.z)
    local B = (x.x * y.x) + (x.y * y.y) + (x.z * y.z)
    local C = -A / B
    return v + (C * w)
end)
b.CreateBlurModule = LPH_NO_VIRTUALIZE(function(t, u, v)
    if not b.EnabledBlur then
        return b:AddSignal(Instance.new("BindableEvent").Event:Connect(function()
            return "nl"
        end))
    end
    local w = Instance.new("Part", b.BlurModuleParent)
    local x = Instance.new("DepthOfFieldEffect", c(game:GetService("Lighting")))
    local y = Instance.new("BlockMesh")
    y.Parent = w
    w.Material = Enum.Material.Glass
    w.Transparency = 1
    w.Reflectance = 1
    w.CastShadow = false
    w.Anchored = true
    w.CanCollide = false
    w.CanQuery = false
    w.CollisionGroup = b.RandomString()
    w.Size = Vector3.new(1, 1, 1) * 0.01
    w.Color = Color3.fromRGB(0, 0, 0)
    x.Enabled = true
    x.FarIntensity = 0
    x.FocusDistance = 0
    x.InFocusRadius = 1000
    x.NearIntensity = 1
    x.Name = b.RandomString()
    w.Name = b.RandomString()
    local z
    local A = function()
        local A = v:GetValue()
        if A and not b.Global3DRenderMode then
            b.PlayAnimate(x, TweenInfo.new(0.1), {
                NearIntensity = 1
            })
            b.PlayAnimate(w, TweenInfo.new(0.1), {
                Transparency = 0.97,
                Size = Vector3.new(1, 1, 1) * 0.01
            })
            w.Parent = b.BlurModuleParent
        else
            b.PlayAnimate(x, TweenInfo.new(0.1), {
                NearIntensity = 0
            })
            b.PlayAnimate(w, TweenInfo.new(0.1), {
                Size = Vector3.zero,
                Transparency = 1.5
            })
            w.Parent = nil
            return false
        end
        if A then
            local B = u.AbsolutePosition
            local C = B + u.AbsoluteSize
            local D = m.ScreenPointToRay(m, B.X, B.Y, 1)
            local E = m.ScreenPointToRay(m, C.X, C.Y, 1)
            local F = m.CFrame.Position + m.CFrame.LookVector * (0.05 - m.NearPlaneZ)
            local G = m.CFrame.LookVector
            local H = b.GetCalculatePosition(F, G, D.Origin, D.Direction)
            local I = b.GetCalculatePosition(F, G, E.Origin, E.Direction)
            H = m.CFrame:PointToObjectSpace(H)
            I = m.CFrame:PointToObjectSpace(I)
            local J = I - H
            local K = (H + I) / 2
            y.Offset = K
            y.Scale = J / 0.0101
            w.CFrame = m.CFrame
        end
    end
    local B = b:AddSignal(m:GetPropertyChangedSignal("CFrame"):Connect(A))
    local C = b:AddSignal(e.InputChanged:Connect(function(C)
        if C.UserInputType == Enum.UserInputType.MouseButton1 or C.UserInputType == Enum.UserInputType.MouseMovement or C.UserInputType == Enum.UserInputType.Touch then
            pcall(A)
        end
    end))
    local D = task.spawn(function()
        while true do
            task.wait(0.1)
            pcall(A)
        end
    end)
    z = function()
        B:Disconnect()
        C:Disconnect()
        task.cancel(D)
        w:Destroy()
        x:Destroy()
    end
    u.Destroying:Connect(z)
    return B
end)
local t = function()
    -- empty block
end
b.RollingEffect = function(u, v)
    local w = Instance.new("UIGradient")
    w.Transparency = NumberSequence.new({
        NumberSequenceKeypoint.new(0, 0.4),
        NumberSequenceKeypoint.new(1, 0)
    })
    w.Parent = v
    return w
end
b.CreateShadow = function(u, v, w)
    local x = {}
    local y = Instance.new("UIStroke")
    local z = Instance.new("UIStroke")
    local A = Instance.new("UIStroke")
    local B = Instance.new("UIStroke")
    y.Thickness = 6
    y.Transparency = 1
    y.Parent = v
    z.Thickness = 5
    z.Transparency = 1
    z.Parent = v
    A.Thickness = 4
    A.Transparency = 1
    A.Parent = v
    B.Thickness = 3
    B.Transparency = 1
    B.Parent = v
    local C
    local D, E, F, G
    if w then
        D = b:RollingEffect(y)
        E = b:RollingEffect(z)
        F = b:RollingEffect(A)
        G = b:RollingEffect(B)
    end
    x.Render = LPH_NO_VIRTUALIZE(function(H, I)
        if C then
            task.cancel(C)
            C = nil
        end
        if I then
            b.PlayAnimate(y, q, {
                Transparency = 0.9
            })
            b.PlayAnimate(z, q, {
                Transparency = 0.9
            })
            b.PlayAnimate(A, q, {
                Transparency = 0.9
            })
            b.PlayAnimate(B, q, {
                Transparency = 0.9
            })
            if w then
                C = task.spawn(function()
                    local J = 20
                    while true do
                        task.wait(0.025)
                        b.PlayAnimate(D, q, {
                            Rotation = D.Rotation + J
                        })
                        b.PlayAnimate(E, q, {
                            Rotation = E.Rotation + J
                        })
                        b.PlayAnimate(F, q, {
                            Rotation = F.Rotation + J
                        })
                        b.PlayAnimate(G, q, {
                            Rotation = G.Rotation + J
                        })
                    end
                end)
            end
        else
            b.PlayAnimate(y, q, {
                Transparency = 1
            })
            b.PlayAnimate(z, q, {
                Transparency = 1
            })
            b.PlayAnimate(A, q, {
                Transparency = 1
            })
            b.PlayAnimate(B, q, {
                Transparency = 1
            })
        end
    end)
    return x
end
b.CreateOptionWindow = function(u, v, w)
    w = w or 9
    local x = {
        Signal = b:CreateSignal(false)
    }
    local y = Instance.new("Frame")
    local z = Instance.new("UICorner")
    local A = Instance.new("UIListLayout")
    local B = Instance.new("UIStroke")
    local C = b:CreateShadow(y)
    y.Name = b.RandomString()
    y.Parent = b.ScreenGui
    y.AnchorPoint = Vector2.new(0, 0)
    y.BackgroundColor3 = Color3.fromRGB(20, 22, 27)
    y.BackgroundTransparency = 0.035
    y.BorderColor3 = Color3.fromRGB(0, 0, 0)
    y.BorderSizePixel = 0
    y.ClipsDescendants = true
    y.Position = UDim2.new(255, 255, 255, 255)
    y.Size = UDim2.new(0, 220, 0, 75)
    y.ZIndex = w + 9
    z.CornerRadius = UDim.new(0, 10)
    z.Parent = y
    A.Parent = y
    A.HorizontalAlignment = Enum.HorizontalAlignment.Center
    A.SortOrder = Enum.SortOrder.LayoutOrder
    B.Transparency = 0.65
    B.Color = Color3.fromRGB(45, 48, 58)
    B.Parent = y
    b:AddSignal(A:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(LPH_NO_VIRTUALIZE(function()
        b.PlayAnimate(y, q, {
            Size = UDim2.new(0, 220, 0, A.AbsoluteContentSize.Y - 1)
        })
    end)))
    b:AddSignal(y:GetPropertyChangedSignal("BackgroundTransparency"):Connect(LPH_NO_VIRTUALIZE(function()
        if y.BackgroundTransparency > 0.9 then
            y.Visible = false
            A.Parent = nil
            y.Parent = nil
        else
            y.Visible = true
            A.Parent = y
            if b.Global3DRenderMode then
                y.Parent = b.GlobalSurfaceGui
            else
                y.Parent = b.ScreenGui
            end
        end
    end)))
    local D
    local E = LPH_NO_VIRTUALIZE(function()
        if b:MoreThanHalfY(v.AbsolutePosition.Y + 65) then
            y.AnchorPoint = Vector2.new(0, 1)
        else
            y.AnchorPoint = Vector2.new(0, 0)
        end
        y.Position = UDim2.fromOffset(v.AbsolutePosition.X + 18, v.AbsolutePosition.Y + 65)
    end)
    x.SetRender = LPH_NO_VIRTUALIZE(function(F)
        if D then
            task.cancel(D)
            D = nil
        end
        if F then
            E()
            b.PlayAnimate(y, q, {
                BackgroundTransparency = 0.035
            })
            b.PlayAnimate(B, q, {
                Transparency = 0.65
            })
            C:Render(true)
            if b.Global3DRenderMode then
                y.Parent = b.GlobalSurfaceGui
            else
                y.Parent = b.ScreenGui
            end
            D = task.spawn(function()
                while true do
                    task.wait()
                    E()
                end
            end)
        else
            b.PlayAnimate(y, q, {
                BackgroundTransparency = 1
            })
            b.PlayAnimate(B, q, {
                Transparency = 1
            })
            C:Render(false)
        end
    end)
    x.SetRender(false)
    x.Signal:Connect(x.SetRender)
    local F = b:RegisiterItem(y, x.Signal)
    F.Winbdow = x
    F.Root = y
    F.Signal = x.Signal
    return F
end
b.CreateColorPicker = function(u, v)
    local w = v.ZIndex
    local x = {}
    local y = Instance.new("Frame")
    local z = Instance.new("UICorner")
    local A = Instance.new("UIStroke")
    local B = Instance.new("ImageLabel")
    local C = Instance.new("UICorner")
    local D = Instance.new("Frame")
    local E = Instance.new("UICorner")
    local F = Instance.new("UIStroke")
    local G = Instance.new("Frame")
    local H = Instance.new("UIGradient")
    local I = Instance.new("UICorner")
    local J = Instance.new("Frame")
    local K = Instance.new("UIStroke")
    local L = Instance.new("UICorner")
    local M = Instance.new("TextLabel")
    local N = Instance.new("UICorner")
    local O = b:CreateShadow(y)
    y.Name = b.RandomString()
    y.Parent = b.ScreenGui
    y.AnchorPoint = Vector2.new(0, 0)
    y.BackgroundColor3 = Color3.fromRGB(20, 22, 27)
    y.BackgroundTransparency = 0.035
    y.BorderColor3 = Color3.fromRGB(0, 0, 0)
    y.BorderSizePixel = 0
    y.ClipsDescendants = true
    y.Position = UDim2.new(255, 0, 255, 20)
    y.Size = UDim2.new(0, 200, 0, 240)
    y.ZIndex = w + 125
    b:AddSignal(y:GetPropertyChangedSignal("BackgroundTransparency"):Connect(LPH_NO_VIRTUALIZE(function()
        if y.BackgroundTransparency > 0.9 then
            y.Visible = false
            y.Parent = nil
        else
            y.Visible = true
            if b.Global3DRenderMode then
                y.Parent = b.GlobalSurfaceGui
            else
                y.Parent = b.ScreenGui
            end
        end
    end)))
    z.CornerRadius = UDim.new(0, 10)
    z.Parent = y
    A.Transparency = 0.65
    A.Color = Color3.fromRGB(45, 48, 58)
    A.Parent = y
    B.Name = b.RandomString()
    B.Parent = y
    B.AnchorPoint = Vector2.new(0.5, 0)
    B.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
    B.BorderColor3 = Color3.fromRGB(0, 0, 0)
    B.BorderSizePixel = 0
    B.Position = UDim2.new(0.5, 0, 0, 5)
    B.Size = UDim2.new(0, 185, 0, 185)
    B.ZIndex = w + 126
    B.Image = b.ImageColorMapping
    C.CornerRadius = UDim.new(0, 5)
    C.Parent = B
    D.Name = b.RandomString()
    D.Parent = B
    D.AnchorPoint = Vector2.new(0.5, 0.5)
    D.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    D.BackgroundTransparency = 1
    D.BorderColor3 = Color3.fromRGB(0, 0, 0)
    D.BorderSizePixel = 0
    D.Position = UDim2.new(0.5, 0, 0.5, 0)
    D.Size = UDim2.new(0, 10, 0, 10)
    D.ZIndex = w + 127
    E.CornerRadius = UDim.new(1, 0)
    E.Parent = D
    F.Color = Color3.fromRGB(255, 255, 255)
    F.Parent = D
    G.Name = b.RandomString()
    G.Parent = y
    G.AnchorPoint = Vector2.new(0.5, 0)
    G.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    G.BorderColor3 = Color3.fromRGB(0, 0, 0)
    G.BorderSizePixel = 0
    G.Position = UDim2.new(0.5, 0, 0, 200)
    G.Size = UDim2.new(1, -15, 0, 10)
    G.ZIndex = w + 126
    H.Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 0)),
        ColorSequenceKeypoint.new(0.1, Color3.fromRGB(255, 153, 0)),
        ColorSequenceKeypoint.new(0.2, Color3.fromRGB(203, 255, 0)),
        ColorSequenceKeypoint.new(0.3, Color3.fromRGB(50, 255, 0)),
        ColorSequenceKeypoint.new(0.4, Color3.fromRGB(0, 255, 102)),
        ColorSequenceKeypoint.new(0.5, Color3.fromRGB(0, 255, 255)),
        ColorSequenceKeypoint.new(0.6, Color3.fromRGB(0, 101, 255)),
        ColorSequenceKeypoint.new(0.7, Color3.fromRGB(50, 0, 255)),
        ColorSequenceKeypoint.new(0.8, Color3.fromRGB(204, 0, 255)),
        ColorSequenceKeypoint.new(0.9, Color3.fromRGB(255, 0, 153)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 0))
    })
    H.Parent = G
    I.CornerRadius = UDim.new(0, 3)
    I.Parent = G
    J.Name = b.RandomString()
    J.Parent = G
    J.AnchorPoint = Vector2.new(0.5, 0.5)
    J.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    J.BackgroundTransparency = 1
    J.BorderColor3 = Color3.fromRGB(0, 0, 0)
    J.BorderSizePixel = 0
    J.Position = UDim2.new(0, 0, 0.5, 0)
    J.Size = UDim2.new(0, 5, 1, 0)
    J.ZIndex = w + 126
    K.Thickness = 2
    K.Color = Color3.fromRGB(255, 255, 255)
    K.Parent = J
    L.CornerRadius = UDim.new(0, 3)
    L.Parent = J
    M.Name = b.RandomString()
    M.Parent = y
    M.BackgroundColor3 = Color3.fromRGB(26, 28, 36)
    M.BackgroundTransparency = 0.75
    M.BorderColor3 = Color3.fromRGB(0, 0, 0)
    M.BorderSizePixel = 0
    M.Position = UDim2.new(0, 10, 0, 217)
    M.Size = UDim2.new(1, -20, 0, 15)
    M.ZIndex = w + 127
    M.Font = Enum.Font.GothamBold
    M.Text = "#FFFFFF"
    M.TextColor3 = Color3.fromRGB(255, 255, 255)
    M.TextSize = 12
    M.TextTransparency = 0.4
    M.TextXAlignment = Enum.TextXAlignment.Left
    N.CornerRadius = UDim.new(0, 4)
    N.Parent = M
    x.SetRender = LPH_NO_VIRTUALIZE(function(P)
        if P then
            y.Position = UDim2.new(0, v.AbsolutePosition.X + 20, 0, v.AbsolutePosition.Y + 75)
            b.PlayAnimate(y, q, {
                BackgroundTransparency = 0.035
            })
            b.PlayAnimate(A, q, {
                Transparency = 0.65
            })
            b.PlayAnimate(B, q, {
                BackgroundTransparency = 0,
                ImageTransparency = 0
            })
            b.PlayAnimate(F, q, {
                Transparency = 0
            })
            b.PlayAnimate(G, q, {
                BackgroundTransparency = 0
            })
            b.PlayAnimate(K, q, {
                Transparency = 0
            })
            b.PlayAnimate(M, q, {
                BackgroundTransparency = 0.75,
                TextTransparency = 0.4
            })
            O:Render(true)
        else
            b.PlayAnimate(y, q, {
                BackgroundTransparency = 1
            })
            b.PlayAnimate(A, q, {
                Transparency = 1
            })
            b.PlayAnimate(B, q, {
                BackgroundTransparency = 1,
                ImageTransparency = 1
            })
            b.PlayAnimate(F, q, {
                Transparency = 1
            })
            b.PlayAnimate(G, q, {
                BackgroundTransparency = 1
            })
            b.PlayAnimate(K, q, {
                Transparency = 1
            })
            b.PlayAnimate(M, q, {
                BackgroundTransparency = 1,
                TextTransparency = 1
            })
            O:Render(false)
        end
    end)
    x.SetRender(false)
    x.Root = y
    x.H = 1
    x.S = 1
    x.V = 1
    x.Callback = t
    x.Update = function(P)
        local Q = Color3.fromHSV(x.H, x.S, x.V)
        b.PlayAnimate(D, p, {
            Position = UDim2.fromScale(x.S, 1 - x.V)
        })
        b.PlayAnimate(B, p, {
            BackgroundColor3 = Color3.fromHSV(x.H, 1, 1)
        })
        b.PlayAnimate(J, p, {
            Position = UDim2.fromScale(x.H, 0.5)
        })
        M.Text = "#" .. Q:ToHex()
        x.Callback(Q)
    end
    x.SetValue = function(P, Q)
        if typeof(Q) == "string" then
            Q = Color3.fromHex(Q)
        end
        local R, S, T = Q:ToHSV()
        x.H = R
        x.S = S
        x.V = T
        x:Update()
    end
    x.IsHold = false
    b:AddSignal(y.InputBegan:Connect(function(P)
        if P.UserInputType == Enum.UserInputType.MouseButton1 or P.UserInputType == Enum.UserInputType.Touch then
            x.IsHold = true
        end
    end))
    b:AddSignal(y.InputEnded:Connect(function(P)
        if P.UserInputType == Enum.UserInputType.MouseButton1 or P.UserInputType == Enum.UserInputType.Touch then
            x.IsHold = false
        end
    end))
    b:AddSignal(G.InputBegan:Connect(LPH_NO_VIRTUALIZE(function(P)
        if P.UserInputType == Enum.UserInputType.MouseButton1 or P.UserInputType == Enum.UserInputType.Touch then
            x.IsHold = true
            while (e:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) or x.IsHold) do
                task.wait()
                local Q = G.AbsolutePosition.X
                local R = Q + G.AbsoluteSize.X
                local S = math.clamp(l.X, Q, R)
                local T = ((S - Q) / (R - Q))
                x.H = T
                x:Update()
            end
        end
    end)))
    b:AddSignal(B.InputBegan:Connect(LPH_NO_VIRTUALIZE(function(P)
        if P.UserInputType == Enum.UserInputType.MouseButton1 or P.UserInputType == Enum.UserInputType.Touch then
            x.IsHold = true
            while (e:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) or x.IsHold) do
                task.wait()
                local Q = B.AbsolutePosition.X
                local R = Q + B.AbsoluteSize.X
                local S, T = math.clamp(l.X, Q, R), B.AbsolutePosition.Y
                local U = T + B.AbsoluteSize.Y
                local V = math.clamp(l.Y, T, U)
                x.S = (S - Q) / (R - Q)
                x.V = (1 - ((V - T) / (U - T)))
                x:Update()
            end
        end
    end)))
    return x
end
b.KeyEnum = {
    One = "1",
    Two = "2",
    Three = "3",
    Four = "4",
    Five = "5",
    Six = "6",
    Seven = "7",
    Eight = "8",
    Nine = "9",
    Zero = "0",
    Minus = "-",
    Plus = "+",
    BackSlash = "\\",
    Slash = "/",
    Period = ".",
    Semicolon = ";",
    Colon = ":",
    LeftControl = "LCtrl",
    RightControl = "RCtrl",
    LeftShift = "LShift",
    RightShift = "RShift",
    Return = "Enter",
    LeftBracket = "[",
    RightBracket = "]",
    Quote = "'",
    Comma = ",",
    Equals = "=",
    LeftSuper = "Super",
    RightSuper = "Super",
    LeftAlt = "LAlt",
    RightAlt = "RAlt",
    Escape = "Esc"
}
b.EnumReverse = {}
for u, v in next, b.KeyEnum do
    b.EnumReverse[v] = u
end
b.KeyCodeToStr = function(u, v)
    if typeof(v) == "string" then
        if b.KeyEnum[v] then
            return b.KeyEnum[v]
        end
        return v
    end
    return (b.KeyEnum[v.Name] or v.Name)
end
b.StrToKeyCode = function(u, v)
    if b.EnumReverse[v] then
        return Enum.KeyCode[b.EnumReverse[v]]
    end
    return Enum.KeyCode[v]
end
b.RegisiterHandler = function(u, v, w)
    local x = {}
    local y = v.ZIndex
    x.AddToggle = function(z, A)
        A = b:ProcessParams(A, {
            Default = false,
            Flag = nil,
            Callback = t
        })
        local B = Instance.new("Frame")
        local C = Instance.new("UICorner")
        local D = Instance.new("Frame")
        local E = Instance.new("UICorner")
        B.Name = b.RandomString()
        B.Parent = v
        B.BackgroundColor3 = Color3.fromRGB(10, 13, 21)
        B.BorderColor3 = Color3.fromRGB(0, 0, 0)
        B.BorderSizePixel = 0
        B.ClipsDescendants = true
        B.Size = UDim2.new(0, 30, 0, 18)
        B.ZIndex = y + 13
        B.LayoutOrder = -(#v:GetChildren() + 5)
        C.CornerRadius = UDim.new(1, 0)
        C.Parent = B
        D.Name = b.RandomString()
        D.Parent = B
        D.AnchorPoint = Vector2.new(0.5, 0.5)
        D.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        D.BackgroundTransparency = 0.5
        D.BorderColor3 = Color3.fromRGB(0, 0, 0)
        D.BorderSizePixel = 0
        D.Position = UDim2.new(0.300000012, 0, 0.5, 0)
        D.Size = UDim2.new(0, 16, 0, 16)
        D.ZIndex = y + 14
        E.CornerRadius = UDim.new(1, 0)
        E.Parent = D
        local F = {
            Root = B
        }
        F.SetUI = LPH_NO_VIRTUALIZE(function(G)
            if G then
                b.PlayAnimate(B, q, {
                    BackgroundTransparency = 0,
                    BackgroundColor3 = b.AccentColor
                })
                b.PlayAnimate(D, q, {
                    BackgroundColor3 = Color3.fromRGB(255, 255, 255),
                    BackgroundTransparency = 0,
                    Position = UDim2.new(0.7, 0, 0.5, 0)
                })
            else
                b.PlayAnimate(B, q, {
                    BackgroundTransparency = 0,
                    BackgroundColor3 = Color3.fromRGB(10, 13, 21)
                })
                b.PlayAnimate(D, q, {
                    BackgroundColor3 = Color3.fromRGB(255, 255, 255),
                    BackgroundTransparency = 0.5,
                    Position = UDim2.new(0.300000012, 0, 0.5, 0)
                })
            end
        end)
        F.SetVisible = LPH_NO_VIRTUALIZE(function(G)
            if G then
                F.SetUI(A.Default)
            else
                b.PlayAnimate(B, q, {
                    BackgroundTransparency = 1,
                    BackgroundColor3 = Color3.fromRGB(10, 13, 21)
                })
                b.PlayAnimate(D, q, {
                    BackgroundColor3 = Color3.fromRGB(255, 255, 255),
                    BackgroundTransparency = 1,
                    Position = UDim2.new(0.300000012, 0, 0.5, 0)
                })
            end
        end)
        F.SetUI(A.Default)
        F.SetVisible(w:GetValue())
        b:CreateInput(B, LPH_NO_VIRTUALIZE(function()
            A.Default = not A.Default
            F.SetUI(A.Default)
            A.Callback(A.Default)
        end))
        F.Signal = w:Connect(F.SetVisible)
        F.GetValue = function(G)
            return A.Default
        end
        F.SetValue = function(G, H)
            A.Default = H
            if w:GetValue() then
                F.SetUI(A.Default)
            end
            A.Callback(A.Default)
        end
        if A.Flag then
            b.Flags[A.Flag] = F
        end
        return F
    end
    x.AddSlider = function(z, A)
        A = b:ProcessParams(A, {
            Default = 50,
            Min = 0,
            Max = 10,
            Type = "",
            Rounding = 0,
            Nums = {},
            Flag = nil,
            Size = 125,
            Callback = t
        })
        local B = {}
        B.GetSize = LPH_NO_VIRTUALIZE(function()
            return (A.Default - A.Min) / (A.Max - A.Min)
        end)
        local C = f:GetTextSize(string.rep("0", (A.Rounding + #tostring(A.Max)) + 1) .. tostring(A.Type), 10, Enum.Font.GothamMedium, Vector2.new(math.huge, math.huge))
        B.MaximumSize = C.X
        if A.Nums then
            local D = 0
            for E, F in next, A.Nums do
                local G = f:GetTextSize(string.rep("m", string.len(tostring(F))), 10, Enum.Font.GothamMedium, Vector2.new(math.huge, math.huge))
                if D < G.X then
                    D = G.X
                end
            end
            if B.MaximumSize < D then
                B.MaximumSize = D
            end
        end
        local D = Instance.new("Frame")
        local E = Instance.new("UICorner")
        local F = Instance.new("Frame")
        local G = Instance.new("UICorner")
        local H = Instance.new("UIStroke")
        local I = Instance.new("TextBox")
        local J = Instance.new("Frame")
        local K = Instance.new("Frame")
        local L = Instance.new("UICorner")
        local M = Instance.new("Frame")
        local N = Instance.new("UICorner")
        local O = Instance.new("Frame")
        local P = Instance.new("UICorner")
        local Q = 2
        D.Name = b.RandomString()
        D.Parent = v
        D.BackgroundColor3 = Color3.fromRGB(26, 28, 36)
        D.BackgroundTransparency = 1
        D.BorderColor3 = Color3.fromRGB(0, 0, 0)
        D.BorderSizePixel = 0
        D.ClipsDescendants = false
        D.Size = UDim2.new(0, A.Size, 0, 18)
        D.ZIndex = y + 13
        D.LayoutOrder = -(#v:GetChildren() + 5)
        E.CornerRadius = UDim.new(0, 4)
        E.Parent = D
        F.Name = b.RandomString()
        F.Parent = D
        F.AnchorPoint = Vector2.new(1, 0)
        F.BackgroundColor3 = Color3.fromRGB(26, 28, 36)
        F.BorderColor3 = Color3.fromRGB(0, 0, 0)
        F.BorderSizePixel = 0
        F.ClipsDescendants = true
        F.Position = UDim2.new(1, 0, 0, 0)
        F.Size = UDim2.new(0, B.MaximumSize + Q, 0, 18)
        F.ZIndex = y + 13
        G.CornerRadius = UDim.new(0, 4)
        G.Parent = F
        H.Transparency = 0.65
        H.Color = Color3.fromRGB(45, 48, 58)
        H.Parent = F
        I.Name = b.RandomString()
        I.Parent = F
        I.AnchorPoint = Vector2.new(0.5, 0.5)
        I.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        I.BackgroundTransparency = 1
        I.BorderColor3 = Color3.fromRGB(0, 0, 0)
        I.BorderSizePixel = 0
        I.Position = UDim2.new(0.5, 0, 0.5, 0)
        I.Size = UDim2.new(1, 0, 1, 0)
        I.ZIndex = y + 14
        I.Font = Enum.Font.GothamMedium
        I.Text = tostring(A.Default) .. tostring(A.Type)
        I.TextColor3 = Color3.fromRGB(255, 255, 255)
        I.TextSize = 10
        I.ClearTextOnFocus = false
        I.TextTransparency = 0.35
        J.Name = b.RandomString()
        J.Parent = D
        J.AnchorPoint = Vector2.new(0, 0.5)
        J.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        J.BackgroundTransparency = 1
        J.BorderColor3 = Color3.fromRGB(0, 0, 0)
        J.BorderSizePixel = 0
        J.Position = UDim2.new(0, 0, 0.5, 0)
        J.Size = UDim2.new(1, -(B.MaximumSize + 11), 0, 18)
        J.ZIndex = y + 13
        K.Name = b.RandomString()
        K.Parent = J
        K.AnchorPoint = Vector2.new(0, 0.5)
        K.BackgroundColor3 = Color3.fromRGB(30, 29, 36)
        K.BorderColor3 = Color3.fromRGB(0, 0, 0)
        K.BorderSizePixel = 0
        K.Position = UDim2.new(0, 0, 0.5, 0)
        K.Size = UDim2.new(1, 0, 0, 5)
        K.ZIndex = y + 13
        L.CornerRadius = UDim.new(1, 0)
        L.Parent = K
        M.Name = b.RandomString()
        M.Parent = K
        M.BackgroundColor3 = b.AccentColor
        M.BorderColor3 = Color3.fromRGB(0, 0, 0)
        M.BorderSizePixel = 0
        M.Size = UDim2.new(B.GetSize(), 0, 1, 0)
        M.ZIndex = y + 14
        N.CornerRadius = UDim.new(1, 0)
        N.Parent = M
        O.Parent = M
        O.AnchorPoint = Vector2.new(1, 0.5)
        O.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        O.BorderColor3 = Color3.fromRGB(0, 0, 0)
        O.BorderSizePixel = 0
        O.Position = UDim2.new(1, 5, 0.5, 0)
        O.Size = UDim2.new(0, 10, 0, 10)
        O.ZIndex = y + 15
        P.CornerRadius = UDim.new(1, 0)
        P.Parent = O
        local R = LPH_NO_VIRTUALIZE(function()
            if A.Nums[A.Default] then
                I.Text = A.Nums[A.Default]
            else
                I.Text = tostring(A.Default) .. tostring(A.Type)
            end
        end)
        I.FocusLost:Connect(LPH_NO_VIRTUALIZE(function()
            local S = b:ParseInput(I.Text, true)
            if S then
                local T = math.clamp(S, A.Min, A.Max)
                local U = b.Rounding(T, A.Rounding)
                if U then
                    A.Default = U
                    d:Create(M, p, {
                        Size = UDim2.new(B.GetSize(), 0, 1, 0)
                    }):Play()
                    R()
                    A.Callback(A.Default)
                else
                    R()
                end
            else
                R()
            end
        end))
        B.SetRender = LPH_NO_VIRTUALIZE(function(S)
            if S then
                b.PlayAnimate(F, q, {
                    BackgroundTransparency = 0,
                    Size = UDim2.new(0, B.MaximumSize + Q, 0, 18)
                })
                b.PlayAnimate(H, q, {
                    Transparency = 0.65
                })
                b.PlayAnimate(I, q, {
                    TextTransparency = 0.35
                })
                b.PlayAnimate(K, q, {
                    BackgroundTransparency = 0
                })
                b.PlayAnimate(M, q, {
                    BackgroundTransparency = 0,
                    Size = UDim2.new(B.GetSize(), 0, 1, 0)
                })
                b.PlayAnimate(O, q, {
                    BackgroundTransparency = 0
                })
            else
                b.PlayAnimate(F, q, {
                    BackgroundTransparency = 1
                })
                b.PlayAnimate(H, q, {
                    Transparency = 1
                })
                b.PlayAnimate(I, q, {
                    TextTransparency = 1
                })
                b.PlayAnimate(K, q, {
                    BackgroundTransparency = 1
                })
                b.PlayAnimate(M, q, {
                    BackgroundTransparency = 1,
                    Size = UDim2.new(0, 0, 1, 0)
                })
                b.PlayAnimate(O, q, {
                    BackgroundTransparency = 1
                })
            end
        end)
        B.SetRender(w:GetValue())
        B.Signal = w:Connect(B.SetRender)
        local S = function(S)
            local T = math.clamp((((S.Position.X) - J.AbsolutePosition.X) / J.AbsoluteSize.X), 0, 1)
            local U = ((A.Max - A.Min) * T) + A.Min
            local V = b.Rounding(U, A.Rounding)
            UDim2.fromScale(T, 1)
            local W = ((V - A.Min) / (A.Max - A.Min)) + 0.02
            A.Default = V
            d:Create(M, p, {
                Size = UDim2.new(B.GetSize(), 0, 1, 0)
            }):Play()
            R()
            A.Callback(V)
        end
        local T = false
        do
            J.InputBegan:Connect(LPH_NO_VIRTUALIZE(function(U)
                if U.UserInputType == Enum.UserInputType.MouseButton1 or U.UserInputType == Enum.UserInputType.Touch then
                    T = true
                    S(U)
                end
            end))
            J.InputEnded:Connect(LPH_NO_VIRTUALIZE(function(U)
                if U.UserInputType == Enum.UserInputType.MouseButton1 or U.UserInputType == Enum.UserInputType.Touch then
                    if e.TouchEnabled then
                        if not b:IsMouseOverFrame(J) then
                            T = false
                        end
                    else
                        T = false
                    end
                end
            end))
            e.InputChanged:Connect(LPH_NO_VIRTUALIZE(function(U)
                if T then
                    if (U.UserInputType == Enum.UserInputType.MouseMovement or U.UserInputType == Enum.UserInputType.Touch) then
                        if e.TouchEnabled then
                            if not b:IsMouseOverFrame(J) then
                                T = false
                            else
                                S(U)
                            end
                        else
                            S(U)
                        end
                    end
                end
            end))
        end
        B.GetValue = function(U)
            return A.Default
        end
        B.SetValue = function(U, V)
            A.Default = V
            if w:GetValue() then
                b.PlayAnimate(M, q, {
                    BackgroundTransparency = 0,
                    Size = UDim2.new(B.GetSize(), 0, 1, 0)
                })
            end
            R()
            A.Callback(A.Default)
        end
        if A.Flag then
            b.Flags[A.Flag] = B
        end
        return B
    end
    x.AddOption = function(z, A)
        local B = Instance.new("Frame")
        local C = Instance.new("TextLabel")
        local D = Instance.new("UICorner")
        B.Name = b.RandomString()
        B.Parent = v
        B.BackgroundColor3 = Color3.fromRGB(39, 40, 49)
        B.BackgroundTransparency = 1
        B.BorderColor3 = Color3.fromRGB(0, 0, 0)
        B.BorderSizePixel = 0
        B.ClipsDescendants = true
        B.Size = UDim2.new(0, 20, 0, 18)
        B.ZIndex = y + 13
        B.LayoutOrder = -(#v:GetChildren() + 5)
        C.Name = b.RandomString()
        C.Parent = B
        C.AnchorPoint = Vector2.new(0.5, 0.5)
        C.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        C.BackgroundTransparency = 1
        C.BorderColor3 = Color3.fromRGB(0, 0, 0)
        C.BorderSizePixel = 0
        C.Position = UDim2.new(0.5, 0, 0.5, 0)
        C.Size = UDim2.new(1, 0, 1, 0)
        C.ZIndex = y + 14
        C.FontFace = b.BuiltInBold
        C.Text = (A == 1 and "gear") or (A == 2 and "chevron-large-right") or "three-dots-horizontal"
        C.TextColor3 = Color3.fromRGB(223, 223, 223)
        C.TextSize = 16
        C.TextTransparency = 0.4
        C.TextWrapped = true
        D.CornerRadius = UDim.new(0, 4)
        D.Parent = B
        local E = b:CreateOptionWindow(B, y + 13)
        local F
        E.SetRender = LPH_NO_VIRTUALIZE(function(G)
            if G then
                b.PlayAnimate(C, q, {
                    TextTransparency = 0.4
                })
            else
                b.PlayAnimate(C, q, {
                    TextTransparency = 1
                })
            end
        end)
        E.SetRender(w:GetValue())
        w:Connect(E.SetRender)
        local G = b:CreateInput(B, LPH_NO_VIRTUALIZE(function()
            if F then
                F:Disconnect()
                F = nil
            end
            E.Signal:SetValue(true)
            F = e.InputBegan:Connect(function(G)
                if G.UserInputType == Enum.UserInputType.MouseButton1 or G.UserInputType == Enum.UserInputType.Touch then
                    if not b:IsMouseOverFrame(E.Root) and not b:IsMouseOverFrame(B) then
                        if F then
                            F:Disconnect()
                            F = nil
                        end
                        E.Signal:SetValue(false)
                    end
                end
            end)
        end))
        b:AddSignal(G.MouseEnter:Connect(LPH_NO_VIRTUALIZE(function()
            b.PlayAnimate(B, q, {
                BackgroundTransparency = 0.5
            })
            b.PlayAnimate(C, q, {
                TextTransparency = 0.25
            })
        end)))
        b:AddSignal(G.MouseLeave:Connect(LPH_NO_VIRTUALIZE(function()
            b.PlayAnimate(B, q, {
                BackgroundTransparency = 1
            })
            b.PlayAnimate(C, q, {
                TextTransparency = 0.4
            })
        end)))
        return E
    end
    x.AddColorPicker = function(z, A)
        A = b:ProcessParams(A, {
            Default = Color3.fromRGB(255, 255, 255),
            Callback = t
        })
        if typeof(A.Default) == "string" then
            A.Default = Color3.fromHex(A.Default:gsub("#", ""))
        end
        local B = {}
        local C = Instance.new("Frame")
        local D = Instance.new("UICorner")
        local E = Instance.new("UIStroke")
        local F = Instance.new("ImageLabel")
        local G = Instance.new("UICorner")
        C.Name = b.RandomString()
        C.Parent = v
        C.BackgroundColor3 = A.Default
        C.BackgroundTransparency = 0
        C.BorderColor3 = Color3.fromRGB(0, 0, 0)
        C.BorderSizePixel = 0
        C.ClipsDescendants = true
        C.Size = UDim2.new(0, 18, 0, 18)
        C.ZIndex = y + 13
        D.CornerRadius = UDim.new(0, 4)
        D.Parent = C
        E.Transparency = 0.65
        E.Color = Color3.fromRGB(45, 48, 58)
        E.Parent = C
        F.Parent = C
        F.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        F.BorderColor3 = Color3.fromRGB(0, 0, 0)
        F.BorderSizePixel = 0
        F.Size = UDim2.new(1, 0, 1, 0)
        F.ZIndex = y + 11
        F.Image = "rbxasset://textures/meshPartFallback.png"
        F.ImageTransparency = 0.9
        F.BackgroundTransparency = 1
        F.ScaleType = Enum.ScaleType.Crop
        G.CornerRadius = UDim.new(0, 4)
        G.Parent = F
        local H = b:CreateColorPicker(C)
        H:SetValue(A.Default)
        H.Callback = function(I)
            C.BackgroundColor3 = I
            A.Default = I
            A.Callback(A.Default)
        end
        local I
        b:CreateInput(C, LPH_NO_VIRTUALIZE(function()
            if I then
                I:Disconnect()
                I = nil
            end
            H.SetRender(true)
            I = e.InputBegan:Connect(function(J)
                if J.UserInputType == Enum.UserInputType.MouseButton1 or J.UserInputType == Enum.UserInputType.Touch then
                    if not b:IsMouseOverFrame(C) and not b:IsMouseOverFrame(H.Root) then
                        if I then
                            I:Disconnect()
                            I = nil
                        end
                        H.SetRender(false)
                    end
                end
            end)
        end))
        B.SetRender = LPH_NO_VIRTUALIZE(function(J)
            if J then
                b.PlayAnimate(C, q, {
                    BackgroundTransparency = 0
                })
                b.PlayAnimate(E, q, {
                    Transparency = 0.65
                })
                b.PlayAnimate(F, q, {
                    ImageTransparency = 0.9
                })
            else
                b.PlayAnimate(C, q, {
                    BackgroundTransparency = 1
                })
                b.PlayAnimate(E, q, {
                    Transparency = 1
                })
                b.PlayAnimate(F, q, {
                    ImageTransparency = 1
                })
            end
        end)
        B.SetRender(w:GetValue())
        w:Connect(B.SetRender)
        B.GetValue = function(J)
            return A.Default
        end
        B.SetValue = function(J, K)
            A.Default = K
            H:SetValue(A.Default)
        end
        if A.Flag then
            b.Flags[A.Flag] = B
        end
        return B
    end
    x.AddKeybind = function(z, A)
        A = b:ProcessParams(A, {
            Default = nil,
            Blacklist = {},
            Callback = t,
            Flag = nil
        })
        local B = {}
        local C = Instance.new("Frame")
        local D = Instance.new("UICorner")
        local E = Instance.new("UIStroke")
        local F = Instance.new("TextLabel")
        C.Name = b.RandomString()
        C.Parent = v
        C.BackgroundColor3 = Color3.fromRGB(26, 28, 36)
        C.BorderColor3 = Color3.fromRGB(0, 0, 0)
        C.BorderSizePixel = 0
        C.ClipsDescendants = true
        C.Size = UDim2.new(0, 45, 0, 18)
        C.ZIndex = y + 13
        D.CornerRadius = UDim.new(0, 4)
        D.Parent = C
        E.Transparency = 0.65
        E.Color = Color3.fromRGB(45, 48, 58)
        E.Parent = C
        F.Name = b.RandomString()
        F.Parent = C
        F.AnchorPoint = Vector2.new(0.5, 0.5)
        F.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        F.BackgroundTransparency = 1
        F.BorderColor3 = Color3.fromRGB(0, 0, 0)
        F.BorderSizePixel = 0
        F.ClipsDescendants = true
        F.Position = UDim2.new(0.5, 0, 0.5, 0)
        F.Size = UDim2.new(1, 0, 1, 0)
        F.ZIndex = y + 14
        F.Font = Enum.Font.GothamMedium
        F.Text = b:KeyCodeToStr(A.Default or "None")
        F.TextColor3 = Color3.fromRGB(255, 255, 255)
        F.TextSize = 10
        F.TextTransparency = 0.5
        B.SetRender = LPH_NO_VIRTUALIZE(function(G)
            if G then
                b.PlayAnimate(C, q, {
                    BackgroundTransparency = 0
                })
                b.PlayAnimate(E, q, {
                    Transparency = 0.65
                })
                b.PlayAnimate(F, q, {
                    TextTransparency = 0.5
                })
            else
                b.PlayAnimate(C, q, {
                    BackgroundTransparency = 1
                })
                b.PlayAnimate(E, q, {
                    Transparency = 1
                })
                b.PlayAnimate(F, q, {
                    TextTransparency = 1
                })
            end
        end)
        B.Update = function(G)
            local H = f:GetTextSize(F.Text, F.TextSize, F.Font, Vector2.new(math.huge, math.huge))
            b.PlayAnimate(C, q, {
                Size = UDim2.new(0, H.X + 7, 0, 18)
            })
        end
        local G = LPH_NO_VIRTUALIZE(function(G)
            return A.Blacklist and (A.Blacklist[G] or table.find(A.Blacklist, G))
        end)
        B:Update()
        B.SetRender(w:GetValue())
        w:Connect(B.SetRender)
        local H = false
        b:CreateInput(C, function()
            if H then
                return
            end
            H = true
            F.Text = "..."
            B:Update()
            local I
            while not I do
                local J = e.InputBegan:Wait()
                if J.KeyCode ~= Enum.KeyCode.Unknown and not G(J.KeyCode) and not G(J.KeyCode.Name) then
                    I = J.KeyCode
                else
                    if J.UserInputType == Enum.UserInputType.MouseButton1 and not G(Enum.UserInputType.MouseButton1) and not G("M1B") then
                        I = "M1B"
                    elseif J.UserInputType == Enum.UserInputType.MouseButton2 and not G(Enum.UserInputType.MouseButton2) and not G("M2B") then
                        I = "M2B"
                    end
                end
            end
            H = false
            local J = typeof(I) == "string" and I or I.Name
            A.Default = J
            F.Text = b:KeyCodeToStr(J)
            B:Update()
            A.Callback(J)
        end)
        B.GetValue = function(I)
            return A.Default
        end
        B.SetValue = function(I, J)
            A.Default = J
            F.Text = b:KeyCodeToStr(J)
            B:Update()
            A.Callback(A.Default)
        end
        if A.Flag then
            b.Flags[A.Flag] = B
        end
        return B
    end
    x.AddTextInput = function(z, A)
        A = b:ProcessParams(A, {
            Default = "",
            Placeholder = "Placeholder",
            Callback = print,
            Flag = nil,
            Size = 100,
            Numeric = false
        })
        local B = {}
        local C = Instance.new("Frame")
        local D = Instance.new("UICorner")
        local E = Instance.new("UIStroke")
        local F = Instance.new("TextBox")
        C.Name = b.RandomString()
        C.Parent = v
        C.BackgroundColor3 = Color3.fromRGB(26, 28, 36)
        C.BorderColor3 = Color3.fromRGB(0, 0, 0)
        C.BorderSizePixel = 0
        C.ClipsDescendants = true
        C.Size = UDim2.new(0, A.Size, 0, 18)
        C.ZIndex = y + 13
        D.CornerRadius = UDim.new(0, 4)
        D.Parent = C
        E.Transparency = 0.65
        E.Color = Color3.fromRGB(45, 48, 58)
        E.Parent = C
        F.Parent = C
        F.AnchorPoint = Vector2.new(0, 0.5)
        F.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        F.BackgroundTransparency = 1
        F.BorderColor3 = Color3.fromRGB(0, 0, 0)
        F.BorderSizePixel = 0
        F.Position = UDim2.new(0, 5, 0.5, 0)
        F.Size = UDim2.new(1, -5, 0, 17)
        F.ZIndex = y + 14
        F.ClearTextOnFocus = false
        F.Font = Enum.Font.GothamMedium
        F.PlaceholderText = A.Placeholder
        F.Text = tostring(A.Default)
        F.TextColor3 = Color3.fromRGB(255, 255, 255)
        F.TextSize = 11
        F.TextTransparency = 0.35
        F.TextXAlignment = Enum.TextXAlignment.Left
        B.SetRender = LPH_NO_VIRTUALIZE(function(G)
            if G then
                b.PlayAnimate(C, q, {
                    BackgroundTransparency = 0
                })
                b.PlayAnimate(E, q, {
                    Transparency = 0.65
                })
                b.PlayAnimate(F, q, {
                    TextTransparency = 0.35
                })
            else
                b.PlayAnimate(C, q, {
                    BackgroundTransparency = 1
                })
                b.PlayAnimate(E, q, {
                    Transparency = 1
                })
                b.PlayAnimate(F, q, {
                    TextTransparency = 1
                })
            end
        end)
        b:AddSignal(F:GetPropertyChangedSignal("Text"):Connect(LPH_NO_VIRTUALIZE(function()
            local G = b:ParseInput(F.Text, A.Numeric)
            if A.Numeric then
                F.Text = string.gsub(F.Text, "[^0-9.]", "")
            end
            if G then
                A.Default = G
                A.Callback(G)
            end
        end)))
        B.SetRender(w:GetValue())
        w:Connect(B.SetRender)
        B.GetValue = function(G)
            return A.Default
        end
        B.SetValue = function(G, H)
            A.Default = H
            F.Text = tostring(H)
            A.Callback(A.Default)
        end
        if A.Flag then
            b.Flags[A.Flag] = B
        end
        return B
    end
    x.AddDropdown = function(z, A)
        A = b:ProcessParams(A, {
            Default = nil,
            Values = {},
            Multi = false,
            Callback = t,
            AutoUpdate = false,
            Flag = nil,
            Size = 100
        })
        A.Default = b.ProcessDropdown(A.Default)
        local B = Instance.new("Frame")
        local C = Instance.new("TextLabel")
        local D = Instance.new("UICorner")
        local E = Instance.new("UIStroke")
        local F = Instance.new("TextLabel")
        B.Name = b.RandomString()
        B.Parent = v
        B.BackgroundColor3 = Color3.fromRGB(26, 28, 36)
        B.BorderColor3 = Color3.fromRGB(0, 0, 0)
        B.BorderSizePixel = 0
        B.ClipsDescendants = true
        B.Size = UDim2.new(0, A.Size, 0, 18)
        B.ZIndex = y + 13
        C.Name = b.RandomString()
        C.Parent = B
        C.AnchorPoint = Vector2.new(1, 0.5)
        C.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        C.BackgroundTransparency = 1
        C.BorderColor3 = Color3.fromRGB(0, 0, 0)
        C.BorderSizePixel = 0
        C.Position = UDim2.new(1, -2, 0.5, 0)
        C.Size = UDim2.new(0, 18, 0, 18)
        C.ZIndex = y + 14
        C.FontFace = b.BuiltInBold
        C.Text = "chevron-small-down"
        C.TextColor3 = Color3.fromRGB(223, 223, 223)
        C.TextSize = 16
        C.TextTransparency = 0.25
        C.TextWrapped = true
        D.CornerRadius = UDim.new(0, 4)
        D.Parent = B
        E.Transparency = 0.65
        E.Color = Color3.fromRGB(45, 48, 58)
        E.Parent = B
        F.Name = b.RandomString()
        F.Parent = B
        F.AnchorPoint = Vector2.new(0, 0.5)
        F.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        F.BackgroundTransparency = 1
        F.BorderColor3 = Color3.fromRGB(0, 0, 0)
        F.BorderSizePixel = 0
        F.ClipsDescendants = true
        F.Position = UDim2.new(0, 5, 0.5, 0)
        F.Size = UDim2.new(1, -25, 0, 15)
        F.ZIndex = y + 14
        F.Font = Enum.Font.GothamMedium
        F.Text = b.ParseDropdown(A.Default)
        F.TextColor3 = Color3.fromRGB(255, 255, 255)
        F.TextSize = 12
        F.TextTransparency = 0.5
        F.TextXAlignment = Enum.TextXAlignment.Left
        do
            local G = Instance.new("UIGradient")
            G.Transparency = NumberSequence.new({
                NumberSequenceKeypoint.new(0, 0),
                NumberSequenceKeypoint.new(0.85, 0.23),
                NumberSequenceKeypoint.new(1, 1)
            })
            G.Parent = F
        end
        b:AddSignal(B.MouseEnter:Connect(LPH_NO_VIRTUALIZE(function()
            b.PlayAnimate(F, q, {
                TextTransparency = 0.2
            })
        end)))
        b:AddSignal(B.MouseLeave:Connect(LPH_NO_VIRTUALIZE(function()
            b.PlayAnimate(F, q, {
                TextTransparency = 0.5
            })
        end)))
        local G = {
            OpenSignal = b:CreateSignal(false),
            Signals = {},
            Refuse = {}
        }
        G.SetRender = LPH_NO_VIRTUALIZE(function(H)
            if H then
                b.PlayAnimate(B, q, {
                    BackgroundTransparency = 0
                })
                b.PlayAnimate(C, q, {
                    TextTransparency = 0.25
                })
                b.PlayAnimate(E, q, {
                    Transparency = 0.65
                })
                b.PlayAnimate(F, q, {
                    TextTransparency = 0.5
                })
            else
                b.PlayAnimate(B, q, {
                    BackgroundTransparency = 1
                })
                b.PlayAnimate(C, q, {
                    TextTransparency = 1
                })
                b.PlayAnimate(E, q, {
                    Transparency = 1
                })
                b.PlayAnimate(F, q, {
                    TextTransparency = 1
                })
            end
        end)
        G.SetRender(w:GetValue())
        w:Connect(G.SetRender)
        G.ExtentSize = 0
        do
            local H = Instance.new("Frame")
            local I = Instance.new("UICorner")
            local J = Instance.new("UIStroke")
            local K = Instance.new("ScrollingFrame")
            local L = Instance.new("UIListLayout")
            local M = b:CreateShadow(H)
            H.Name = b.RandomString()
            H.Parent = b.ScreenGui
            H.AnchorPoint = Vector2.new(0.5, 0)
            H.BackgroundColor3 = Color3.fromRGB(20, 22, 27)
            H.BackgroundTransparency = 0.5
            H.BorderColor3 = Color3.fromRGB(0, 0, 0)
            H.BorderSizePixel = 0
            H.ClipsDescendants = true
            H.Position = UDim2.new(255, 255, 255, 255)
            H.Size = UDim2.new(0, 125, 0, 50)
            H.ZIndex = y + 125
            G.BlockRoot = H
            b:AddSignal(H:GetPropertyChangedSignal("BackgroundTransparency"):Connect(function()
                if H.BackgroundTransparency > 0.9 then
                    H.Visible = false
                    H.Parent = nil
                else
                    H.Visible = true
                    if b.Global3DRenderMode then
                        H.Parent = b.GlobalSurfaceGui
                    else
                        H.Parent = b.ScreenGui
                    end
                end
            end))
            I.CornerRadius = UDim.new(0, 10)
            I.Parent = H
            J.Transparency = 0.65
            J.Color = Color3.fromRGB(45, 48, 58)
            J.Parent = H
            K.Name = b.RandomString()
            K.Parent = H
            K.Active = true
            K.AnchorPoint = Vector2.new(0.5, 0.5)
            K.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            K.BackgroundTransparency = 1
            K.BorderColor3 = Color3.fromRGB(0, 0, 0)
            K.BorderSizePixel = 0
            K.Position = UDim2.new(0.5, 0, 0.5, 0)
            K.Size = UDim2.new(1, -5, 1, -5)
            K.ZIndex = y + 127
            K.ScrollBarThickness = 0
            G.RootItem = K
            L.Parent = K
            L.HorizontalAlignment = Enum.HorizontalAlignment.Center
            L.SortOrder = Enum.SortOrder.LayoutOrder
            b:AddSignal(L:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(LPH_NO_VIRTUALIZE(function()
                K.CanvasSize = UDim2.fromOffset(0, L.AbsoluteContentSize.Y)
                b.PlayAnimate(H, q, {
                    Size = UDim2.new(0, (B.AbsoluteSize.X + 5) + G.ExtentSize, 0, math.min(L.AbsoluteContentSize.Y + 5, 250))
                })
            end)))
            local N = LPH_NO_VIRTUALIZE(function()
                if b:MoreThanHalfY(B.AbsolutePosition.Y + 85) then
                    H.AnchorPoint = Vector2.new(0.5, 1)
                else
                    H.AnchorPoint = Vector2.new(0.5, 0)
                end
                H.Position = UDim2.fromOffset(B.AbsolutePosition.X + (H.AbsoluteSize.X / 2), B.AbsolutePosition.Y + 85)
            end)
            G.SetFrameRender = LPH_NO_VIRTUALIZE(function(O)
                G.OpenSignal:SetValue(O)
                if O then
                    M:Render(true)
                    H.Size = UDim2.new(0, (B.AbsoluteSize.X + 5) + G.ExtentSize, 0, math.min(L.AbsoluteContentSize.Y + 5, 250))
                    N()
                    b.PlayAnimate(H, q, {
                        BackgroundTransparency = 0.035
                    })
                    if A.AutoUpdate then
                        G:Generate()
                    end
                else
                    b.PlayAnimate(H, q, {
                        BackgroundTransparency = 1
                    })
                    M:Render(false)
                end
            end)
            G.SetFrameRender(false)
        end
        local H
        b:CreateInput(B, LPH_NO_VIRTUALIZE(function()
            if H then
                H:Disconnect()
                H = nil
            end
            G.SetFrameRender(true)
            b.IsMosueOverOtherFrame = true
            H = e.InputBegan:Connect(function(I)
                if I.UserInputType == Enum.UserInputType.MouseButton1 or I.UserInputType == Enum.UserInputType.Touch then
                    if not b:IsMouseOverFrame(G.BlockRoot) and not b:IsMouseOverFrame(B) then
                        if H then
                            H:Disconnect()
                            H = nil
                        end
                        b.IsMosueOverOtherFrame = false
                        G.SetFrameRender(false)
                    end
                end
            end)
        end))
        G.IsMatch = LPH_NO_VIRTUALIZE(function(I)
            if typeof(A.Default) == "table" then
                if A.Default[I] or table.find(A.Default, I) then
                    return true
                end
            end
            if A.Default == I then
                return true
            end
        end)
        G.Generate = function(I)
            for J, K in next, G.RootItem:GetChildren() do
                if K:IsA("Frame") then
                    K:Destroy()
                end
            end
            for J, K in next, G.Signals do
                K:Disconnect()
            end
            table.clear(G.Signals)
            table.clear(G.Refuse)
            local J
            for K, L in next, A.Values do
                local M = Instance.new("Frame")
                local N = Instance.new("TextLabel")
                local O = Instance.new("UICorner")
                M.Name = b.RandomString()
                M.Parent = G.RootItem
                M.BackgroundColor3 = Color3.fromRGB(29, 31, 38)
                M.BackgroundTransparency = 1
                M.BorderColor3 = Color3.fromRGB(0, 0, 0)
                M.BorderSizePixel = 0
                M.Size = UDim2.new(1, 0, 0, 25)
                M.ZIndex = y + 1258
                N.Name = b.RandomString()
                N.Parent = M
                N.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                N.BackgroundTransparency = 1
                N.BorderColor3 = Color3.fromRGB(0, 0, 0)
                N.BorderSizePixel = 0
                N.Position = UDim2.new(0, 15, 0, 4)
                N.Size = UDim2.new(0, 1, 0, 15)
                N.ZIndex = y + 1258
                N.Font = Enum.Font.GothamMedium
                N.Text = tostring(L)
                N.TextColor3 = Color3.fromRGB(255, 255, 255)
                N.TextSize = 13
                N.TextTransparency = 0.2
                N.TextXAlignment = Enum.TextXAlignment.Left
                O.CornerRadius = UDim.new(0, 10)
                O.Parent = M
                local P = f:GetTextSize(N.Text, N.TextSize, N.Font, Vector2.new(math.huge, math.huge))
                G.ExtentSize = math.max(G.ExtentSize, P.X)
                local Q, R
                if A.Multi then
                    local S = Instance.new("TextLabel")
                    S.Parent = M
                    S.AnchorPoint = Vector2.new(0, 0.5)
                    S.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    S.BackgroundTransparency = 1
                    S.BorderColor3 = Color3.fromRGB(0, 0, 0)
                    S.BorderSizePixel = 0
                    S.Position = UDim2.new(0, 5, 0.5, 0)
                    S.Size = UDim2.new(0, 20, 0, 20)
                    S.ZIndex = y + 1259
                    S.FontFace = b.BuiltInBold
                    S.Text = "check"
                    S.TextColor3 = Color3.fromRGB(223, 223, 223)
                    S.TextSize = 18
                    S.TextTransparency = 1
                    S.TextWrapped = true
                    local T = LPH_NO_VIRTUALIZE(function()
                        if G.IsMatch(L) then
                            b.PlayAnimate(N, r, {
                                TextTransparency = 0.2,
                                Position = UDim2.new(0, 30, 0, 4)
                            })
                            b.PlayAnimate(S, vs, {
                                TextTransparency = 0.25
                            })
                            J = N
                        else
                            b.PlayAnimate(S, q, {
                                TextTransparency = 1
                            })
                            b.PlayAnimate(N, r, {
                                TextTransparency = 0.5,
                                Position = UDim2.new(0, 15, 0, 4)
                            })
                        end
                    end)
                    Q = S
                    R = T
                else
                    local S = LPH_NO_VIRTUALIZE(function()
                        if G.IsMatch(L) then
                            b.PlayAnimate(N, q, {
                                TextTransparency = 0.2
                            })
                            J = N
                        else
                            b.PlayAnimate(N, q, {
                                TextTransparency = 0.5
                            })
                        end
                    end)
                    R = S
                end
                R()
                table.insert(G.Refuse, R)
                table.insert(G.Signals, M.MouseEnter:Connect(LPH_NO_VIRTUALIZE(function()
                    b.PlayAnimate(M, q, {
                        BackgroundTransparency = 0.1
                    })
                end)))
                table.insert(G.Signals, M.MouseLeave:Connect(LPH_NO_VIRTUALIZE(function()
                    b.PlayAnimate(M, q, {
                        BackgroundTransparency = 1
                    })
                end)))
                table.insert(G.Signals, G.OpenSignal:Connect(LPH_NO_VIRTUALIZE(function(S)
                    if S then
                        R()
                    else
                        b.PlayAnimate(N, q, {
                            TextTransparency = 1
                        })
                        if Q then
                            b.PlayAnimate(Q, q, {
                                TextTransparency = 1
                            })
                        end
                    end
                end)))
                if A.Multi then
                    local S, T = b:CreateInput(M, LPH_NO_VIRTUALIZE(function()
                        A.Default[L] = not A.Default[L]
                        R()
                        F.Text = b.ParseDropdown(A.Default)
                        A.Callback(A.Default)
                    end))
                    table.insert(G.Signals, T)
                else
                    local S, T = b:CreateInput(M, LPH_NO_VIRTUALIZE(function()
                        A.Default = L
                        for S, T in next, G.Refuse do
                            task.spawn(T)
                        end
                        F.Text = b.ParseDropdown(A.Default)
                        A.Callback(A.Default)
                    end))
                    table.insert(G.Signals, T)
                end
            end
        end
        G:Generate()
        G.GetValue = function(I)
            return A.Default
        end
        G.SetValue = function(I, J)
            A.Default = J
            F.Text = b.ParseDropdown(A.Default)
            for K, L in next, G.Refuse do
                task.spawn(L)
            end
            A.Callback(A.Default)
        end
        G.SetValues = function(I, J)
            A.Values = J
            if not A.AutoUpdate then
                G:Generate()
            end
        end
        if A.Flag then
            b.Flags[A.Flag] = G
        end
        return G
    end
    return x
end
b.ProcessDropdown = LPH_NO_VIRTUALIZE(function(u)
    if typeof(u) == "table" then
        local v = {}
        for w, x in next, u do
            if typeof(x) == "boolean" and typeof(w) ~= "number" then
                v[w] = x
            else
                v[x] = true
            end
        end
        return v
    else
        return u
    end
end)
b.ParseDropdown = LPH_NO_VIRTUALIZE(function(u)
    if not u then
        return "Select"
    end
    local v
    if typeof(u) == "table" then
        if #u > 0 then
            local w = {}
            for x, y in next, u do
                table.insert(w, tostring(y))
            end
            v = table.concat(w, " , ")
            table.clear(w)
        else
            local w = {}
            for x, y in next, u do
                if y == true then
                    table.insert(w, tostring(x))
                end
            end
            v = table.concat(w, " , ")
            table.clear(w)
            if not v:byte() then
                v = "Select"
            end
        end
    else
        v = tostring(u or "Select")
    end
    return v
end)
b.ParseInput = function(u, v, w)
    if not v then
        return (w and nil) or ""
    end
    if w then
        local x = string.gsub(tostring(v), "[^0-9.%-]", "")
        if tonumber(x) then
            return tonumber(x)
        end
        return nil
    end
    return v
end
b.CreateToolTips = function(u, v, w, x)
    local y = Instance.new("Frame")
    local z = Instance.new("UICorner")
    local A = Instance.new("UIStroke")
    local B = Instance.new("TextLabel")
    local C = Instance.new("TextLabel")
    local D = b:CreateShadow(y)
    y.Name = b.RandomString()
    y.BackgroundColor3 = Color3.fromRGB(20, 22, 27)
    y.BackgroundTransparency = 0.075
    y.BorderColor3 = Color3.fromRGB(0, 0, 0)
    y.BorderSizePixel = 0
    y.ClipsDescendants = true
    y.Position = UDim2.new(255, 255, 255, 255)
    y.Size = UDim2.new(0, 0, 0, 0)
    y.ZIndex = 130
    z.CornerRadius = UDim.new(0, 10)
    z.Parent = y
    A.Transparency = 0.65
    A.Color = Color3.fromRGB(45, 48, 58)
    A.Parent = y
    B.Name = b.RandomString()
    B.Parent = y
    B.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    B.BackgroundTransparency = 1
    B.BorderColor3 = Color3.fromRGB(0, 0, 0)
    B.BorderSizePixel = 0
    B.Position = UDim2.new(0, 15, 0, 5)
    B.Size = UDim2.new(0, 1, 0, 20)
    B.ZIndex = 132
    B.Font = Enum.Font.GothamBold
    B.Text = w
    B.TextColor3 = Color3.fromRGB(255, 255, 255)
    B.TextSize = 15
    B.TextXAlignment = Enum.TextXAlignment.Left
    C.Name = b.RandomString()
    C.Parent = y
    C.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    C.BackgroundTransparency = 1
    C.BorderColor3 = Color3.fromRGB(0, 0, 0)
    C.BorderSizePixel = 0
    C.Position = UDim2.new(0, 15, 0, 30)
    C.Size = UDim2.new(0, 1, 0, 15)
    C.ZIndex = 132
    C.Font = Enum.Font.GothamBold
    C.Text = x
    C.TextColor3 = Color3.fromRGB(255, 255, 255)
    C.TextSize = 12
    C.TextTransparency = 0.65
    C.TextXAlignment = Enum.TextXAlignment.Left
    C.TextYAlignment = Enum.TextYAlignment.Top
    local E = {}
    E.Update = LPH_NO_VIRTUALIZE(function()
        local F = f:GetTextSize(B.Text, B.TextSize, B.Font, Vector2.new(math.huge, math.huge))
        local G = f:GetTextSize(C.Text, C.TextSize, C.Font, Vector2.new(math.huge, math.huge))
        local H = math.max(F.X, G.X) + 65
        local I = F.Y + G.Y + 30
        b.PlayAnimate(y, q, {
            Size = UDim2.new(0, H, 0, I)
        })
    end)
    b:AddSignal(y:GetPropertyChangedSignal("BackgroundTransparency"):Connect(LPH_NO_VIRTUALIZE(function()
        if y.BackgroundTransparency > 0.9 then
            y.Visible = false
            y.Parent = nil
        else
            y.Visible = true
            if b.Global3DRenderMode then
                y.Parent = b.GlobalSurfaceGui
            else
                y.Parent = b.ScreenGui
            end
        end
    end)))
    E.SetRender = LPH_NO_VIRTUALIZE(function(F)
        if F then
            y.Position = UDim2.fromOffset(v.AbsolutePosition.X + v.AbsoluteSize.X, v.AbsolutePosition.Y + (v.AbsoluteSize.Y + 25))
            b.PlayAnimate(y, q, {
                BackgroundTransparency = 0.075
            })
            b.PlayAnimate(A, q, {
                Transparency = 0.65
            })
            b.PlayAnimate(B, q, {
                TextTransparency = 0
            })
            b.PlayAnimate(C, q, {
                TextTransparency = 0.65
            })
            E.Update()
            D:Render(true)
        else
            b.PlayAnimate(y, q, {
                BackgroundTransparency = 1
            })
            b.PlayAnimate(A, q, {
                Transparency = 1
            })
            b.PlayAnimate(B, q, {
                TextTransparency = 1
            })
            b.PlayAnimate(C, q, {
                TextTransparency = 1
            })
            D:Render(false)
        end
    end)
    E.SetRender(false)
    E.Update()
    local F
    b:AddSignal(v.MouseEnter:Connect(LPH_NO_VIRTUALIZE(function()
        if F then
            task.cancel(F)
            F = nil
        end
        F = task.delay(1, E.SetRender, true)
    end)))
    b:AddSignal(v.MouseLeave:Connect(LPH_NO_VIRTUALIZE(function()
        if F then
            task.cancel(F)
            F = nil
        end
        E.SetRender(false)
        E.Update()
    end)))
    return E
end
b.RegisiterItem = function(u, v, w)
    local x = {}
    local y = v.ZIndex
    x.AddLabel = function(z, A, B)
        local C = Instance.new("Frame")
        local D = Instance.new("TextLabel")
        local E = Instance.new("Frame")
        local F = Instance.new("Frame")
        local G = Instance.new("UIListLayout")
        local H = Instance.new("UICorner")
        C.Name = b.RandomString()
        C.Parent = v
        C.BackgroundColor3 = Color3.fromRGB(25, 27, 33)
        C.BackgroundTransparency = 1
        C.BorderColor3 = Color3.fromRGB(0, 0, 0)
        C.BorderSizePixel = 0
        C.Size = UDim2.new(1, 0, 0, 30)
        C.ZIndex = y + 8
        b:AddQuery(C, A)
        D.Name = b.RandomString()
        D.Parent = C
        D.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        D.BackgroundTransparency = 1
        D.BorderColor3 = Color3.fromRGB(0, 0, 0)
        D.BorderSizePixel = 0
        D.Position = UDim2.new(0, 11, 0, 6)
        D.Size = UDim2.new(0, 1, 0, 15)
        D.ZIndex = y + 9
        D.Font = Enum.Font.GothamMedium
        D.Text = A
        D.TextColor3 = Color3.fromRGB(255, 255, 255)
        D.TextSize = 13
        D.TextTransparency = 0.35
        D.TextXAlignment = Enum.TextXAlignment.Left
        E.Name = b.RandomString()
        E.Parent = C
        E.AnchorPoint = Vector2.new(0.5, 1)
        E.BackgroundColor3 = Color3.fromRGB(45, 48, 58)
        E.BackgroundTransparency = 0.65
        E.BorderColor3 = Color3.fromRGB(0, 0, 0)
        E.BorderSizePixel = 0
        E.Position = UDim2.new(0.5, 0, 1, 0)
        E.Size = UDim2.new(1, -20, 0, 1)
        E.ZIndex = y + 11
        F.Name = b.RandomString()
        F.Parent = C
        F.AnchorPoint = Vector2.new(1, 0)
        F.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        F.BackgroundTransparency = 1
        F.BorderColor3 = Color3.fromRGB(0, 0, 0)
        F.BorderSizePixel = 0
        F.Position = UDim2.new(1, -11, 0, 2)
        F.Size = UDim2.new(1, -20, 0, 25)
        F.ZIndex = y + 12
        G.Parent = F
        G.FillDirection = Enum.FillDirection.Horizontal
        G.HorizontalAlignment = Enum.HorizontalAlignment.Right
        G.SortOrder = Enum.SortOrder.LayoutOrder
        G.VerticalAlignment = Enum.VerticalAlignment.Center
        G.Padding = UDim.new(0, 5)
        H.CornerRadius = UDim.new(0, 10)
        H.Parent = C
        local I = LPH_NO_VIRTUALIZE(function()
            local I = f:GetTextSize(D.Text, D.TextSize, D.Font, Vector2.new(math.huge, math.huge))
            b.PlayAnimate(C, q, {
                Size = UDim2.new(1, 0, 0, I.Y + 13)
            })
            D.Size = UDim2.new(1, -35, 1, 0)
            D.TextYAlignment = Enum.TextYAlignment.Top
        end)
        if B then
            I()
        end
        local J = b:RegisiterHandler(F, w)
        J.Root = C
        J.SetRender = LPH_NO_VIRTUALIZE(function(K)
            if K then
                b.PlayAnimate(C, q, {
                    BackgroundTransparency = 1
                })
                b.PlayAnimate(D, q, {
                    TextTransparency = 0.35
                })
                b.PlayAnimate(E, q, {
                    BackgroundTransparency = 0.65
                })
            else
                b.PlayAnimate(C, q, {
                    BackgroundTransparency = 1
                })
                b.PlayAnimate(D, q, {
                    TextTransparency = 1
                })
                b.PlayAnimate(E, q, {
                    BackgroundTransparency = 1
                })
            end
        end)
        J.SetVisible = function(K, L)
            C.Visible = L
        end
        b:AddSignal(C.MouseEnter:Connect(LPH_NO_VIRTUALIZE(function()
            b.PlayAnimate(C, q, {
                BackgroundTransparency = 0.35
            })
            b.PlayAnimate(D, q, {
                TextTransparency = 0.25
            })
        end)))
        b:AddSignal(C.MouseLeave:Connect(LPH_NO_VIRTUALIZE(function()
            b.PlayAnimate(C, q, {
                BackgroundTransparency = 1
            })
            b.PlayAnimate(D, q, {
                TextTransparency = 0.35
            })
        end)))
        J.SetText = function(K, L)
            local M = D.Text
            D.Text = L
            if B and M ~= L then
                I()
            end
        end
        J.ToolTip = function(K, L)
            J.ToolTip = b:CreateToolTips(C, A, L)
            return J
        end
        J.SetRender(w:GetValue())
        w:Connect(J.SetRender)
        return J
    end
    x.AddButton = function(z, A)
        A = b:ProcessParams(A, {
            Icon = "chevron-large-left",
            Name = "Button",
            Callback = t,
            ToolTip = nil
        })
        local B = {}
        local C = Instance.new("Frame")
        local D = Instance.new("TextLabel")
        local E = Instance.new("Frame")
        local F = Instance.new("UICorner")
        local G = Instance.new("TextLabel")
        b:AddQuery(C, A.Name)
        C.Name = b.RandomString()
        C.Parent = v
        C.BackgroundColor3 = Color3.fromRGB(25, 27, 33)
        C.BackgroundTransparency = 1
        C.BorderColor3 = Color3.fromRGB(0, 0, 0)
        C.BorderSizePixel = 0
        C.Size = UDim2.new(1, 0, 0, 30)
        C.ZIndex = y + 8
        D.Name = b.RandomString()
        D.Parent = C
        D.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        D.BackgroundTransparency = 1
        D.BorderColor3 = Color3.fromRGB(0, 0, 0)
        D.BorderSizePixel = 0
        D.Position = UDim2.new(0, 35, 0, 6)
        D.Size = UDim2.new(0, 1, 0, 15)
        D.ZIndex = y + 9
        D.Font = Enum.Font.GothamMedium
        D.Text = A.Name
        D.TextColor3 = Color3.fromRGB(255, 255, 255)
        D.TextSize = 13
        D.TextTransparency = 0.2
        D.TextXAlignment = Enum.TextXAlignment.Left
        E.Name = b.RandomString()
        E.Parent = C
        E.AnchorPoint = Vector2.new(0.5, 1)
        E.BackgroundColor3 = Color3.fromRGB(45, 48, 58)
        E.BackgroundTransparency = 0.65
        E.BorderColor3 = Color3.fromRGB(0, 0, 0)
        E.BorderSizePixel = 0
        E.Position = UDim2.new(0.5, 0, 1, 0)
        E.Size = UDim2.new(1, -20, 0, 1)
        E.ZIndex = y + 11
        F.CornerRadius = UDim.new(0, 10)
        F.Parent = C
        G.Name = b.RandomString()
        G.Parent = C
        G.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        G.BackgroundTransparency = 1
        G.BorderColor3 = Color3.fromRGB(0, 0, 0)
        G.BorderSizePixel = 0
        G.Position = UDim2.new(0, 11, 0, 5)
        G.Size = UDim2.new(0, 18, 0, 18)
        G.ZIndex = y + 9
        G.FontFace = b.BuiltInBold
        G.Text = A.Icon
        G.TextColor3 = Color3.fromRGB(223, 223, 223)
        G.TextSize = 16
        G.TextTransparency = 0.25
        G.TextWrapped = true
        B.SetText = function(H, I)
            D.Text = I
        end
        B.SetIcon = function(H, I)
            G.Text = I
        end
        local H = b:CreateInput(C, LPH_NO_VIRTUALIZE(function()
            A.Callback()
        end))
        b:AddSignal(H.MouseEnter:Connect(LPH_NO_VIRTUALIZE(function()
            b.PlayAnimate(C, q, {
                BackgroundTransparency = 0.35
            })
        end)))
        b:AddSignal(H.MouseLeave:Connect(LPH_NO_VIRTUALIZE(function()
            b.PlayAnimate(C, q, {
                BackgroundTransparency = 1
            })
        end)))
        B.SetRender = LPH_NO_VIRTUALIZE(function(I)
            if I then
                b.PlayAnimate(C, q, {
                    BackgroundTransparency = 1
                })
                b.PlayAnimate(D, q, {
                    TextTransparency = 0.2
                })
                b.PlayAnimate(E, q, {
                    BackgroundTransparency = 0.65
                })
                b.PlayAnimate(G, q, {
                    TextTransparency = 0.25
                })
            else
                b.PlayAnimate(C, q, {
                    BackgroundTransparency = 1
                })
                b.PlayAnimate(D, q, {
                    TextTransparency = 1
                })
                b.PlayAnimate(E, q, {
                    BackgroundTransparency = 1
                })
                b.PlayAnimate(G, q, {
                    TextTransparency = 1
                })
            end
        end)
        if A.ToolTip then
            B.ToolTip = b:CreateToolTips(C, A.Name, A.ToolTip)
        end
        B.SetRender(w:GetValue())
        w:Connect(B.SetRender)
        return B
    end
    x.AddUserFrame = function(z, A, B, C)
        local D = Instance.new("Frame")
        local E = Instance.new("TextLabel")
        local F = Instance.new("Frame")
        local G = Instance.new("UICorner")
        local H = Instance.new("ImageLabel")
        local I = Instance.new("UICorner")
        local J = Instance.new("TextLabel")
        D.Name = b.RandomString()
        D.Parent = v
        D.BackgroundColor3 = Color3.fromRGB(25, 27, 33)
        D.BackgroundTransparency = 1
        D.BorderColor3 = Color3.fromRGB(0, 0, 0)
        D.BorderSizePixel = 0
        D.Size = UDim2.new(1, 0, 0, 60)
        D.ZIndex = y + 8
        E.Name = b.RandomString()
        E.Parent = D
        E.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        E.BackgroundTransparency = 1
        E.BorderColor3 = Color3.fromRGB(0, 0, 0)
        E.BorderSizePixel = 0
        E.Position = UDim2.new(0, 65, 0, 10)
        E.Size = UDim2.new(1, -35, 0, 15)
        E.ZIndex = y + 9
        E.Font = Enum.Font.GothamMedium
        E.Text = A or "User"
        E.TextColor3 = Color3.fromRGB(255, 255, 255)
        E.TextSize = 13
        E.TextTransparency = 0.2
        E.TextXAlignment = Enum.TextXAlignment.Left
        F.Name = b.RandomString()
        F.Parent = D
        F.AnchorPoint = Vector2.new(0.5, 1)
        F.BackgroundColor3 = Color3.fromRGB(45, 48, 58)
        F.BackgroundTransparency = 0.65
        F.BorderColor3 = Color3.fromRGB(0, 0, 0)
        F.BorderSizePixel = 0
        F.Position = UDim2.new(0.5, 0, 1, 0)
        F.Size = UDim2.new(1, -20, 0, 1)
        F.ZIndex = y + 11
        G.CornerRadius = UDim.new(0, 10)
        G.Parent = D
        H.Name = b.RandomString()
        H.Parent = D
        H.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        H.BackgroundTransparency = 1
        H.BorderColor3 = Color3.fromRGB(0, 0, 0)
        H.BorderSizePixel = 0
        H.Position = UDim2.new(0, 10, 0, 5)
        H.Size = UDim2.new(0, 45, 0, 45)
        H.ZIndex = y + 9
        H.Image = B or "rbxasset://textures/ui/clb_robux_20@3x.png"
        I.CornerRadius = UDim.new(1, 0)
        I.Parent = H
        J.Name = b.RandomString()
        J.Parent = D
        J.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        J.BackgroundTransparency = 1
        J.BorderColor3 = Color3.fromRGB(0, 0, 0)
        J.BorderSizePixel = 0
        J.Position = UDim2.new(0, 65, 0, 25)
        J.Size = UDim2.new(1, -35, 0, 15)
        J.ZIndex = y + 9
        J.Font = Enum.Font.GothamMedium
        J.Text = C or "Never"
        J.TextColor3 = Color3.fromRGB(255, 255, 255)
        J.TextSize = 13
        J.TextTransparency = 0.2
        J.TextXAlignment = Enum.TextXAlignment.Left
        local K = {}
        K.SetRender = LPH_NO_VIRTUALIZE(function(L)
            if L then
                b.PlayAnimate(E, q, {
                    TextTransparency = 0.2
                })
                b.PlayAnimate(F, q, {
                    BackgroundTransparency = 0.65
                })
                b.PlayAnimate(H, q, {
                    ImageTransparency = 0
                })
                b.PlayAnimate(J, q, {
                    TextTransparency = 0.2
                })
            else
                b.PlayAnimate(E, q, {
                    TextTransparency = 1
                })
                b.PlayAnimate(F, q, {
                    BackgroundTransparency = 1
                })
                b.PlayAnimate(H, q, {
                    ImageTransparency = 1
                })
                b.PlayAnimate(J, q, {
                    TextTransparency = 1
                })
            end
        end)
        K.SetRender(w:GetValue())
        w:Connect(K.SetRender)
        K.SetUsername = function(L, M)
            E.Text = M or "User"
        end
        K.SetProfile = function(L, M)
            H.Image = M or "rbxasset://textures/ui/clb_robux_20@3x.png"
        end
        K.SetExpires = function(L, M)
            J.Text = M or "Never"
        end
        return K
    end
    return x
end
b.CreateWindow = function(u, v)
    v = b:ProcessParams(v, {
        Logo = b.GlobalLogo,
        Name = "Neverlose",
        Content = "Counter-Strike 2",
        Size = UDim2.new(0, 640, 0, 480),
        ConfigFolder = "NeverLoseConfigs",
        Enable3DRenderer = false,
        Keybind = "Insert"
    })
    local w = {
        Logo = v.Logo,
        Name = v.Name,
        Content = v.Content,
        Size = v.Size,
        ConfigFolder = v.ConfigFolder,
        Signal = b:CreateSignal(true),
        Tabs = {},
        CurrentTab = 1,
        Keybind = v.Keybind,
        Enable3DRenderer = v.Enable3DRenderer
    }
    b.GlobalLogo = w.Logo
    local x = b:CreateLogger()
    if not isfolder(w.ConfigFolder) then
        makefolder(w.ConfigFolder)
    end
    local y = Instance.new("Frame")
    local z = Instance.new("UICorner")
    local A = Instance.new("Frame")
    local B = Instance.new("Frame")
    local C = Instance.new("ImageLabel")
    local D = Instance.new("UICorner")
    local E = Instance.new("TextLabel")
    local F = Instance.new("TextLabel")
    local G = Instance.new("Frame")
    local H = Instance.new("ScrollingFrame")
    local I = Instance.new("UIListLayout")
    local J = Instance.new("Frame")
    local K = Instance.new("ImageLabel")
    local L = Instance.new("UICorner")
    local M = Instance.new("TextLabel")
    local N = Instance.new("TextLabel")
    local O = Instance.new("Frame")
    local P = Instance.new("TextLabel")
    local Q = Instance.new("Frame")
    local R = Instance.new("UIStroke")
    local S = Instance.new("UICorner")
    local T = Instance.new("Frame")
    local U = Instance.new("Frame")
    local V = Instance.new("Frame")
    local W = Instance.new("UIStroke")
    local X = Instance.new("UICorner")
    local Y = Instance.new("TextLabel")
    local Z = Instance.new("Frame")
    local _ = Instance.new("TextLabel")
    local aa = Instance.new("TextLabel")
    local ab = Instance.new("Frame")
    local ac = Instance.new("TextLabel")
    local ad = Instance.new("TextBox")
    local ae = Instance.new("Frame")
    y.Name = b.RandomString()
    y.Parent = b.ScreenGui
    y.AnchorPoint = Vector2.new(0.5, 0.5)
    y.BackgroundColor3 = Color3.fromRGB(8, 8, 13)
    y.BackgroundTransparency = 0.055
    y.BorderColor3 = Color3.fromRGB(0, 0, 0)
    y.BorderSizePixel = 0
    y.ClipsDescendants = true
    y.Position = UDim2.new(255, 0, 255, 0)
    y.Size = w.Size
    y.Active = true
    if not b.EnabledBlur then
        y.BackgroundTransparency = 0.0255
    end
    local af = LPH_NO_VIRTUALIZE(function()
        if w.__3DRender then
            if y.BackgroundTransparency > 0.9 then
                y.Visible = false
                y.Parent = nil
            else
                y.Visible = true
                b.PlayAnimate(y, r, {
                    Position = UDim2.fromScale(0.5, 0.5)
                })
                y.Parent = w.SurfaceGui
            end
        else
            if y.BackgroundTransparency > 0.9 then
                y.Visible = false
                y.Parent = nil
            else
                y.Visible = true
                y.Parent = b.ScreenGui
            end
        end
    end)
    b:AddSignal(y:GetPropertyChangedSignal("BackgroundTransparency"):Connect(af))
    w.SetRender = LPH_NO_VIRTUALIZE(function(ag, ah)
        if ah then
            b.PlayAnimate(y, q, {
                BackgroundTransparency = (b.EnabledBlur and 0.055) or 0.0255,
                Size = w.Size
            })
            b.PlayAnimate(C, q, {
                ImageTransparency = 0
            })
            b.PlayAnimate(E, q, {
                TextTransparency = 0
            })
            b.PlayAnimate(F, q, {
                TextTransparency = 0.65
            })
            b.PlayAnimate(G, q, {
                BackgroundTransparency = 0.65
            })
            b.PlayAnimate(K, q, {
                ImageTransparency = 0
            })
            b.PlayAnimate(M, q, {
                TextTransparency = 0
            })
            b.PlayAnimate(N, q, {
                TextTransparency = 0.65
            })
            b.PlayAnimate(O, q, {
                BackgroundTransparency = 0.65
            })
            b.PlayAnimate(P, q, {
                TextTransparency = 0.5
            })
            b.PlayAnimate(Q, q, {
                BackgroundTransparency = 0.6
            })
            b.PlayAnimate(R, q, {
                Transparency = 0.65
            })
            b.PlayAnimate(U, q, {
                BackgroundTransparency = 0.65
            })
            b.PlayAnimate(V, q, {
                BackgroundTransparency = 0.75
            })
            b.PlayAnimate(W, q, {
                Transparency = 0.65
            })
            b.PlayAnimate(Y, q, {
                TextTransparency = 0.25
            })
            b.PlayAnimate(Z, q, {
                BackgroundTransparency = 0.65
            })
            b.PlayAnimate(_, q, {
                TextTransparency = 0.35
            })
            b.PlayAnimate(aa, q, {
                TextTransparency = 0.25
            })
            b.PlayAnimate(ac, q, {
                TextTransparency = 0.25
            })
            b.PlayAnimate(ad, q, {
                TextTransparency = 0.35
            })
            w.Shadow:Render(true)
        else
            b.PlayAnimate(y, q, {
                BackgroundTransparency = 1,
                Size = w.Size + UDim2.fromOffset(-15, -15)
            })
            b.PlayAnimate(C, q, {
                ImageTransparency = 1
            })
            b.PlayAnimate(E, q, {
                TextTransparency = 1
            })
            b.PlayAnimate(F, q, {
                TextTransparency = 1
            })
            b.PlayAnimate(G, q, {
                BackgroundTransparency = 1
            })
            b.PlayAnimate(K, q, {
                ImageTransparency = 1
            })
            b.PlayAnimate(M, q, {
                TextTransparency = 1
            })
            b.PlayAnimate(N, q, {
                TextTransparency = 1
            })
            b.PlayAnimate(O, q, {
                BackgroundTransparency = 1
            })
            b.PlayAnimate(P, q, {
                TextTransparency = 1
            })
            b.PlayAnimate(Q, q, {
                BackgroundTransparency = 1
            })
            b.PlayAnimate(R, q, {
                Transparency = 1
            })
            b.PlayAnimate(U, q, {
                BackgroundTransparency = 1
            })
            b.PlayAnimate(V, q, {
                BackgroundTransparency = 1
            })
            b.PlayAnimate(W, q, {
                Transparency = 1
            })
            b.PlayAnimate(Y, q, {
                TextTransparency = 1
            })
            b.PlayAnimate(Z, q, {
                BackgroundTransparency = 1
            })
            b.PlayAnimate(_, q, {
                TextTransparency = 1
            })
            b.PlayAnimate(aa, q, {
                TextTransparency = 1
            })
            b.PlayAnimate(ac, q, {
                TextTransparency = 1
            })
            b.PlayAnimate(ad, q, {
                TextTransparency = 1
            })
            w.Shadow:Render(false)
        end
    end)
    w.Shadow = b:CreateShadow(y)
    w.Shadow:Render(false)
    task.delay(0.25, function()
        y.Position = UDim2.new(0.5, 0, 0.5, 0)
        w:SetRender(true)
        b:AddSignal(w.Signal:Connect(LPH_NO_VIRTUALIZE(function(...)
            w:SetRender(...)
        end)))
    end)
    if b.EnabledBlur then
        b:CreateBlurModule(y, w.Signal)
    end
    do
        local ag = Instance.new("Frame")
        ag.Parent = y
        ag.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ag.BorderColor3 = Color3.fromRGB(0, 0, 0)
        ag.BorderSizePixel = 0
        ag.Size = UDim2.new(1, 0, 0, 50)
        ag.ZIndex = 7
        ag.BackgroundTransparency = 1
        b.Drag(ag, y, 0.15)
    end
    z.Parent = y
    A.Name = b.RandomString()
    A.Parent = y
    A.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    A.BackgroundTransparency = 1
    A.BorderColor3 = Color3.fromRGB(0, 0, 0)
    A.BorderSizePixel = 0
    A.Size = UDim2.new(0, 175, 1, 0)
    B.Name = b.RandomString()
    B.Parent = A
    B.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    B.BackgroundTransparency = 1
    B.BorderColor3 = Color3.fromRGB(0, 0, 0)
    B.BorderSizePixel = 0
    B.Size = UDim2.new(1, 0, 0, 50)
    B.ZIndex = 7
    C.Name = b.RandomString()
    C.Parent = B
    C.AnchorPoint = Vector2.new(0, 0.5)
    C.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    C.BackgroundTransparency = 1
    C.BorderColor3 = Color3.fromRGB(0, 0, 0)
    C.BorderSizePixel = 0
    C.Position = UDim2.new(0, 10, 0.5, 0)
    C.Size = UDim2.new(0, 35, 0, 35)
    C.ZIndex = 7
    C.Image = w.Logo
    C.ImageColor3 = b.IconColor
    D.CornerRadius = UDim.new(0, 7)
    D.Parent = C
    E.Name = b.RandomString()
    E.Parent = B
    E.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    E.BackgroundTransparency = 1
    E.BorderColor3 = Color3.fromRGB(0, 0, 0)
    E.BorderSizePixel = 0
    E.Position = UDim2.new(0, 55, 0, 4)
    E.Size = UDim2.new(0, 200, 0, 25)
    E.ZIndex = 7
    E.Font = Enum.Font.GothamBold
    E.Text = w.Name
    E.TextColor3 = Color3.fromRGB(255, 255, 255)
    E.TextSize = 18
    E.TextXAlignment = Enum.TextXAlignment.Left
    F.Name = b.RandomString()
    F.Parent = B
    F.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    F.BackgroundTransparency = 1
    F.BorderColor3 = Color3.fromRGB(0, 0, 0)
    F.BorderSizePixel = 0
    F.Position = UDim2.new(0, 55, 0, 25)
    F.Size = UDim2.new(0, 200, 0, 15)
    F.ZIndex = 7
    F.Font = Enum.Font.GothamBold
    F.Text = w.Content
    F.TextColor3 = Color3.fromRGB(255, 255, 255)
    F.TextSize = 9
    F.TextTransparency = 0.65
    F.TextXAlignment = Enum.TextXAlignment.Left
    G.Name = b.RandomString()
    G.Parent = B
    G.AnchorPoint = Vector2.new(0.5, 1)
    G.BackgroundColor3 = Color3.fromRGB(45, 48, 58)
    G.BackgroundTransparency = 0.65
    G.BorderColor3 = Color3.fromRGB(0, 0, 0)
    G.BorderSizePixel = 0
    G.Position = UDim2.new(0.5, 0, 1, 0)
    G.Size = UDim2.new(1, -10, 0, 1)
    G.ZIndex = 5
    H.Name = b.RandomString()
    H.Parent = A
    H.Active = true
    H.AnchorPoint = Vector2.new(0.5, 0)
    H.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    H.BackgroundTransparency = 1
    H.BorderColor3 = Color3.fromRGB(0, 0, 0)
    H.BorderSizePixel = 0
    H.Position = UDim2.new(0.5, 0, 0, 60)
    H.Size = UDim2.new(1, -10, 1, -115)
    H.ZIndex = 7
    H.ScrollBarThickness = 0
    I.Parent = H
    I.HorizontalAlignment = Enum.HorizontalAlignment.Center
    I.SortOrder = Enum.SortOrder.LayoutOrder
    I.Padding = UDim.new(0, 5)
    b:AddSignal(I:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(LPH_NO_VIRTUALIZE(function()
        H.CanvasSize = UDim2.fromOffset(0, I.AbsoluteContentSize.Y + 1)
    end)))
    J.Name = b.RandomString()
    J.Parent = A
    J.AnchorPoint = Vector2.new(0, 1)
    J.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    J.BackgroundTransparency = 1
    J.BorderColor3 = Color3.fromRGB(0, 0, 0)
    J.BorderSizePixel = 0
    J.Position = UDim2.new(0, 0, 1, 0)
    J.Size = UDim2.new(1, 0, 0, 50)
    J.ZIndex = 7
    K.Name = b.RandomString()
    K.Parent = J
    K.AnchorPoint = Vector2.new(0, 0.5)
    K.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    K.BackgroundTransparency = 1
    K.BorderColor3 = Color3.fromRGB(0, 0, 0)
    K.BorderSizePixel = 0
    K.Position = UDim2.new(0, 10, 0.5, 0)
    K.Size = UDim2.new(0, 35, 0, 35)
    K.ZIndex = 7
    K.Image = b.UserProfile or ""
    L.CornerRadius = UDim.new(1, 0)
    L.Parent = K
    M.Name = b.RandomString()
    M.Parent = J
    M.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    M.BackgroundTransparency = 1
    M.BorderColor3 = Color3.fromRGB(0, 0, 0)
    M.BorderSizePixel = 0
    M.Position = UDim2.new(0, 55, 0, 5)
    M.Size = UDim2.new(0, 100, 0, 25)
    M.ZIndex = 7
    M.Font = Enum.Font.GothamBold
    M.Text = ""
    M.TextColor3 = Color3.fromRGB(255, 255, 255)
    M.TextSize = 14
    M.TextXAlignment = Enum.TextXAlignment.Left
    M.TextTruncate = Enum.TextTruncate.SplitWord
    N.Name = b.RandomString()
    N.Parent = J
    N.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    N.BackgroundTransparency = 1
    N.BorderColor3 = Color3.fromRGB(0, 0, 0)
    N.BorderSizePixel = 0
    N.Position = UDim2.new(0, 55, 0, 25)
    N.Size = UDim2.new(0, 200, 0, 15)
    N.ZIndex = 7
    N.Font = Enum.Font.GothamBold
    N.Text = "never"
    N.TextColor3 = Color3.fromRGB(255, 255, 255)
    N.TextSize = 10
    N.TextTransparency = 0.65
    N.TextXAlignment = Enum.TextXAlignment.Left
    O.Name = b.RandomString()
    O.Parent = J
    O.AnchorPoint = Vector2.new(0.5, 0)
    O.BackgroundColor3 = Color3.fromRGB(45, 48, 58)
    O.BackgroundTransparency = 0.65
    O.BorderColor3 = Color3.fromRGB(0, 0, 0)
    O.BorderSizePixel = 0
    O.Position = UDim2.new(0.5, 0, 0, 0)
    O.Size = UDim2.new(1, -10, 0, 1)
    O.ZIndex = 5
    P.Name = b.RandomString()
    P.Parent = J
    P.AnchorPoint = Vector2.new(1, 0.5)
    P.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    P.BackgroundTransparency = 1
    P.BorderColor3 = Color3.fromRGB(0, 0, 0)
    P.BorderSizePixel = 0
    P.Position = UDim2.new(1, -7, 0.5, 0)
    P.Size = UDim2.new(0, 25, 0, 25)
    P.ZIndex = 7
    P.FontFace = b.BuiltInBold
    P.Text = "chevron-large-right"
    P.TextColor3 = Color3.fromRGB(255, 255, 255)
    P.TextSize = 13
    P.TextTransparency = 0.5
    b:AddSignal(J.MouseEnter:Connect(LPH_NO_VIRTUALIZE(function()
        b.PlayAnimate(P, q, {
            TextTransparency = 0.25
        })
    end)))
    b:AddSignal(J.MouseLeave:Connect(LPH_NO_VIRTUALIZE(function()
        b.PlayAnimate(P, q, {
            TextTransparency = 0.5
        })
    end)))
    Q.Name = b.RandomString()
    Q.Parent = y
    Q.BackgroundColor3 = Color3.fromRGB(8, 8, 13)
    Q.BackgroundTransparency = 0.6
    Q.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Q.BorderSizePixel = 0
    Q.ClipsDescendants = true
    Q.Position = UDim2.new(0, 176, 0, 0)
    Q.Size = UDim2.new(1, -176, 1, 0)
    Q.ZIndex = 8
    R.Transparency = 0.65
    R.Color = Color3.fromRGB(45, 48, 58)
    R.Parent = Q
    S.CornerRadius = UDim.new(0, 13)
    S.Parent = Q
    T.Name = b.RandomString()
    T.Parent = Q
    T.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    T.BackgroundTransparency = 1
    T.BorderColor3 = Color3.fromRGB(0, 0, 0)
    T.BorderSizePixel = 0
    T.Size = UDim2.new(1, 0, 0, 50)
    T.ZIndex = 9
    U.Name = b.RandomString()
    U.Parent = T
    U.AnchorPoint = Vector2.new(0.5, 1)
    U.BackgroundColor3 = Color3.fromRGB(45, 48, 58)
    U.BackgroundTransparency = 0.65
    U.BorderColor3 = Color3.fromRGB(0, 0, 0)
    U.BorderSizePixel = 0
    U.Position = UDim2.new(0.5, 0, 1, 0)
    U.Size = UDim2.new(1, -10, 0, 1)
    U.ZIndex = 9
    V.Name = b.RandomString()
    V.Parent = T
    V.AnchorPoint = Vector2.new(0, 0.5)
    V.BackgroundColor3 = Color3.fromRGB(13, 17, 22)
    V.BackgroundTransparency = 0.75
    V.BorderColor3 = Color3.fromRGB(0, 0, 0)
    V.BorderSizePixel = 0
    V.Position = UDim2.new(0, 10, 0.5, 0)
    V.Size = UDim2.new(0, 115, 0, 30)
    V.ZIndex = 9
    W.Transparency = 0.65
    W.Color = Color3.fromRGB(45, 48, 58)
    W.Parent = V
    X.CornerRadius = UDim.new(0, 4)
    X.Parent = V
    Y.Name = b.RandomString()
    Y.Parent = V
    Y.AnchorPoint = Vector2.new(0, 0.5)
    Y.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Y.BackgroundTransparency = 1
    Y.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Y.BorderSizePixel = 0
    Y.Position = UDim2.new(0, 2, 0.5, 0)
    Y.Size = UDim2.new(0, 25, 0, 25)
    Y.ZIndex = 9
    Y.FontFace = b.BuiltInBold
    Y.Text = "pencil-square"
    Y.TextColor3 = Color3.fromRGB(223, 223, 223)
    Y.TextSize = 16
    Y.TextTransparency = 0.25
    Y.TextWrapped = true
    Z.Name = b.RandomString()
    Z.Parent = V
    Z.BackgroundColor3 = Color3.fromRGB(45, 48, 58)
    Z.BackgroundTransparency = 0.65
    Z.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Z.BorderSizePixel = 0
    Z.Position = UDim2.new(0, 30, 0, 0)
    Z.Size = UDim2.new(0, 1, 1, 0)
    _.Name = b.RandomString()
    _.Parent = V
    _.AnchorPoint = Vector2.new(0, 0.5)
    _.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    _.BackgroundTransparency = 1
    _.BorderColor3 = Color3.fromRGB(0, 0, 0)
    _.BorderSizePixel = 0
    _.Position = UDim2.new(0, 40, 0.5, 0)
    _.Size = UDim2.new(1, -7, 0, 15)
    _.ZIndex = 9
    _.Font = Enum.Font.GothamMedium
    _.Text = "Default"
    _.TextColor3 = Color3.fromRGB(255, 255, 255)
    _.TextSize = 12
    _.TextTransparency = 0.35
    _.TextXAlignment = Enum.TextXAlignment.Left
    aa.Name = b.RandomString()
    aa.Parent = V
    aa.AnchorPoint = Vector2.new(1, 0.5)
    aa.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    aa.BackgroundTransparency = 1
    aa.BorderColor3 = Color3.fromRGB(0, 0, 0)
    aa.BorderSizePixel = 0
    aa.Position = UDim2.new(1, -2, 0.5, 0)
    aa.Size = UDim2.new(0, 25, 0, 25)
    aa.ZIndex = 9
    aa.FontFace = b.BuiltInBold
    aa.Text = "chevron-small-down"
    aa.TextColor3 = Color3.fromRGB(223, 223, 223)
    aa.TextSize = 16
    aa.TextTransparency = 0.25
    aa.TextWrapped = true
    ab.Name = b.RandomString()
    ab.Parent = T
    ab.AnchorPoint = Vector2.new(1, 0.5)
    ab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ab.BackgroundTransparency = 1
    ab.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ab.BorderSizePixel = 0
    ab.ClipsDescendants = true
    ab.Position = UDim2.new(1, -10, 0.5, 0)
    ab.Size = UDim2.new(0, 30, 0, 30)
    ab.ZIndex = 12
    ac.Name = b.RandomString()
    ac.Parent = ab
    ac.AnchorPoint = Vector2.new(0, 0.5)
    ac.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ac.BackgroundTransparency = 1
    ac.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ac.BorderSizePixel = 0
    ac.Position = UDim2.new(0, 2, 0.5, 0)
    ac.Size = UDim2.new(0, 25, 0, 25)
    ac.ZIndex = 12
    ac.FontFace = b.BuiltInBold
    ac.Text = "magnifying-glass"
    ac.TextColor3 = Color3.fromRGB(223, 223, 223)
    ac.TextSize = 14
    ac.TextTransparency = 0.45
    ac.TextWrapped = true
    ad.Name = b.RandomString()
    ad.Parent = ab
    ad.AnchorPoint = Vector2.new(0, 0.5)
    ad.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ad.BackgroundTransparency = 1
    ad.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ad.BorderSizePixel = 0
    ad.Position = UDim2.new(0, 35, 0.5, 0)
    ad.Size = UDim2.new(1, -35, 0, 25)
    ad.ZIndex = 12
    ad.ClearTextOnFocus = false
    ad.Font = Enum.Font.GothamMedium
    ad.PlaceholderText = "Search"
    ad.Text = ""
    ad.TextColor3 = Color3.fromRGB(255, 255, 255)
    ad.TextSize = 13
    ad.TextTransparency = 1
    ad.TextXAlignment = Enum.TextXAlignment.Left
    ae.Name = b.RandomString()
    ae.Parent = Q
    ae.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ae.BackgroundTransparency = 1
    ae.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ae.BorderSizePixel = 0
    ae.ClipsDescendants = true
    ae.Position = UDim2.new(0, 0, 0, 50)
    ae.Size = UDim2.new(1, 0, 1, -50)
    ae.ZIndex = 5
    do
        w.Searching = false
        local ag = b:CreateInput(ac, LPH_NO_VIRTUALIZE(function()
            w.Searching = not w.Searching
            if w.Searching then
                b.PlayAnimate(ab, r, {
                    Size = UDim2.new(0, 220, 0, 30)
                })
                b.PlayAnimate(ac, q, {
                    TextTransparency = 0.25
                })
                b.PlayAnimate(ad, r, {
                    TextTransparency = 0.35
                })
            else
                b.PlayAnimate(ab, r, {
                    Size = UDim2.new(0, 30, 0, 30)
                })
                b.PlayAnimate(ac, q, {
                    TextTransparency = 0.45
                })
                b.PlayAnimate(ad, q, {
                    TextTransparency = 1
                })
                ad.Text = ""
            end
        end))
        local ah = tick()
        local ai
        local aj = 0.2
        b:AddSignal(ad:GetPropertyChangedSignal("Text"):Connect(LPH_NO_VIRTUALIZE(function()
            if not ad.Text:byte() then
                for ak, al in next, b.NameRegisitry do
                    al.Root.Visible = true
                end
                return
            end
            ah = tick()
            if ai then
                task.cancel(ai)
                ai = nil
            end
            ai = task.delay(aj, function()
                if ad.Text:byte() and (tick() - ah) > aj then
                    for ak, al in next, b.NameRegisitry do
                        if string.find(string.lower(al.Idx), string.lower(ad.Text), 1, true) then
                            al.Root.Visible = true
                        else
                            al.Root.Visible = false
                        end
                    end
                end
            end)
        end)))
        b:AddSignal(ag.MouseEnter:Connect(LPH_NO_VIRTUALIZE(function()
            b.PlayAnimate(ac, q, {
                TextTransparency = 0.25
            })
        end)))
        b:AddSignal(ag.MouseLeave:Connect(LPH_NO_VIRTUALIZE(function()
            if w.Searching then
                b.PlayAnimate(ac, q, {
                    TextTransparency = 0.25
                })
            else
                b.PlayAnimate(ac, q, {
                    TextTransparency = 0.45
                })
            end
        end)))
    end
    if w.Enable3DRenderer then
        local ag = Instance.new("Part")
        ag.Name = b.RandomString()
        ag.Anchored = true
        ag.Transparency = 1
        ag.CanCollide = false
        ag.CanTouch = false
        ag.AudioCanCollide = false
        ag.CollisionGroup = b.RandomString()
        ag.CFrame = CFrame.new(0, 0, 0)
        ag.Size = Vector3.zero
        local ah = Instance.new("SurfaceGui")
        ah.Parent = b.ScreenGui
        ah.Adornee = ag
        ah.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        ah.AlwaysOnTop = true
        ah.LightInfluence = 1
        ah.ZIndexBehavior = Enum.ZIndexBehavior.Global
        ah.SizingMode = Enum.SurfaceGuiSizingMode.FixedSize
        ah.PixelsPerStud = 40
        w.SurfaceGui = ah
        b.GlobalSurfaceGui = ah
        local ai = Vector2.new(1920, 1380)
        w.Load3DBlock = LPH_NO_VIRTUALIZE(function()
            if not w.Signal:GetValue() then
                local aj, ak = m:WorldToViewportPoint(ag.Position)
                if ak then
                    b.PlayAnimate(ag, r, {
                        CFrame = m.CFrame * CFrame.new(0, 0, -15) * CFrame.Angles(0, math.rad(180), 0)
                    })
                end
                return
            end
            local aj = 50
            local ak = Vector2.new(ai.X + 5, ai.Y * 1.35) / (aj / 2)
            local al = ak.Magnitude
            local am = al / 1.35
            ag.Parent = b.BlurModuleParent or workspace
            b.PlayAnimate(ag, r, {
                CFrame = (m.CFrame * CFrame.new(0, 0, -25)) * CFrame.Angles(0, math.rad(180), 0)
            })
            ag.Size = Vector3.new(ai.X / am, ai.Y / am, 0)
        end)
        w.Set3DRender = function(aj, ak)
            w.__3DRender = ak
            b.Global3DRenderMode = ak
            if ak then
                w.Load3DBlock()
            else
                ag.Parent = nil
            end
            af()
        end
    end
    w.AddTabLabel = function(ag, ah)
        local ai = Instance.new("TextLabel")
        ai.Name = b.RandomString()
        ai.Parent = H
        ai.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ai.BackgroundTransparency = 1
        ai.BorderColor3 = Color3.fromRGB(0, 0, 0)
        ai.BorderSizePixel = 0
        ai.Size = UDim2.new(1, -7, 0, 15)
        ai.ZIndex = 8
        ai.Font = Enum.Font.GothamMedium
        ai.Text = ah
        ai.TextColor3 = Color3.fromRGB(255, 255, 255)
        ai.TextSize = 11
        ai.TextTransparency = 0.5
        ai.TextXAlignment = Enum.TextXAlignment.Left
        local aj = LPH_NO_VIRTUALIZE(function(aj)
            if aj then
                b.PlayAnimate(ai, q, {
                    TextTransparency = 0.5
                })
            else
                b.PlayAnimate(ai, q, {
                    TextTransparency = 1
                })
            end
        end)
        aj(w.Signal:GetValue())
        return w.Signal:Connect(aj)
    end
    w.AddTab = function(ag, ah)
        ah = b:ProcessParams(ah, {
            Icon = "crosshairs",
            Name = "Tab",
            Type = "Double"
        })
        local ai = {
            Signal = b:CreateSignal(false)
        }
        local aj = Instance.new("Frame")
        local ak = Instance.new("UICorner")
        local al = Instance.new("TextLabel")
        local am = Instance.new("TextLabel")
        ai.Idx = aj
        aj.Name = b.RandomString()
        aj.Parent = H
        aj.BackgroundColor3 = Color3.fromRGB(41, 45, 49)
        aj.BackgroundTransparency = 0.5
        aj.BorderColor3 = Color3.fromRGB(0, 0, 0)
        aj.BorderSizePixel = 0
        aj.Size = UDim2.new(1, -1, 0, 30)
        aj.ZIndex = 8
        ak.CornerRadius = UDim.new(0, 6)
        ak.Parent = aj
        al.Name = b.RandomString()
        al.Parent = aj
        al.AnchorPoint = Vector2.new(0, 0.5)
        al.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        al.BackgroundTransparency = 1
        al.BorderColor3 = Color3.fromRGB(0, 0, 0)
        al.BorderSizePixel = 0
        al.Position = UDim2.new(0, 2, 0.5, 0)
        al.Size = UDim2.new(0, 25, 0, 25)
        al.ZIndex = 9
        al.FontFace = b.BuiltInBold
        al.Text = ah.Icon
        al.TextColor3 = b.AccentColor
        al.TextSize = 16
        al.TextWrapped = true
        am.Name = b.RandomString()
        am.Parent = aj
        am.AnchorPoint = Vector2.new(0, 0.5)
        am.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        am.BackgroundTransparency = 1
        am.BorderColor3 = Color3.fromRGB(0, 0, 0)
        am.BorderSizePixel = 0
        am.Position = UDim2.new(0, 30, 0.5, 0)
        am.Size = UDim2.new(1, -7, 0, 15)
        am.ZIndex = 9
        am.Font = Enum.Font.GothamMedium
        am.Text = ah.Name
        am.TextColor3 = Color3.fromRGB(255, 255, 255)
        am.TextSize = 12
        am.TextXAlignment = Enum.TextXAlignment.Left
        local an = Instance.new("Frame")
        local ao = Instance.new("ScrollingFrame")
        local ap = Instance.new("UIListLayout")
        local aq = Instance.new("ScrollingFrame")
        local ar = Instance.new("UIListLayout")
        an.Name = b.RandomString()
        an.Parent = ae
        an.AnchorPoint = Vector2.new(0.5, 0.5)
        an.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        an.BackgroundTransparency = 1
        an.BorderColor3 = Color3.fromRGB(0, 0, 0)
        an.BorderSizePixel = 0
        an.ClipsDescendants = true
        an.Position = UDim2.new(0.5, 0, 0.5, 0)
        an.Size = UDim2.new(1, 0, 1, 0)
        an.Visible = true
        ao.Name = b.RandomString()
        ao.Parent = an
        ao.Active = true
        ao.AnchorPoint = Vector2.new(0.5, 0.5)
        ao.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ao.BackgroundTransparency = 1
        ao.BorderColor3 = Color3.fromRGB(0, 0, 0)
        ao.BorderSizePixel = 0
        ao.ClipsDescendants = false
        ao.Position = UDim2.new(0.25, 0, 0.5, 0)
        ao.Size = UDim2.new(0.5, 0, 1, -5)
        ao.ScrollBarThickness = 0
        ap.Parent = ao
        ap.HorizontalAlignment = Enum.HorizontalAlignment.Right
        ap.SortOrder = Enum.SortOrder.LayoutOrder
        ap.Padding = UDim.new(0, 5)
        b:AddSignal(ap:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(LPH_NO_VIRTUALIZE(function()
            ao.CanvasSize = UDim2.fromOffset(0, ap.AbsoluteContentSize.Y + 1)
        end)))
        aq.Name = b.RandomString()
        aq.Parent = an
        aq.Active = true
        aq.AnchorPoint = Vector2.new(0.5, 0.5)
        aq.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        aq.BackgroundTransparency = 1
        aq.BorderColor3 = Color3.fromRGB(0, 0, 0)
        aq.BorderSizePixel = 0
        aq.ClipsDescendants = false
        aq.Position = UDim2.new(0.75, 0, 0.5, 0)
        aq.Size = UDim2.new(0.5, 0, 1, -5)
        aq.ScrollBarThickness = 0
        ar.Parent = aq
        ar.SortOrder = Enum.SortOrder.LayoutOrder
        ar.Padding = UDim.new(0, 5)
        if ah.Type == "Single" then
            ar:Destroy()
            aq:Destroy()
            aq = ao
            ar = ap
            ao.Size = UDim2.new(1, 0, 1, -5)
            ao.Position = UDim2.new(0.5, 0, 0.5, 0)
        else
            b:AddSignal(ar:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(LPH_NO_VIRTUALIZE(function()
                aq.CanvasSize = UDim2.fromOffset(0, ar.AbsoluteContentSize.Y + 1)
            end)))
        end
        b:AddSignal(al:GetPropertyChangedSignal("TextTransparency"):Connect(LPH_NO_VIRTUALIZE(function()
            if al.TextTransparency > 0.4 then
                ap.Parent = nil
                ar.Parent = nil
                an.Visible = false
                an.Parent = nil
            else
                ap.Parent = ao
                ar.Parent = aq
                an.Visible = true
                an.Parent = ae
            end
        end)))
        ai.SetValue = LPH_NO_VIRTUALIZE(function(as)
            ai.Signal:SetValue(as)
            if as then
                b.PlayAnimate(aj, q, {
                    BackgroundTransparency = 0.5
                })
                b.PlayAnimate(al, q, {
                    TextTransparency = 0,
                    TextColor3 = b.AccentColor
                })
                b.PlayAnimate(am, q, {
                    TextTransparency = 0
                })
            else
                b.PlayAnimate(aj, q, {
                    BackgroundTransparency = 1
                })
                b.PlayAnimate(al, q, {
                    TextTransparency = 0.5,
                    TextColor3 = Color3.fromRGB(252, 252, 252)
                })
                b.PlayAnimate(am, q, {
                    TextTransparency = 0.5
                })
            end
        end)
        table.insert(w.Tabs, ai)
        if w.Tabs[w.CurrentTab] == ai then
            ai.SetValue(true)
        else
            ai.SetValue(false)
        end
        local as = b:CreateInput(aj, LPH_NO_VIRTUALIZE(function()
            for as, at in next, w.Tabs do
                if at.Idx == aj then
                    at.SetValue(true)
                    w.CurrentTab = as
                else
                    at.SetValue(false)
                end
            end
        end))
        b:AddSignal(as.MouseEnter:Connect(LPH_NO_VIRTUALIZE(function()
            if w.Tabs[w.CurrentTab] == ai then
                b.PlayAnimate(aj, q, {
                    BackgroundTransparency = 0.5
                })
            else
                b.PlayAnimate(aj, q, {
                    BackgroundTransparency = 0.8
                })
            end
        end)))
        b:AddSignal(as.MouseLeave:Connect(LPH_NO_VIRTUALIZE(function()
            if w.Tabs[w.CurrentTab] == ai then
                b.PlayAnimate(aj, q, {
                    BackgroundTransparency = 0.5
                })
            else
                b.PlayAnimate(aj, q, {
                    BackgroundTransparency = 1
                })
            end
        end)))
        w.Signal:Connect(LPH_NO_VIRTUALIZE(function(at)
            if at then
                if w.Tabs[w.CurrentTab] == ai then
                    ai.SetValue(true)
                else
                    ai.SetValue(false)
                end
            else
                ai.SetValue(false)
                b.PlayAnimate(aj, q, {
                    BackgroundTransparency = 1
                })
                b.PlayAnimate(al, q, {
                    TextTransparency = 1
                })
                b.PlayAnimate(am, q, {
                    TextTransparency = 1
                })
            end
        end))
        ai.AddSection = function(at, au)
            au = b:ProcessParams(au, {
                Name = "SECTION",
                Position = "left"
            })
            local av = Instance.new("Frame")
            local aw = Instance.new("TextLabel")
            local ax = Instance.new("Frame")
            local ay = Instance.new("UIStroke")
            local az = Instance.new("UICorner")
            local aA = Instance.new("UIListLayout")
            av.Name = b.RandomString()
            av.Parent = (string.lower(au.Position) == "left" and ao) or aq
            av.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            av.BackgroundTransparency = 1
            av.BorderColor3 = Color3.fromRGB(0, 0, 0)
            av.BorderSizePixel = 0
            av.ClipsDescendants = true
            av.Size = UDim2.new(1, -5, 0, 0)
            av.ZIndex = 9
            aw.Name = b.RandomString()
            aw.Parent = av
            aw.AnchorPoint = Vector2.new(0.5, 0)
            aw.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            aw.BackgroundTransparency = 1
            aw.BorderColor3 = Color3.fromRGB(0, 0, 0)
            aw.BorderSizePixel = 0
            aw.Position = UDim2.new(0.5, 0, 0, 0)
            aw.Size = UDim2.new(1, -35, 0, 15)
            aw.ZIndex = 9
            aw.Font = Enum.Font.GothamMedium
            aw.Text = au.Name
            aw.TextColor3 = Color3.fromRGB(255, 255, 255)
            aw.TextSize = 11
            aw.TextTransparency = 0.5
            aw.TextXAlignment = Enum.TextXAlignment.Left
            ax.Name = b.RandomString()
            ax.Parent = av
            ax.AnchorPoint = Vector2.new(0.5, 0)
            ax.BackgroundColor3 = Color3.fromRGB(20, 22, 27)
            ax.BackgroundTransparency = 0.5
            ax.BorderColor3 = Color3.fromRGB(0, 0, 0)
            ax.BorderSizePixel = 0
            ax.ClipsDescendants = true
            ax.Position = UDim2.new(0.5, 0, 0, 20)
            ax.Size = UDim2.new(1, -10, 1, -21)
            ax.ZIndex = 9
            ay.Transparency = 0.65
            ay.Color = Color3.fromRGB(45, 48, 58)
            ay.Parent = ax
            az.CornerRadius = UDim.new(0, 10)
            az.Parent = ax
            aA.Parent = ax
            aA.HorizontalAlignment = Enum.HorizontalAlignment.Center
            aA.SortOrder = Enum.SortOrder.LayoutOrder
            aA:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(LPH_NO_VIRTUALIZE(function()
                if aA.AbsoluteContentSize.Y <= 1 then
                    b.PlayAnimate(av, r, {
                        Size = UDim2.new(1, -5, 0, 0)
                    })
                else
                    b.PlayAnimate(av, r, {
                        Size = UDim2.new(1, -5, 0, aA.AbsoluteContentSize.Y + 19.5)
                    })
                end
            end))
            local aB = b:RegisiterItem(ax, ai.Signal)
            aB.SetRender = LPH_NO_VIRTUALIZE(function(aC)
                if aC then
                    b.PlayAnimate(aw, q, {
                        TextTransparency = 0.5
                    })
                    b.PlayAnimate(ax, q, {
                        BackgroundTransparency = 0.5
                    })
                    b.PlayAnimate(ay, q, {
                        Transparency = 0.65
                    })
                else
                    b.PlayAnimate(aw, q, {
                        TextTransparency = 1
                    })
                    b.PlayAnimate(ax, q, {
                        BackgroundTransparency = 1
                    })
                    b.PlayAnimate(ay, q, {
                        Transparency = 1
                    })
                end
            end)
            aB.SetRender(ai.Signal:GetValue())
            ai.Signal:Connect(aB.SetRender)
            return aB
        end
        return ai
    end
    w._InitConfig = function(ag)
        local ah = b:CreateSignal(false)
        local ai = {
            Signals = {}
        }
        local aj = Instance.new("Frame")
        local ak = Instance.new("UICorner")
        local al = Instance.new("UIListLayout")
        local am = Instance.new("UIStroke")
        local an = Instance.new("Frame")
        local ao = Instance.new("TextLabel")
        local ap = Instance.new("Frame")
        local aq = Instance.new("Frame")
        local ar = Instance.new("UIListLayout")
        local as = Instance.new("Frame")
        local at = Instance.new("UICorner")
        local au = Instance.new("UIStroke")
        local av = Instance.new("TextBox")
        local aw = Instance.new("Frame")
        local ax = Instance.new("TextLabel")
        local ay = Instance.new("UICorner")
        local az = Instance.new("UICorner")
        local aA = b:CreateShadow(aj)
        ai.SetRender = LPH_NO_VIRTUALIZE(function(aB)
            if aB then
                aj.Position = UDim2.fromOffset(V.AbsolutePosition.X + 110, V.AbsolutePosition.Y + 96)
                b.PlayAnimate(aj, q, {
                    BackgroundTransparency = 0.035,
                    Position = UDim2.fromOffset(V.AbsolutePosition.X + 110, V.AbsolutePosition.Y + 95)
                })
                b.PlayAnimate(am, q, {
                    Transparency = 0.65
                })
                b.PlayAnimate(ao, q, {
                    TextTransparency = 0.2
                })
                b.PlayAnimate(au, q, {
                    Transparency = 0.65
                })
                b.PlayAnimate(ap, q, {
                    BackgroundTransparency = 0.65
                })
                b.PlayAnimate(as, q, {
                    BackgroundTransparency = 0
                })
                b.PlayAnimate(av, q, {
                    TextTransparency = 0.35
                })
                b.PlayAnimate(ax, q, {
                    TextTransparency = 0.35
                })
                b.PlayAnimate(aa, q, {
                    Rotation = 180
                })
                aA:Render(true)
            else
                b.PlayAnimate(aa, q, {
                    Rotation = 0
                })
                b.PlayAnimate(aj, q, {
                    BackgroundTransparency = 1,
                    Position = UDim2.fromOffset(V.AbsolutePosition.X + 110, V.AbsolutePosition.Y + 96)
                })
                b.PlayAnimate(au, q, {
                    Transparency = 1
                })
                b.PlayAnimate(am, q, {
                    Transparency = 1
                })
                b.PlayAnimate(ao, q, {
                    TextTransparency = 1
                })
                b.PlayAnimate(ap, q, {
                    BackgroundTransparency = 1
                })
                b.PlayAnimate(as, q, {
                    BackgroundTransparency = 1
                })
                b.PlayAnimate(av, q, {
                    TextTransparency = 1
                })
                b.PlayAnimate(ax, q, {
                    TextTransparency = 1
                })
                aA:Render(false)
            end
        end)
        b:AddSignal(aj:GetPropertyChangedSignal("BackgroundTransparency"):Connect(LPH_NO_VIRTUALIZE(function()
            if aj.BackgroundTransparency > 0.9 then
                aj.Visible = false
                al.Parent = nil
                aj.Parent = nil
            else
                aj.Visible = true
                al.Parent = aj
                if b.Global3DRenderMode then
                    aj.Parent = b.GlobalSurfaceGui
                else
                    aj.Parent = b.ScreenGui
                end
            end
        end)))
        aj.Name = b.RandomString()
        aj.Parent = b.ScreenGui
        aj.AnchorPoint = Vector2.new(0.5, 0)
        aj.BackgroundColor3 = Color3.fromRGB(20, 22, 27)
        aj.BackgroundTransparency = 0.035
        aj.BorderColor3 = Color3.fromRGB(0, 0, 0)
        aj.BorderSizePixel = 0
        aj.ClipsDescendants = true
        aj.Position = UDim2.new(255, 255, 255, 255)
        aj.Size = UDim2.new(0, 220, 0, 110)
        aj.ZIndex = 151
        ak.CornerRadius = UDim.new(0, 10)
        ak.Parent = aj
        al.Parent = aj
        al.HorizontalAlignment = Enum.HorizontalAlignment.Center
        al.SortOrder = Enum.SortOrder.LayoutOrder
        al.Padding = UDim.new(0, 4)
        am.Transparency = 0.65
        am.Color = Color3.fromRGB(45, 48, 58)
        am.Parent = aj
        an.Name = b.RandomString()
        an.Parent = aj
        an.BackgroundColor3 = Color3.fromRGB(25, 27, 33)
        an.BackgroundTransparency = 1
        an.BorderColor3 = Color3.fromRGB(0, 0, 0)
        an.BorderSizePixel = 0
        an.Size = UDim2.new(1, 0, 0, 30)
        an.ZIndex = 154
        ao.Name = b.RandomString()
        ao.Parent = an
        ao.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ao.BackgroundTransparency = 1
        ao.BorderColor3 = Color3.fromRGB(0, 0, 0)
        ao.BorderSizePixel = 0
        ao.Position = UDim2.new(0, 11, 0, 6)
        ao.Size = UDim2.new(0, 1, 0, 15)
        ao.ZIndex = 154
        ao.Font = Enum.Font.GothamMedium
        ao.Text = "Config"
        ao.TextColor3 = Color3.fromRGB(255, 255, 255)
        ao.TextSize = 13
        ao.TextTransparency = 0.2
        ao.TextXAlignment = Enum.TextXAlignment.Left
        ap.Name = b.RandomString()
        ap.Parent = an
        ap.AnchorPoint = Vector2.new(0.5, 1)
        ap.BackgroundColor3 = Color3.fromRGB(45, 48, 58)
        ap.BackgroundTransparency = 0.65
        ap.BorderColor3 = Color3.fromRGB(0, 0, 0)
        ap.BorderSizePixel = 0
        ap.Position = UDim2.new(0.5, 0, 1, 0)
        ap.Size = UDim2.new(1, -20, 0, 1)
        ap.ZIndex = 154
        aq.Name = b.RandomString()
        aq.Parent = an
        aq.AnchorPoint = Vector2.new(1, 0)
        aq.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        aq.BackgroundTransparency = 1
        aq.BorderColor3 = Color3.fromRGB(0, 0, 0)
        aq.BorderSizePixel = 0
        aq.Position = UDim2.new(1, -11, 0, 2)
        aq.Size = UDim2.new(1, -20, 0, 25)
        aq.ZIndex = 154
        ar.Parent = aq
        ar.FillDirection = Enum.FillDirection.Horizontal
        ar.HorizontalAlignment = Enum.HorizontalAlignment.Right
        ar.SortOrder = Enum.SortOrder.LayoutOrder
        ar.VerticalAlignment = Enum.VerticalAlignment.Center
        ar.Padding = UDim.new(0, 5)
        b:AddSignal(al:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(LPH_NO_VIRTUALIZE(function()
            if #ai.Signals <= 0 then
                b.PlayAnimate(aj, q, {
                    Size = UDim2.new(0, 220, 0, al.AbsoluteContentSize.Y + 0)
                })
            else
                b.PlayAnimate(aj, q, {
                    Size = UDim2.new(0, 220, 0, al.AbsoluteContentSize.Y + 5)
                })
            end
        end)))
        as.Name = b.RandomString()
        as.Parent = aq
        as.BackgroundColor3 = Color3.fromRGB(26, 28, 36)
        as.BorderColor3 = Color3.fromRGB(0, 0, 0)
        as.BorderSizePixel = 0
        as.ClipsDescendants = true
        as.Size = UDim2.new(0, 100, 0, 18)
        as.ZIndex = 154
        at.CornerRadius = UDim.new(0, 4)
        at.Parent = as
        au.Transparency = 0.65
        au.Color = Color3.fromRGB(45, 48, 58)
        au.Parent = as
        av.Parent = as
        av.AnchorPoint = Vector2.new(0, 0.5)
        av.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        av.BackgroundTransparency = 1
        av.BorderColor3 = Color3.fromRGB(0, 0, 0)
        av.BorderSizePixel = 0
        av.Position = UDim2.new(0, 5, 0.5, 0)
        av.Size = UDim2.new(1, -5, 0, 17)
        av.ZIndex = 154
        av.ClearTextOnFocus = false
        av.Font = Enum.Font.GothamMedium
        av.PlaceholderText = "Config Name ..."
        av.Text = ""
        av.TextColor3 = Color3.fromRGB(255, 255, 255)
        av.TextSize = 11
        av.TextTransparency = 0.35
        av.TextXAlignment = Enum.TextXAlignment.Left
        aw.Name = b.RandomString()
        aw.Parent = aq
        aw.BackgroundColor3 = Color3.fromRGB(39, 40, 49)
        aw.BackgroundTransparency = 1
        aw.BorderColor3 = Color3.fromRGB(0, 0, 0)
        aw.BorderSizePixel = 0
        aw.ClipsDescendants = true
        aw.Size = UDim2.new(0, 20, 0, 18)
        aw.ZIndex = 153
        ax.Name = b.RandomString()
        ax.Parent = aw
        ax.AnchorPoint = Vector2.new(0.5, 0.5)
        ax.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ax.BackgroundTransparency = 1
        ax.BorderColor3 = Color3.fromRGB(0, 0, 0)
        ax.BorderSizePixel = 0
        ax.Position = UDim2.new(0.5, 0, 0.5, 0)
        ax.Size = UDim2.new(1, 0, 1, 0)
        ax.ZIndex = 153
        ax.FontFace = b.BuiltInBold
        ax.Text = "plus-large"
        ax.TextColor3 = Color3.fromRGB(223, 223, 223)
        ax.TextSize = 16
        ax.TextTransparency = 0.35
        ax.TextWrapped = true
        ay.CornerRadius = UDim.new(0, 4)
        ay.Parent = aw
        az.CornerRadius = UDim.new(0, 10)
        az.Parent = an
        local aB = Instance.new("TextButton")
        local aC = Instance.new("UICorner")
        aB.Name = b.RandomString()
        aB.Parent = V
        aB.AnchorPoint = Vector2.new(0, 0.5)
        aB.BackgroundColor3 = Color3.fromRGB(20, 22, 27)
        aB.BackgroundTransparency = 1
        aB.BorderColor3 = Color3.fromRGB(0, 0, 0)
        aB.BorderSizePixel = 0
        aB.Position = UDim2.new(0, 31, 0.5, 0)
        aB.Size = UDim2.new(1, -31, 1, 0)
        aB.ZIndex = 10
        aB.Font = Enum.Font.SourceSans
        aB.Text = ""
        aB.TextColor3 = Color3.fromRGB(0, 0, 0)
        aB.TextSize = 14
        aC.CornerRadius = UDim.new(0, 4)
        aC.Parent = aB
        ai.SetRender(false)
        ah:Connect(ai.SetRender)
        ai.UnsafeThread = nil
        ai.SelectedConfig = "Default"
        local aD = LPH_NO_VIRTUALIZE(function()
            local aD = f:GetTextSize(_.Text, _.TextSize, _.Font, Vector2.new(math.huge, math.huge))
            b.PlayAnimate(V, q, {
                Size = UDim2.fromOffset(aD.X + 75, 30)
            })
        end)
        aD()
        ai.GetData = function(aE)
            local aF = {}
            for aG, aH in next, b.Flags do
                if aH and aH.GetValue then
                    local aI = aH:GetValue()
                    if typeof(aI) == "Color3" then
                        table.insert(aF, {
                            Idx = aG,
                            Value = aI:ToHex()
                        })
                    else
                        table.insert(aF, {
                            Idx = aG,
                            Value = aI
                        })
                    end
                end
            end
            return b.Base64Encode(s.new(i:JSONEncode(aF)))
        end
        ai.LoadData = function(aE, aF)
            local aG = i:JSONDecode(s.reverse(b.Base64Decode(aF)))
            for aH, aI in next, aG do
                if aI.Idx then
                    if b.Flags[aI.Idx] then
                        task.spawn(function()
                            b.Flags[aI.Idx]:SetValue(aI.Value)
                        end)
                    end
                end
            end
        end
        ai.RefreshConfig = function(aE)
            if not isfolder(w.ConfigFolder) then
                makefolder(w.ConfigFolder)
            end
            for aF, aG in next, aj:GetChildren() do
                if aG:GetAttribute("ConfigItem") then
                    aG:Destroy()
                end
            end
            for aF, aG in next, ai.Signals do
                aG:Disconnect()
            end
            table.clear(ai.Signals)
            local aF = {}
            for aG, aH in next, listfiles(w.ConfigFolder) do
                local aI = string.sub(aH, #w.ConfigFolder + 2)
                table.insert(aF, aI)
            end
            for aG, aH in next, aF do
                local aI = Instance.new("Frame")
                local aJ = Instance.new("Frame")
                local aK = Instance.new("UIListLayout")
                local aL = Instance.new("Frame")
                local aM = Instance.new("TextLabel")
                local aN = Instance.new("UICorner")
                local aO = Instance.new("Frame")
                local aP = Instance.new("TextLabel")
                local aQ = Instance.new("UICorner")
                local aR = Instance.new("UICorner")
                local aS = Instance.new("TextLabel")
                local aT = Instance.new("UIStroke")
                aI.Name = b.RandomString()
                aI.Parent = aj
                aI.BackgroundColor3 = Color3.fromRGB(21, 20, 27)
                aI.BorderColor3 = Color3.fromRGB(0, 0, 0)
                aI.BorderSizePixel = 0
                aI.Size = UDim2.new(1, -10, 0, 30)
                aI.ZIndex = 153
                aI:SetAttribute("ConfigItem", true)
                aJ.Name = b.RandomString()
                aJ.Parent = aI
                aJ.AnchorPoint = Vector2.new(1, 0)
                aJ.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                aJ.BackgroundTransparency = 1
                aJ.BorderColor3 = Color3.fromRGB(0, 0, 0)
                aJ.BorderSizePixel = 0
                aJ.Position = UDim2.new(1, -11, 0, 2)
                aJ.Size = UDim2.new(1, -20, 0, 25)
                aJ.ZIndex = 153
                aK.Parent = aJ
                aK.FillDirection = Enum.FillDirection.Horizontal
                aK.HorizontalAlignment = Enum.HorizontalAlignment.Right
                aK.SortOrder = Enum.SortOrder.LayoutOrder
                aK.VerticalAlignment = Enum.VerticalAlignment.Center
                aK.Padding = UDim.new(0, 5)
                aL.Name = b.RandomString()
                aL.Parent = aJ
                aL.BackgroundColor3 = Color3.fromRGB(39, 40, 49)
                aL.BackgroundTransparency = 1
                aL.BorderColor3 = Color3.fromRGB(0, 0, 0)
                aL.BorderSizePixel = 0
                aL.ClipsDescendants = true
                aL.Size = UDim2.new(0, 20, 0, 18)
                aL.ZIndex = 153
                aM.Name = b.RandomString()
                aM.Parent = aL
                aM.AnchorPoint = Vector2.new(0.5, 0.5)
                aM.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                aM.BackgroundTransparency = 1
                aM.BorderColor3 = Color3.fromRGB(0, 0, 0)
                aM.BorderSizePixel = 0
                aM.Position = UDim2.new(0.5, 0, 0.5, 0)
                aM.Size = UDim2.new(1, 0, 1, 0)
                aM.ZIndex = 153
                aM.FontFace = b.BuiltInBold
                aM.Text = "trash-can"
                aM.TextColor3 = Color3.fromRGB(223, 223, 223)
                aM.TextSize = 16
                aM.TextTransparency = 0.4
                aM.TextWrapped = true
                aN.CornerRadius = UDim.new(0, 4)
                aN.Parent = aL
                aO.Name = b.RandomString()
                aO.Parent = aJ
                aO.BackgroundColor3 = Color3.fromRGB(39, 40, 49)
                aO.BackgroundTransparency = 1
                aO.BorderColor3 = Color3.fromRGB(0, 0, 0)
                aO.BorderSizePixel = 0
                aO.ClipsDescendants = true
                aO.Size = UDim2.new(0, 20, 0, 18)
                aO.ZIndex = 153
                aP.Name = b.RandomString()
                aP.Parent = aO
                aP.AnchorPoint = Vector2.new(0.5, 0.5)
                aP.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                aP.BackgroundTransparency = 1
                aP.BorderColor3 = Color3.fromRGB(0, 0, 0)
                aP.BorderSizePixel = 0
                aP.Position = UDim2.new(0.5, 0, 0.5, 0)
                aP.Size = UDim2.new(1, 0, 1, 0)
                aP.ZIndex = 153
                aP.FontFace = b.BuiltInBold
                aP.Text = "arrow-right-from-portrait-rectangle"
                aP.TextColor3 = Color3.fromRGB(223, 223, 223)
                aP.TextSize = 16
                aP.TextTransparency = 0.4
                aP.TextWrapped = true
                aQ.CornerRadius = UDim.new(0, 4)
                aQ.Parent = aO
                aR.CornerRadius = UDim.new(0, 5)
                aR.Parent = aI
                aS.Name = b.RandomString()
                aS.Parent = aI
                aS.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                aS.BackgroundTransparency = 1
                aS.BorderColor3 = Color3.fromRGB(0, 0, 0)
                aS.BorderSizePixel = 0
                aS.Position = UDim2.new(0, 11, 0, 7)
                aS.Size = UDim2.new(0, 1, 0, 15)
                aS.ZIndex = 153
                aS.Font = Enum.Font.GothamMedium
                aS.Text = aH
                aS.TextColor3 = Color3.fromRGB(255, 255, 255)
                aS.TextSize = 13
                aS.TextTransparency = 0.2
                aS.TextXAlignment = Enum.TextXAlignment.Left
                aT.Transparency = 0.5
                aT.Color = Color3.fromRGB(45, 48, 58)
                aT.Parent = aI
                local aU = LPH_NO_VIRTUALIZE(function(aU)
                    if aU then
                        b.PlayAnimate(aI, q, {
                            BackgroundTransparency = 0
                        })
                        b.PlayAnimate(aM, q, {
                            TextTransparency = 0.4
                        })
                        b.PlayAnimate(aP, q, {
                            TextTransparency = 0.4
                        })
                        b.PlayAnimate(aS, q, {
                            TextTransparency = 0.2
                        })
                        b.PlayAnimate(aT, q, {
                            Transparency = 0.5
                        })
                    else
                        b.PlayAnimate(aI, q, {
                            BackgroundTransparency = 1
                        })
                        b.PlayAnimate(aM, q, {
                            TextTransparency = 1
                        })
                        b.PlayAnimate(aP, q, {
                            TextTransparency = 1
                        })
                        b.PlayAnimate(aS, q, {
                            TextTransparency = 1
                        })
                        b.PlayAnimate(aT, q, {
                            Transparency = 1
                        })
                    end
                end)
                aU(ah:GetValue())
                table.insert(ai.Signals, ah:Connect(aU))
                table.insert(ai.Signals, aI.MouseEnter:Connect(LPH_NO_VIRTUALIZE(function()
                    b.PlayAnimate(aT, q, {
                        Transparency = 0.25
                    })
                end)))
                table.insert(ai.Signals, aI.MouseLeave:Connect(LPH_NO_VIRTUALIZE(function()
                    b.PlayAnimate(aT, q, {
                        Transparency = 0.5
                    })
                end)))
                local aV, aW = b:CreateInput(aL, function()
                    delfile(w.ConfigFolder .. "/" .. aH)
                    aD()
                    ai:RefreshConfig()
                    x.new("trash-can", "Deleted " .. tostring(aH), 3.5)
                end)
                local aX, aY = b:CreateInput(aO, function()
                    local aX = w.ConfigFolder .. "/" .. aH
                    if isfile(aX) then
                        local aY = readfile(aX)
                        ai:LoadData(aY)
                        ai.SelectedConfig = aH
                        _.Text = aH
                        aD()
                        ai:RefreshConfig()
                        x.new("folder", "Loaded " .. tostring(aH), 3.5)
                    end
                end)
                table.insert(ai.Signals, aW)
                table.insert(ai.Signals, aY)
                table.insert(ai.Signals, aV.MouseEnter:Connect(LPH_NO_VIRTUALIZE(function()
                    b.PlayAnimate(aM, q, {
                        TextTransparency = 0.2,
                        TextColor3 = Color3.fromRGB(223, 125, 125)
                    })
                end)))
                table.insert(ai.Signals, aV.MouseLeave:Connect(LPH_NO_VIRTUALIZE(function()
                    b.PlayAnimate(aM, q, {
                        TextTransparency = 0.4,
                        TextColor3 = Color3.fromRGB(223, 223, 223)
                    })
                end)))
                table.insert(ai.Signals, aO.MouseEnter:Connect(LPH_NO_VIRTUALIZE(function()
                    b.PlayAnimate(aP, q, {
                        TextTransparency = 0.2,
                        TextColor3 = b.AccentColor
                    })
                end)))
                table.insert(ai.Signals, aO.MouseLeave:Connect(LPH_NO_VIRTUALIZE(function()
                    b.PlayAnimate(aP, q, {
                        TextTransparency = 0.4,
                        TextColor3 = Color3.fromRGB(223, 223, 223)
                    })
                end)))
            end
            table.clear(aF)
        end
        local aE = b:CreateInput(Y, function()
            local aE = w.ConfigFolder .. "/" .. (ai.SelectedConfig or "Default")
            if isfile(aE) then
                writefile(w.ConfigFolder .. "/" .. (ai.SelectedConfig or "Default"), ai:GetData())
                x.new("folder", "Saved " .. tostring(ai.SelectedConfig), 3.5)
            end
        end)
        b:AddSignal(aE.MouseEnter:Connect(LPH_NO_VIRTUALIZE(function()
            b.PlayAnimate(Y, q, {
                TextTransparency = 0.1
            })
        end)))
        b:AddSignal(aE.MouseLeave:Connect(LPH_NO_VIRTUALIZE(function()
            b.PlayAnimate(Y, q, {
                TextTransparency = 0.25
            })
        end)))
        local aF = b:CreateInput(aw, function()
            local aF = av.Text
            if aF and aF:byte() and not aF:find("/", 1, true) and not aF:find("\\", 1, true) then
                aF = string.sub(aF, 1, 24)
                writefile(w.ConfigFolder .. "/" .. aF, ai:GetData())
                ai.SelectedConfig = aF
                _.Text = aF
                x.new("folder", "Created " .. tostring(aF), 3.5)
                av.Text = ""
                aD()
                ai:RefreshConfig()
            end
        end)
        b:AddSignal(aF.MouseEnter:Connect(function()
            b.PlayAnimate(ax, q, {
                TextTransparency = 0.1
            })
        end))
        b:AddSignal(aF.MouseLeave:Connect(function()
            b.PlayAnimate(ax, q, {
                TextTransparency = 0.35
            })
        end))
        ai:RefreshConfig()
        aB.MouseButton1Click:Connect(LPH_NO_VIRTUALIZE(function()
            if ai.UnsafeThread then
                ai.UnsafeThread:Disconnect()
                ai.UnsafeThread = nil
            end
            ah:SetValue(true)
            ai.UnsafeThread = e.InputBegan:Connect(function(aG)
                if aG.UserInputType == Enum.UserInputType.MouseButton1 or aG.UserInputType == Enum.UserInputType.Touch then
                    if not b:IsMouseOverFrame(aj) then
                        if ai.UnsafeThread then
                            ai.UnsafeThread:Disconnect()
                            ai.UnsafeThread = nil
                        end
                        ah:SetValue(false)
                    end
                end
            end)
        end))
        return ai
    end
    w:_InitConfig()
    local ag = b:CreateOptionWindow(J, J.ZIndex + 13)
    local ah
    b:CreateInput(J, LPH_NO_VIRTUALIZE(function()
        if ah then
            ah:Disconnect()
            ah = nil
        end
        ag.Signal:SetValue(true)
        ah = e.InputBegan:Connect(function(ai)
            if ai.UserInputType == Enum.UserInputType.MouseButton1 or ai.UserInputType == Enum.UserInputType.Touch then
                if not b:IsMouseOverFrame(ag.Root) and not b:IsMouseOverFrame(J) and not b.IsMosueOverOtherFrame then
                    if ah then
                        ah:Disconnect()
                        ah = nil
                    end
                    ag.Signal:SetValue(false)
                end
            end
        end)
    end))
    w.UserSettings = ag
    w.SetAccount = function(ai, aj)
        aj = b:ProcessParams(aj, {
            Profile = b.UserProfile,
            Username = j.DisplayName,
            Expires = "Never"
        })
        M.Text = aj.Username
        K.Image = aj.Profile
        N.Text = aj.Expires
        w.Username = aj.Username or w.Username
        w.Profile = aj.Profile or w.Profile
        w.Expires = aj.Expires or w.Expires
        if w.UserSettings.UserFrame then
            w.UserSettings.UserFrame:SetUsername(w.Username)
            w.UserSettings.UserFrame:SetProfile(w.Profile)
            w.UserSettings.UserFrame:SetExpires(w.Expires)
        else
            w.UserSettings.UserFrame = ag:AddUserFrame(w.Username, w.Profile, w.Expires)
        end
    end
    w.SetSize = function(ai, aj)
        w.Size = aj
        if w.Signal:GetValue() then
            b.PlayAnimate(y, r, {
                Size = w.Size
            })
        end
    end
    w:SetAccount()
    b:AddSignal(e.InputBegan:Connect(LPH_NO_VIRTUALIZE(function(ai, aj)
        if ai.KeyCode == w.Keybind or ai.KeyCode.Name == w.Keybind then
            if not aj then
                w:ToggleInterface()
            end
        end
    end)))
    w.ToggleInterface = function(ai)
        w.Signal:SetValue(not w.Signal:GetValue())
        if w.__3DRender then
            w.Load3DBlock()
        end
    end
    w.Watermark = function(ai)
        if b.__WatermarkCache then
            return b.__WatermarkCache
        end
        local aj = {}
        local al = Instance.new("Frame")
        local am = Instance.new("UICorner")
        local an = Instance.new("UIListLayout")
        local ao = b:CreateShadow(al)
        al.Name = b.RandomString()
        al.Parent = b.ScreenGui
        al.AnchorPoint = Vector2.new(1, 0)
        al.BackgroundColor3 = Color3.fromRGB(8, 8, 13)
        al.BackgroundTransparency = 0.2
        al.BorderColor3 = Color3.fromRGB(0, 0, 0)
        al.BorderSizePixel = 0
        al.ClipsDescendants = true
        al.Position = UDim2.new(1, -10, 0, 10)
        al.Size = UDim2.new(0, 120, 0, 30)
        al.ZIndex = 16
        am.CornerRadius = UDim.new(0, 25)
        am.Parent = al
        an.Parent = al
        an.FillDirection = Enum.FillDirection.Horizontal
        an.SortOrder = Enum.SortOrder.LayoutOrder
        an.HorizontalAlignment = Enum.HorizontalAlignment.Right
        local ap = Instance.new("Frame")
        ap.Size = UDim2.fromOffset(15, 0)
        ap.BackgroundTransparency = 1
        ap.Parent = al
        ap.LayoutOrder = 5
        al:GetPropertyChangedSignal("BackgroundTransparency"):Connect(LPH_NO_VIRTUALIZE(function()
            if al.BackgroundTransparency > 0.9 then
                al.Visible = false
                al.Parent = nil
            else
                al.Parent = b.ScreenGui
                al.Visible = true
            end
        end))
        an:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(LPH_NO_VIRTUALIZE(function()
            b.PlayAnimate(al, q, {
                Size = UDim2.new(0, an.AbsoluteContentSize.X + 5, 0, 30)
            })
        end))
        b.__WatermarkCache = aj
        ao:Render(true)
        aj.Renders = {}
        aj.Status = true
        aj.SetRender = function(aq, ar)
            aj.Status = ar
            if ar then
                b.PlayAnimate(al, q, {
                    BackgroundTransparency = 0.2
                })
                ao:Render(true)
                for as, at in next, aj.Renders do
                    pcall(at, true)
                end
            else
                b.PlayAnimate(al, q, {
                    BackgroundTransparency = 1
                })
                ao:Render(false)
                for as, at in next, aj.Renders do
                    pcall(at, false)
                end
            end
        end
        aj.AddBlock = function(aq, ar, as)
            local at = {}
            local au = Instance.new("Frame")
            local av = Instance.new("TextLabel")
            local aw = Instance.new("TextLabel")
            au.Parent = al
            au.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            au.BackgroundTransparency = 1
            au.BorderColor3 = Color3.fromRGB(0, 0, 0)
            au.BorderSizePixel = 0
            au.Size = UDim2.new(0, 50, 0, 30)
            av.Name = b.RandomString()
            av.Parent = au
            av.AnchorPoint = Vector2.new(0, 0.5)
            av.BackgroundColor3 = Color3.fromRGB(186, 186, 186)
            av.BackgroundTransparency = 1
            av.BorderColor3 = Color3.fromRGB(0, 0, 0)
            av.BorderSizePixel = 0
            av.Position = UDim2.new(0, 35, 0.5, 0)
            av.Size = UDim2.new(0, 1, 0, 25)
            av.ZIndex = 17
            av.Font = Enum.Font.GothamBold
            av.Text = as
            av.TextColor3 = Color3.fromRGB(186, 186, 186)
            av.TextSize = 15
            av.TextTransparency = 0.2
            av.TextXAlignment = Enum.TextXAlignment.Left
            aw.Name = b.RandomString()
            aw.Parent = au
            aw.AnchorPoint = Vector2.new(0, 0.5)
            aw.BackgroundColor3 = Color3.fromRGB(186, 186, 186)
            aw.BackgroundTransparency = 1
            aw.BorderColor3 = Color3.fromRGB(0, 0, 0)
            aw.BorderSizePixel = 0
            aw.Position = UDim2.new(0, 10, 0.5, 0)
            aw.Size = UDim2.new(0, 20, 0, 20)
            aw.ZIndex = 17
            aw.FontFace = b.BuiltInBold
            aw.Text = ar
            aw.TextColor3 = b.AccentColor
            aw.TextSize = 18
            aw.TextTransparency = 0.25
            aw.TextWrapped = true
            at.Update = LPH_NO_VIRTUALIZE(function(ax)
                local ay = f:GetTextSize(av.Text, av.TextSize, av.Font, Vector2.new(math.huge, math.huge))
                if at.Visible then
                    b.PlayAnimate(au, r, {
                        Size = UDim2.new(0, ay.X + 35, 0, 30)
                    })
                else
                    b.PlayAnimate(au, r, {
                        Size = UDim2.new(0, 0, 0, 30)
                    })
                end
            end)
            at.Visible = true
            at.Update()
            at.SetVisible = function(ax, ay)
                at.Visible = ay
                if aj.Status then
                    at.SetRender(ay)
                end
                at.Update()
            end
            at.SetRender = LPH_NO_VIRTUALIZE(function(ax)
                if ax and at.Visible then
                    b.PlayAnimate(av, q, {
                        TextTransparency = 0.2
                    })
                    b.PlayAnimate(aw, q, {
                        TextTransparency = 0.25
                    })
                else
                    b.PlayAnimate(av, q, {
                        TextTransparency = 1
                    })
                    b.PlayAnimate(aw, q, {
                        TextTransparency = 1
                    })
                end
            end)
            table.insert(aj.Renders, at.SetRender)
            at.SetText = function(ax, ay)
                av.Text = ay
                at.Update()
            end
            at.Input = function(ax, ay)
                local az, aA = b:CreateInput(au, ay)
                return aA
            end
            return at
        end
        return aj
    end
    w:SetRender(false)
    return w
end
b.CreateNotification = function(aa)
    if b.__Notification_Cache then
        return b.__Notification_Cache
    end
    local ab = {}
    local ac = Instance.new("Frame")
    local ad = Instance.new("UIListLayout")
    ac.Name = b.RandomString()
    ac.Parent = b.ScreenGui
    ac.AnchorPoint = Vector2.new(1, 0)
    ac.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ac.BackgroundTransparency = 1
    ac.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ac.BorderSizePixel = 0
    ac.Position = UDim2.new(1, -25, 0, 25)
    ac.Size = UDim2.new(0, 25, 0, 25)
    ad.Parent = ac
    ad.HorizontalAlignment = Enum.HorizontalAlignment.Right
    ad.SortOrder = Enum.SortOrder.LayoutOrder
    ad.Padding = UDim.new(0, 0)
    b.__Notification_Cache = ab
    ab.new = function(ae)
        ae = b:ProcessParams(ae, {
            Title = "Notification",
            Content = "Hello World!",
            Logo = b.GlobalLogo or "rbxasset://textures/ui/VerifiedBadgeNameIcon.png",
            Duration = 5
        })
        if b.__WatermarkCache then
            b.PlayAnimate(ac, q, {
                Position = UDim2.new(1, -25, 0, 55)
            })
        end
        local af = Instance.new("Frame")
        local ag = Instance.new("Frame")
        local ah = Instance.new("UICorner")
        local ai = Instance.new("UIStroke")
        local aj = Instance.new("ImageLabel")
        local al = Instance.new("UICorner")
        local am = Instance.new("TextLabel")
        local an = Instance.new("TextLabel")
        local ao = b:CreateShadow(ag, true)
        af.Name = b.RandomString()
        af.Parent = ac
        af.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        af.BackgroundTransparency = 1
        af.BorderColor3 = Color3.fromRGB(0, 0, 0)
        af.BorderSizePixel = 0
        af.Size = UDim2.new(0, 0, 0, 100)
        ag.Name = b.RandomString()
        ag.Parent = af
        ag.AnchorPoint = Vector2.new(1, 0)
        ag.BackgroundColor3 = Color3.fromRGB(20, 22, 27)
        ag.BackgroundTransparency = 0.075
        ag.BorderColor3 = Color3.fromRGB(0, 0, 0)
        ag.BorderSizePixel = 0
        ag.ClipsDescendants = true
        ag.Position = UDim2.new(0, 750, 0, 0)
        ag.Size = UDim2.new(0, 220, 0, 55)
        ag.ZIndex = 130
        ah.CornerRadius = UDim.new(0, 10)
        ah.Parent = ag
        ai.Transparency = 0.65
        ai.Color = Color3.fromRGB(45, 48, 58)
        ai.Parent = ag
        aj.Name = b.RandomString()
        aj.Parent = ag
        aj.AnchorPoint = Vector2.new(0, 0.5)
        aj.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        aj.BackgroundTransparency = 1
        aj.BorderColor3 = Color3.fromRGB(0, 0, 0)
        aj.BorderSizePixel = 0
        aj.Position = UDim2.new(0, 10, 0.5, 0)
        aj.Size = UDim2.new(0, 35, 0, 35)
        aj.ZIndex = 131
        aj.Image = ae.Logo
        aj.ImageColor3 = b.IconColor
        al.CornerRadius = UDim.new(0, 7)
        al.Parent = aj
        am.Name = b.RandomString()
        am.Parent = ag
        am.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        am.BackgroundTransparency = 1
        am.BorderColor3 = Color3.fromRGB(0, 0, 0)
        am.BorderSizePixel = 0
        am.Position = UDim2.new(0, 50, 0, 7)
        am.Size = UDim2.new(0, 200, 0, 20)
        am.ZIndex = 132
        am.Font = Enum.Font.GothamBold
        am.Text = ae.Title
        am.TextColor3 = Color3.fromRGB(255, 255, 255)
        am.TextSize = 17
        am.TextXAlignment = Enum.TextXAlignment.Left
        an.Name = b.RandomString()
        an.Parent = ag
        an.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        an.BackgroundTransparency = 1
        an.BorderColor3 = Color3.fromRGB(0, 0, 0)
        an.BorderSizePixel = 0
        an.Position = UDim2.new(0, 50, 0, 28)
        an.Size = UDim2.new(0, 200, 0, 15)
        an.ZIndex = 132
        an.Font = Enum.Font.GothamBold
        an.Text = ae.Content
        an.TextColor3 = Color3.fromRGB(255, 255, 255)
        an.TextSize = 12
        an.TextTransparency = 0.65
        an.TextXAlignment = Enum.TextXAlignment.Left
        local ap = f:GetTextSize(am.Text, am.TextSize, am.Font, Vector2.new(math.huge, math.huge))
        local aq = f:GetTextSize(an.Text, an.TextSize, an.Font, Vector2.new(math.huge, math.huge))
        local ar = math.max(ap.X, aq.X)
        ag.Size = UDim2.new(0, ar + 65, 0, 55)
        ao:Render(true)
        b.PlayAnimate(ag, r, {
            Position = UDim2.new(1, 0, 0, 0)
        })
        af.Size = UDim2.new(0, 0, 0, 65)
        task.delay(ae.Duration or 5, LPH_NO_VIRTUALIZE(function()
            if b.__WatermarkCache then
                b.PlayAnimate(ac, q, {
                    Position = UDim2.new(1, -25, 0, 55)
                })
            end
            ao:Render(false)
            b.PlayAnimate(ag, q, {
                BackgroundTransparency = 1
            })
            b.PlayAnimate(ai, q, {
                Transparency = 1
            })
            b.PlayAnimate(aj, q, {
                ImageTransparency = 1
            })
            b.PlayAnimate(am, q, {
                TextTransparency = 1
            })
            b.PlayAnimate(an, q, {
                TextTransparency = 1
            })
            task.wait(0.125)
            b.PlayAnimate(af, q, {
                Size = UDim2.new(0, 0, 0, 0)
            })
            task.wait(0.125)
            af:Destroy()
        end))
    end
    return ab
end
b.CreateLogger = function(aa)
    if b.__LogSystem then
        return b.__LogSystem
    end
    local ab = {}
    local ac = Instance.new("Frame")
    local ad = Instance.new("UIListLayout")
    ac.Name = b.RandomString()
    ac.Parent = b.ScreenGui
    ac.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ac.BackgroundTransparency = 1
    ac.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ac.BorderSizePixel = 0
    ac.Position = UDim2.new(0, 25, 0, 5 + math.abs(b.ScreenGui.AbsolutePosition.Y))
    ac.Size = UDim2.new(0, 25, 0, 25)
    ad.Parent = ac
    ad.SortOrder = Enum.SortOrder.LayoutOrder
    ad.Padding = UDim.new(0, 12)
    b.__LogSystem = ab
    ab.new = function(ae, af, ag)
        ag = ag or 3
        af = af or "Log"
        ae = ae or "crosshairs"
        local ah = Instance.new("Frame")
        local ai = Instance.new("UICorner")
        local aj = Instance.new("UIStroke")
        local al = Instance.new("TextLabel")
        local am = Instance.new("Frame")
        local an = Instance.new("UICorner")
        local ao = Instance.new("TextLabel")
        local ap = b:CreateShadow(ah, true)
        ah.Name = b.RandomString()
        ah.Parent = ac
        ah.AnchorPoint = Vector2.new(0.5, 0)
        ah.BackgroundColor3 = Color3.fromRGB(20, 22, 27)
        ah.BackgroundTransparency = 1
        ah.BorderColor3 = Color3.fromRGB(0, 0, 0)
        ah.BorderSizePixel = 0
        ah.ClipsDescendants = true
        ah.Position = UDim2.new(0, 0, 0, 0)
        ah.Size = UDim2.new(0, 0, 0, 20)
        ah.ZIndex = 130
        ai.CornerRadius = UDim.new(0, 4)
        ai.Parent = ah
        aj.Transparency = 1
        aj.Color = Color3.fromRGB(45, 48, 58)
        aj.Parent = ah
        al.Name = b.RandomString()
        al.Parent = ah
        al.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        al.BackgroundTransparency = 1
        al.BorderColor3 = Color3.fromRGB(0, 0, 0)
        al.BorderSizePixel = 0
        al.Position = UDim2.new(0, 25, 0, 2)
        al.Size = UDim2.new(0, 200, 0, 15)
        al.ZIndex = 132
        al.Font = Enum.Font.GothamBold
        al.Text = af
        al.TextColor3 = Color3.fromRGB(255, 255, 255)
        al.TextSize = 12
        al.TextTransparency = 1
        al.TextXAlignment = Enum.TextXAlignment.Left
        am.Name = b.RandomString()
        am.Parent = ah
        am.AnchorPoint = Vector2.new(0, 0.5)
        am.BackgroundColor3 = b.AccentColor
        am.BorderColor3 = Color3.fromRGB(0, 0, 0)
        am.BackgroundTransparency = 1
        am.BorderSizePixel = 0
        am.Position = UDim2.new(0, -2, 0.5, 0)
        am.Size = UDim2.new(0, 5, 1, 0)
        am.ZIndex = 131
        an.CornerRadius = UDim.new(0, 4)
        an.Parent = am
        ao.Name = b.RandomString()
        ao.Parent = ah
        ao.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ao.BackgroundTransparency = 1
        ao.BorderColor3 = Color3.fromRGB(0, 0, 0)
        ao.BorderSizePixel = 0
        ao.Position = UDim2.new(0, 7, 0, 3)
        ao.Size = UDim2.new(0, 15, 0, 15)
        ao.ZIndex = 133
        ao.FontFace = b.BuiltInBold
        ao.Text = ae
        ao.TextColor3 = Color3.fromRGB(223, 223, 223)
        ao.TextSize = 13
        ao.TextTransparency = 1
        ao.TextWrapped = true
        local aq = f:GetTextSize(al.Text, al.TextSize, al.Font, Vector2.new(math.huge, math.huge))
        b.PlayAnimate(ah, q, {
            Size = UDim2.new(0, aq.X + 35, 0, 20),
            BackgroundTransparency = 0.075
        })
        task.delay(0.15, LPH_NO_VIRTUALIZE(function()
            ap:Render(true)
            b.PlayAnimate(aj, q, {
                Transparency = 0.65
            })
            b.PlayAnimate(al, q, {
                TextTransparency = 0.25
            })
            b.PlayAnimate(am, q, {
                BackgroundTransparency = 0
            })
            b.PlayAnimate(ao, q, {
                TextTransparency = 0.25
            })
            task.wait(ag + 0.1)
            ap:Render(false)
            b.PlayAnimate(ah, q, {
                BackgroundTransparency = 1
            })
            b.PlayAnimate(aj, q, {
                Transparency = 1
            })
            b.PlayAnimate(al, q, {
                TextTransparency = 1
            })
            b.PlayAnimate(am, q, {
                BackgroundTransparency = 1
            })
            b.PlayAnimate(ao, q, {
                TextTransparency = 1
            })
            task.wait(0.25)
            ah:Destroy()
        end))
    end
    return ab
end
b.CreateIndicator = function(aa)
    local ab = Instance.new("Frame")
    local ac = Instance.new("UIListLayout")
    ab.Name = b.RandomString()
    ab.Parent = b.ScreenGui
    ab.AnchorPoint = Vector2.new(0, 0.5)
    ab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ab.BackgroundTransparency = 1
    ab.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ab.BorderSizePixel = 0
    ab.Position = UDim2.new(0, 15, 0.5, 0)
    ab.Size = UDim2.new(0, 100, 0, 100)
    ab.ZIndex = 15
    ac.Parent = ab
    ac.SortOrder = Enum.SortOrder.LayoutOrder
    ac.Padding = UDim.new(0, 10)
    local ad = {}
    ad.Color = {
        Red = Color3.fromRGB(255, 102, 105),
        Green = Color3.fromRGB(135, 255, 143),
        White = Color3.fromRGB(186, 186, 186)
    }
    ad.Root = ab
    ad.new = function(ae)
        ae = b:ProcessParams(ae, {
            Name = "Indicator",
            Icon = "crosshairs",
            Color = "Red"
        })
        local af = {
            CurrentColor = ae.Color,
            Visible = false
        }
        local ag = Instance.new("Frame")
        local ah = Instance.new("UICorner")
        local ai = Instance.new("Frame")
        local aj = Instance.new("UICorner")
        local al = Instance.new("UIGradient")
        local am = Instance.new("TextLabel")
        local an = Instance.new("TextLabel")
        local ao = b:CreateShadow(ag)
        ag.Name = b.RandomString()
        ag.BackgroundColor3 = Color3.fromRGB(8, 8, 13)
        ag.BackgroundTransparency = 1
        ag.BorderColor3 = Color3.fromRGB(0, 0, 0)
        ag.BorderSizePixel = 0
        ag.ClipsDescendants = true
        ag.Size = UDim2.new(0, 85, 0, 40)
        ag.ZIndex = 16
        ag.Visible = false
        ag:GetPropertyChangedSignal("BackgroundTransparency"):Connect(LPH_NO_VIRTUALIZE(function()
            if ag.BackgroundTransparency > 0.9 then
                ag.Parent = nil
                ag.Visible = false
            else
                ag.Parent = ab
                ag.Visible = true
            end
        end))
        ah.CornerRadius = UDim.new(0, 25)
        ah.Parent = ag
        ai.Name = b.RandomString()
        ai.Parent = ag
        ai.AnchorPoint = Vector2.new(0, 0.5)
        ai.BackgroundColor3 = Color3.fromRGB(186, 186, 186)
        ai.BorderColor3 = Color3.fromRGB(0, 0, 0)
        ai.BorderSizePixel = 0
        ai.Position = UDim2.new(0, 2, 0.5, 0)
        ai.BackgroundTransparency = 1
        ai.Size = UDim2.new(0, 3, 0.649999976, 0)
        ai.ZIndex = 17
        aj.CornerRadius = UDim.new(0, 25)
        aj.Parent = ai
        al.Rotation = 90
        al.Transparency = NumberSequence.new({
            NumberSequenceKeypoint.new(0, 1),
            NumberSequenceKeypoint.new(0.5, 0),
            NumberSequenceKeypoint.new(1, 1)
        })
        al.Parent = ai
        am.Name = b.RandomString()
        am.Parent = ag
        am.AnchorPoint = Vector2.new(0, 0.5)
        am.BackgroundColor3 = Color3.fromRGB(186, 186, 186)
        am.BackgroundTransparency = 1
        am.BorderColor3 = Color3.fromRGB(0, 0, 0)
        am.BorderSizePixel = 0
        am.Position = UDim2.new(0, 10, 0.5, 0)
        am.Size = UDim2.new(0, 25, 0, 25)
        am.ZIndex = 17
        am.FontFace = b.BuiltInBold
        am.Text = ae.Icon
        am.TextColor3 = Color3.fromRGB(186, 186, 186)
        am.TextSize = 21
        am.TextTransparency = 1
        am.TextWrapped = true
        an.Name = b.RandomString()
        an.Parent = ag
        an.AnchorPoint = Vector2.new(0, 0.5)
        an.BackgroundColor3 = Color3.fromRGB(186, 186, 186)
        an.BackgroundTransparency = 1
        an.BorderColor3 = Color3.fromRGB(0, 0, 0)
        an.BorderSizePixel = 0
        an.Position = UDim2.new(0, 40, 0.5, 0)
        an.Size = UDim2.new(1, -40, 0, 25)
        an.ZIndex = 17
        an.Font = Enum.Font.GothamBold
        an.Text = ae.Name
        an.TextColor3 = Color3.fromRGB(186, 186, 186)
        an.TextSize = 20
        an.TextTransparency = 1
        an.TextXAlignment = Enum.TextXAlignment.Left
        af.Update = LPH_NO_VIRTUALIZE(function()
            local ap = f:GetTextSize(an.Text, an.TextSize, an.Font, Vector2.new(math.huge, math.huge))
            b.PlayAnimate(ag, q, {
                Size = UDim2.new(0, ap.X + 60, 0, 40)
            })
        end)
        af.SetRender = LPH_NO_VIRTUALIZE(function(ap, aq)
            af.Visible = aq
            if aq then
                b.PlayAnimate(ag, q, {
                    BackgroundTransparency = 0.2
                })
                b.PlayAnimate(ai, q, {
                    BackgroundTransparency = 0,
                    BackgroundColor3 = ad.Color[af.CurrentColor]
                })
                b.PlayAnimate(am, r, {
                    TextTransparency = 0.25,
                    TextColor3 = ad.Color[af.CurrentColor]
                })
                b.PlayAnimate(an, r, {
                    TextTransparency = 0.2,
                    TextColor3 = ad.Color[af.CurrentColor]
                })
                ao:Render(true)
            else
                b.PlayAnimate(ag, q, {
                    BackgroundTransparency = 1
                })
                b.PlayAnimate(ai, q, {
                    BackgroundTransparency = 1,
                    BackgroundColor3 = ad.Color[af.CurrentColor]
                })
                b.PlayAnimate(am, r, {
                    TextTransparency = 1,
                    TextColor3 = ad.Color[af.CurrentColor]
                })
                b.PlayAnimate(an, r, {
                    TextTransparency = 1,
                    TextColor3 = ad.Color[af.CurrentColor]
                })
                ao:Render(false)
            end
            af.Update()
        end)
        af.Update()
        af:SetRender(false)
        af.SetColor = function(ap, aq)
            af.CurrentColor = aq
            if af.Visible then
                af:SetRender(true)
            end
        end
        af.SetText = function(ap, aq)
            ae.Name = aq
            an.Text = ae.Name
            af.Update()
        end
        return af
    end
    return ad
end
b.Unload = function(aa)
    if not b.UnloadEnabled then
        return
    end
    b.ScreenGui:Destroy()
    for ab, ac in next, b.GlobalSignals do
        pcall(ac.Disconnect, ac)
    end
end
return b
