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

hyper.bindKeyWithModifiers({"cmd", "shift"}, "return", function()
  hs.execute('/usr/local/bin/yabai -m window --toggle zoom-fullscreen')
end)


hyper.bindKeyWithModifiers({"cmd", "shift"}, "space", function()
  hs.execute('/usr/local/bin/yabai -m space --rotate 90')
end)


-- Focus Windows
hyper.bindKeyWithModifiers({"alt"}, "k", function()
  hs.execute('/usr/local/bin/yabai -m window --focus north')
end)

hyper.bindKeyWithModifiers({"alt"}, "j", function()
  hs.execute('/usr/local/bin/yabai -m window --focus south')
end)

hyper.bindKeyWithModifiers({"alt"}, "l", function()
  hs.execute('/usr/local/bin/yabai -m window --focus east')
end)

hyper.bindKeyWithModifiers({"alt"}, "h", function()
  hs.execute('/usr/local/bin/yabai -m window --focus west')
end)


-- Swap Windows
hyper.bindKeyWithModifiers({"alt", "shift"}, "k", function()
  hs.execute('/usr/local/bin/yabai -m window --swap north')
end)

hyper.bindKeyWithModifiers({"alt", "shift"}, "j", function()
  hs.execute('/usr/local/bin/yabai -m window --swap south')
end)

hyper.bindKeyWithModifiers({"alt", "shift"}, "l", function()
  hs.execute('/usr/local/bin/yabai -m window --swap east')
end)

hyper.bindKeyWithModifiers({"alt", "shift"}, "h", function()
  hs.execute('/usr/local/bin/yabai -m window --swap west')
end)

-- Warp Windows
hyper.bindKeyWithModifiers({"cmd", "shift"}, "k", function()
  hs.execute('/usr/local/bin/yabai -m window --warp north')
end)

hyper.bindKeyWithModifiers({"cmd", "shift"}, "j", function()
  hs.execute('/usr/local/bin/yabai -m window --warp south')
end)

hyper.bindKeyWithModifiers({"cmd", "shift"}, "l", function()
  hs.execute('/usr/local/bin/yabai -m window --warp east')
end)

hyper.bindKeyWithModifiers({"cmd", "shift"}, "h", function()
  hs.execute('/usr/local/bin/yabai -m window --warp west')
end)



-- -- Window Placement Hotkeys
-- -- Fullscreen
-- hs.hotkey.bind({"cmd", "shift"}, "return", function()
-- 	if hs.window.focusedWindow() then
-- 		local win = hs.window.focusedWindow()
-- 		local f = win:frame()
-- 		local screen = win:screen()
-- 		local geo = screen:frame()
-- 
-- 		f.x = geo.x
-- 		f.y = geo.y 
-- 		f.w = geo.w
-- 		f.h = geo.h
-- 		win:setFrame(f)
-- 	end
-- end)
-- 
-- -- Top 1/2
-- hs.hotkey.bind({"cmd", "shift"}, "k", function()
-- 	if hs.window.focusedWindow() then
-- 		local win = hs.window.focusedWindow()
-- 		local f = win:frame()
-- 		local screen = win:screen()
-- 		local geo = screen:frame()
-- 
-- 		f.x = geo.x + 10
-- 		f.y = geo.y + 10
-- 		f.w = geo.w - 20
-- 		f.h = geo.h / 2 - 20
-- 		win:setFrame(f)
-- 	end
-- end)
-- 
-- -- Bottom 1/2
-- hs.hotkey.bind({"cmd", "shift"}, "j", function()
-- 	if hs.window.focusedWindow() then
-- 		local win = hs.window.focusedWindow()
-- 		local f = win:frame()
-- 		local screen = win:screen()
-- 		local geo = screen:frame()
-- 
-- 		f.x = geo.x + 10
-- 		f.y = geo.y + ( geo.h / 2) + 10
-- 		f.w = geo.w - 20
-- 		f.h = geo.h / 2 - 20
-- 		win:setFrame(f)
-- 	end
-- end)
-- 
-- -- Left 1/2
-- hs.hotkey.bind({"cmd", "shift"}, "h", function()
-- 	if hs.window.focusedWindow() then
-- 		local win = hs.window.focusedWindow()
-- 		local f = win:frame()
-- 		local screen = win:screen()
-- 		local geo = screen:frame()
-- 
-- 		f.x = geo.x + 10
-- 		f.y = geo.y + 10
-- 		f.w = geo.w / 2 - 20
-- 		f.h = geo.h - 20
-- 		win:setFrame(f)
-- 	end
-- end)
-- 
-- -- Right 1/2
-- hs.hotkey.bind({"cmd", "shift"}, "l", function()
-- 	if hs.window.focusedWindow() then
-- 		local win = hs.window.focusedWindow()
-- 		local f = win:frame()
-- 		local screen = win:screen()
-- 		local geo = screen:frame()
-- 
-- 		f.x = geo.x + (geo.w / 2) + 10
-- 		f.y = geo.y + 10
-- 		f.w = geo.w / 2 - 20
-- 		f.h = geo.h - 20
-- 		win:setFrame(f)
-- 	end
-- end)
-- 
-- -- Top left
-- hs.hotkey.bind({"cmd", "shift"}, "y", function()
-- 	if hs.window.focusedWindow() then
-- 		local win = hs.window.focusedWindow()
-- 		local f = win:frame()
-- 		local screen = win:screen()
-- 		local geo = screen:frame()
-- 
-- 		f.x = geo.x + 10
-- 		f.y = geo.y + 10
-- 		f.w = geo.w / 2 - 20 
-- 		f.h = geo.h / 2 - 20
-- 		win:setFrame(f)
-- 	end
-- end)
-- 
-- -- Top right
-- hs.hotkey.bind({"cmd", "shift"}, "p", function()
-- 	if hs.window.focusedWindow() then
-- 		local win = hs.window.focusedWindow()
-- 		local f = win:frame()
-- 		local screen = win:screen()
-- 		local geo = screen:frame()
-- 
-- 		f.x = geo.x + (geo.w / 2) + 10
-- 		f.y = geo.y + 10
-- 		f.w = geo.w / 2 - 20
-- 		f.h = geo.h / 2 - 20
-- 		win:setFrame(f)
-- 	end
-- end)
-- 
-- -- Bottom right
-- hs.hotkey.bind({"cmd", "shift"}, ".", function()
-- 	if hs.window.focusedWindow() then
-- 		local win = hs.window.focusedWindow()
-- 		local f = win:frame()
-- 		local screen = win:screen()
-- 		local geo = screen:frame()
-- 
-- 		f.x = geo.x + (geo.w / 2) + 10
-- 		f.y = geo.y + (geo.h / 2) + 10
-- 		f.w = geo.w / 2 - 20
-- 		f.h = geo.h / 2 - 20
-- 		win:setFrame(f)
-- 	end
-- end)
-- 
-- -- Bottom left
-- hs.hotkey.bind({"cmd", "shift"}, "b", function()
-- 	if hs.window.focusedWindow() then
-- 		local win = hs.window.focusedWindow()
-- 		local f = win:frame()
-- 		local screen = win:screen()
-- 		local geo = screen:frame()
-- 
-- 		f.x = geo.x + 10
-- 		f.y = geo.y + (geo.h / 2) + 10
-- 		f.w = geo.w / 2 - 20
-- 		f.h = geo.h / 2 - 20
-- 		win:setFrame(f)
-- 	end
-- end)
