-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

--local storyboard = require "storyboard"
--storyboard.purgeOnSceneChange = true

require("cf_game_settings")

--display.setDefault( "background", 1, 0,  )

CFGameSettings = CFGameSettings()
--
-- Override Corona's core widget libraries with the files contained in this project's subdirectory.
-- Argument "name" will be set to the name of the library being loaded by the require() function.
local function onRequireWidgetLibrary(name)
	return require("widgetLibrary." .. name)
end
package.preload.widget = onRequireWidgetLibrary
package.preload.widget_button = onRequireWidgetLibrary
package.preload.widget_momentumScrolling = onRequireWidgetLibrary
package.preload.widget_pickerWheel = onRequireWidgetLibrary
package.preload.widget_progressView = onRequireWidgetLibrary
package.preload.widget_scrollview = onRequireWidgetLibrary
package.preload.widget_searchField = onRequireWidgetLibrary
package.preload.widget_segmentedControl = onRequireWidgetLibrary
package.preload.widget_spinner = onRequireWidgetLibrary
package.preload.widget_stepper = onRequireWidgetLibrary
package.preload.widget_slider = onRequireWidgetLibrary
package.preload.widget_switch = onRequireWidgetLibrary
package.preload.widget_tabbar = onRequireWidgetLibrary
package.preload.widget_tableview = onRequireWidgetLibrary

-- For xcode console output
io.output():setvbuf( "no" )


local composer=require("composer")

--composer.gotoScene( "unitTestListing" )

display.setStatusBar( display.HiddenStatusBar )

_W = display.contentWidth; -- Get the width of the screen
_H = display.contentHeight; -- Get the height of the screen

defaultTransition="crossFade"
--[[
overrideScore=true  --set true to test gameover.lua

local showSplash = false    --set false to skip mageegames splash 

local fontFace
local backgrounImage=nil
local backgroundColor={255,255,255}

audioCanPlay=true

 -- MIKE: Should we just keep this in game.lua
 heightModeTop=35
 heightModeLow=_H-35
 lightningY=90
 infoMode=true


local splash1 = display.newImageRect( "images/MMG1.png", 580, 320 )
    splash1.anchorX=0.5
    splash1.anchorY=0.5
    splash1.x = _W/2
    splash1.y = _H/2 
    splash1:toFront()

local splash2 = display.newImageRect( "images/MMG2.png", 580, 320 )
    splash2.anchorX=0.5
    splash2.anchorY=0.5
    splash2.x = _W/2
    splash2.y = _H/2 
    splash2.alpha=0
    splash2:toFront()
--]]
local function eraseSplash()
    display.remove(splash1)
    display.remove(splash2)
 composer.gotoScene( "menu", {effect = defaultTransition} )   
end

local function fadeSplash()
    check1=transition.to(splash2, {time=1500,alpha=1})  
    timer.performWithDelay(2500,eraseSplash,1)
end

--composer.recycleOnSceneChange = true

function checkMemory(e)
  collectgarbage();
  print("Memory usage " .. collectgarbage("count"));
  print("Texture memory usage " .. system.getInfo("textureMemoryUsed")/1024/1024 .. "MB")
end

function playSound(audioObj,chn)
	local chnUsed
	if audioCanPlay then
		chnUsed = audio.play(audioObj,{channel=chn})
    end
    return chnUsed		
end

function makeTextButton(txt,x,y,opts)
	local options  = opts or {}
    
    if environment=="simulator" then
      fontFace = options.fontFace or "Helvetica"
    elseif environment=="device" then
      fontFace = options.fontFace or "federalescort3d"
    end

    local fontSize = options.fontSize or 24
    local fontColor= options.fontColor or {255,255,255}
    local param=options.param
    local tapOrTouch=options.tapOrTouch or "tap"
    local listener=options.listener
    local group=options.group
    local btn=display.newEmbossedText(txt,0,0,fontFace,fontSize)
    btn:setFillColor(fontColor[1],fontColor[2],fontColor[3])
    btn.x=x or _W/2
    btn.y=y or _H/2
    if param then
    	btn.param=param
    end
    if listener then
    	btn:addEventListener(tapOrTouch,listener)

    end
    if group then
    	group:insert(btn)
    end
    return btn
end
--[[
if showSplash==true then
    timer.performWithDelay(1000,fadeSplash,1)
elseif showSplash==false then
        display.remove(splash1)
    display.remove(splash2)
     composer.gotoScene( "clock", {effect = defaultTransition})
end    
]]

  -- composer.removeScene("main",false)  
--composer.gotoScene("menu")

composer.gotoScene( "title")