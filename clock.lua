--clock.lua
local composer=require("composer")
local scene = composer.newScene()
--------------------
local timeTable = { year = 2021, day = 20,month = 1, hour = 12, min = 0 }
local previousTime = os.time( timeTable )

local timeDifference = os.time() - previousTime
print("PT" .. previousTime)
print( "YO" .. timeDifference )
----------------------
display.setDefault("background", 0.2, 0.2, 0.4 )

-- Keep track of time in seconds
local secondsLeft = 20 * 60   -- 20 minutes * 60 seconds

local clockTextYears = display.newText("20:00", _W/2, _H*(1/3)+25, native.systemFontBold, 60)
clockTextYears:setFillColor( 162/255, 18/255, 253/255 )
local clockTextSeconds = display.newText("20:00", _W/3, _H*(3/4)+25, native.systemFontBold, 60)
clockTextSeconds:setFillColor(162/255, 18/255, 253/255 )


local function updateTime()
	-- decrement the number of seconds
	secondsLeft = secondsLeft - 1
	
	-- time is tracked in seconds.  We need to convert it to minutes and seconds
	
    --local hours = math.floor ( minutes)
       timeDifference = os.time() - previousTime
     --  previousTime=timeDifference
       local years = (-1*timeDifference) / 31536000
       print("YR: " .. years)
       local months = -1*(math.floor(years) - years )  
       print(months)
       local monthsFinal = 12*months/1 
       print("MO: " .. monthsFinal)
       local days = -1*(math.floor(monthsFinal) - monthsFinal)
       local daysFinal = 30*days/1
       print("DA: " .. daysFinal)
       local hours = -1*(math.floor(daysFinal) - daysFinal)
       local hoursFinal = 24*hours/1
       print("HR: " .. hoursFinal)
       local mins = -1*(math.floor(hoursFinal) - hoursFinal)
       local minsFinal = 60*mins/1
       print("MN: " .. minsFinal)
       local secs = -1*(math.floor(minsFinal) - minsFinal)
       local secsFinal = 60*secs/1
       print("SC: " .. secsFinal)       


	local timeDisplayYears = string.format( "    %02d YRS \n %02d MONTHS \n    %02d DAYS", years,monthsFinal,daysFinal)

	local timeDisplaySeconds = string.format( "         %02d:%02d.%02d", hoursFinal, minsFinal,secsFinal)
	clockTextYears.text = timeDisplayYears
	clockTextSeconds.text = timeDisplaySeconds
end



function scene:create( event )



local splash1 = display.newImageRect( "images/BrokenFlag.png", 580, 320 )
    splash1.anchorX=0.5
    splash1.anchorY=0.5
    splash1.x = _W/2
    splash1.y = _H/2 
   -- splash1:toFront()
splash1:toBack()

end

function scene:show( event )
    local group = self.view
    if event.phase == "will" then
    elseif event.phase == "did" then
    	-- run them timer
    	updateTime()
local countDownTimer = timer.performWithDelay( 1000, updateTime, secondsLeft )
--[[
        backBtn:addEventListener("touch", myTouchListener)
        backBtn:addEventListener("touch", doFunction)
        twitterBtn:addEventListener("tap",urlTwitter)
        mageeBtn:addEventListener("tap",urlMagee)
        colorBtn:addEventListener("tap",urlColor) 
        facebookBtn:addEventListener("tap",urlFacebook)  
        mgBtn:addEventListener("tap",urlMG)   
        --]]
    end
end

function scene:hide( event )
    if event.phase=="will" then      
        composer.removeScene("about",true)
    end  
end

function scene:destroy( event )
    local group = self.view
end

scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )
---------------------------------------------------------------------------------
return scene
