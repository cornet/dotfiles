-- Launch new iTerm window on current desktop
-- hs.hotkey.bind({"alt", "shift"}, "return", function()
-- 	if hs.application.find("iTerm") then
-- 		hs.applescript.applescript([[
-- 		tell application "iTerm"
-- 		create window with default profile
-- 	end tell
-- 	]])
-- else
-- 	hs.application.open("iTerm")
-- end
-- end)

local hyper = require('hyper')
hyper.install('F18') 
hyper.bindKeyWithModifiers({"alt", "shift"}, 'r', hs.reload)

-- hs.hotkey.bind({"alt", "shift"}, "return", function()
-- 	hs.execute("open -na kitty")
-- end)

hyper.bindKeyWithModifiers({"alt", "shift"}, "return", function()
	hs.execute("open -na kitty")
end)

-- Disable Window Animations or it's slooww....
hs.window.animationDuration = 0

hyper.bindKeyWithModifiers({"alt", "shift"}, "f", function()
  hs.execute('/opt/homebrew/bin/yabai -m window --toggle zoom-fullscreen')
end)

hyper.bindKeyWithModifiers({"alt", "shift"}, "space", function()
  hs.execute('/opt/homebrew/bin/yabai -m window --toggle float')
end)

hyper.bindKeyWithModifiers({"alt", "shift"}, ".", function()
  hs.execute('/opt/homebrew/bin/yabai -m space --rotate 90')
end)

hyper.bindKeyWithModifiers({"alt", "shift"}, ",", function()
  hs.execute('/opt/homebrew/bin/yabai -m space --rotate 270')
end)


-- Focus Windows
hyper.bindKeyWithModifiers({"alt"}, "k", function()
  hs.execute('/opt/homebrew/bin/yabai -m window --focus north')
end)

hyper.bindKeyWithModifiers({"alt"}, "j", function()
  hs.execute('/opt/homebrew/bin/yabai -m window --focus south')
end)

hyper.bindKeyWithModifiers({"alt"}, "l", function()
  hs.execute('/opt/homebrew/bin/yabai -m window --focus east')
end)

hyper.bindKeyWithModifiers({"alt"}, "h", function()
  hs.execute('/opt/homebrew/bin/yabai -m window --focus west')
end)


-- Swap Windows
hyper.bindKeyWithModifiers({"alt", "shift"}, "k", function()
  hs.execute('/opt/homebrew/bin/yabai -m window --swap north')
end)

hyper.bindKeyWithModifiers({"alt", "shift"}, "j", function()
  hs.execute('/opt/homebrew/bin/yabai -m window --swap south')
end)

hyper.bindKeyWithModifiers({"alt", "shift"}, "l", function()
  hs.execute('/opt/homebrew/bin/yabai -m window --swap east')
end)

hyper.bindKeyWithModifiers({"alt", "shift"}, "h", function()
  hs.execute('/opt/homebrew/bin/yabai -m window --swap west')
end)

-- Warp Windows
hyper.bindKeyWithModifiers({"cmd", "shift"}, "k", function()
  hs.execute('/opt/homebrew/bin/yabai -m window --warp north')
end)

hyper.bindKeyWithModifiers({"cmd", "shift"}, "j", function()
  hs.execute('/opt/homebrew/bin/yabai -m window --warp south')
end)

hyper.bindKeyWithModifiers({"cmd", "shift"}, "l", function()
  hs.execute('/opt/homebrew/bin/yabai -m window --warp east')
end)

hyper.bindKeyWithModifiers({"cmd", "shift"}, "h", function()
  hs.execute('/usr/local/bin/yabai -m window --warp west')
end)
