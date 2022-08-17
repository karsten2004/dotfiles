-- Menu
-- Create a launcher widget and a main menu
myawesomemenu = {
   { "hotkeys", function() hotkeys_popup.show_help(nil, awful.screen.focused()) end },
   { "manual", RC.vars.terminal .. " -e man awesome" },
   { "edit config", RC.vars.editor_cmd .. " " .. awesome.conffile },
   { "restart awesome", awesome.restart },
   { "quit awesome", function() awesome.quit() end },
}
--Create a system control menu
mySystemMenu = {
   { "lock screen", function() RC.screen_lock() end },
}

mymainmenu = awful.menu({ items = { { "awesome", myawesomemenu, beautiful.awesome_icon },
                                    { "system", mySystemMenu},
                                    { "open terminal", RC.vars.terminal }
                                  }
                        })

mylauncher = awful.widget.launcher({ image = beautiful.awesome_icon,
                                     menu = mymainmenu })

-- Menubar configuration
menubar.utils.terminal = RC.vars.terminal -- Set the terminal for applications that require it
-- }}}

-- Keyboard map indicator and switcher
mykeyboardlayout = awful.widget.keyboardlayout()
