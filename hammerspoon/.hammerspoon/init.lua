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

hs.hotkey.bind({"alt", "shift"}, "return", function()
	hs.execute("open -na kitty")
end)

-- Disable Window Animations or it's slooww....
hs.window.animationDuration = 0

-- Window Placement Hotkeys
-- Fullscreen
hs.hotkey.bind({"cmd", "shift"}, "return", function()
	if hs.window.focusedWindow() then
		local win = hs.window.focusedWindow()
		local f = win:frame()
		local screen = win:screen()
		local geo = screen:frame()

		f.x = geo.x
		f.y = geo.y 
		f.w = geo.w
		f.h = geo.h
		win:setFrame(f)
	end
end)

-- Top 1/2
hs.hotkey.bind({"cmd", "shift"}, "k", function()
	if hs.window.focusedWindow() then
		local win = hs.window.focusedWindow()
		local f = win:frame()
		local screen = win:screen()
		local geo = screen:frame()

		f.x = geo.x + 10
		f.y = geo.y + 10
		f.w = geo.w - 20
		f.h = geo.h / 2 - 20
		win:setFrame(f)
	end
end)

-- Bottom 1/2
hs.hotkey.bind({"cmd", "shift"}, "j", function()
	if hs.window.focusedWindow() then
		local win = hs.window.focusedWindow()
		local f = win:frame()
		local screen = win:screen()
		local geo = screen:frame()

		f.x = geo.x + 10
		f.y = geo.y + ( geo.h / 2) + 10
		f.w = geo.w - 20
		f.h = geo.h / 2 - 20
		win:setFrame(f)
	end
end)

-- Left 1/2
hs.hotkey.bind({"cmd", "shift"}, "h", function()
	if hs.window.focusedWindow() then
		local win = hs.window.focusedWindow()
		local f = win:frame()
		local screen = win:screen()
		local geo = screen:frame()

		f.x = geo.x + 10
		f.y = geo.y + 10
		f.w = geo.w / 2 - 20
		f.h = geo.h - 20
		win:setFrame(f)
	end
end)

-- Right 1/2
hs.hotkey.bind({"cmd", "shift"}, "l", function()
	if hs.window.focusedWindow() then
		local win = hs.window.focusedWindow()
		local f = win:frame()
		local screen = win:screen()
		local geo = screen:frame()

		f.x = geo.x + (geo.w / 2) + 10
		f.y = geo.y + 10
		f.w = geo.w / 2 - 20
		f.h = geo.h - 20
		win:setFrame(f)
	end
end)

-- Top left
hs.hotkey.bind({"cmd", "shift"}, "y", function()
	if hs.window.focusedWindow() then
		local win = hs.window.focusedWindow()
		local f = win:frame()
		local screen = win:screen()
		local geo = screen:frame()

		f.x = geo.x + 10
		f.y = geo.y + 10
		f.w = geo.w / 2 - 20 
		f.h = geo.h / 2 - 20
		win:setFrame(f)
	end
end)

-- Top right
hs.hotkey.bind({"cmd", "shift"}, "p", function()
	if hs.window.focusedWindow() then
		local win = hs.window.focusedWindow()
		local f = win:frame()
		local screen = win:screen()
		local geo = screen:frame()

		f.x = geo.x + (geo.w / 2) + 10
		f.y = geo.y + 10
		f.w = geo.w / 2 - 20
		f.h = geo.h / 2 - 20
		win:setFrame(f)
	end
end)

-- Bottom right
hs.hotkey.bind({"cmd", "shift"}, ".", function()
	if hs.window.focusedWindow() then
		local win = hs.window.focusedWindow()
		local f = win:frame()
		local screen = win:screen()
		local geo = screen:frame()

		f.x = geo.x + (geo.w / 2) + 10
		f.y = geo.y + (geo.h / 2) + 10
		f.w = geo.w / 2 - 20
		f.h = geo.h / 2 - 20
		win:setFrame(f)
	end
end)

-- Bottom left
hs.hotkey.bind({"cmd", "shift"}, "b", function()
	if hs.window.focusedWindow() then
		local win = hs.window.focusedWindow()
		local f = win:frame()
		local screen = win:screen()
		local geo = screen:frame()

		f.x = geo.x + 10
		f.y = geo.y + (geo.h / 2) + 10
		f.w = geo.w / 2 - 20
		f.h = geo.h / 2 - 20
		win:setFrame(f)
	end
end)
