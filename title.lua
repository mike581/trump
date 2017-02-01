--clock.lua
local composer=require("composer")
local scene = composer.newScene()

local state = 1
local splash1
local splash2
local splash3

local animationTimer2 
local starCount = 0
local mult = 30
    local dot
    local dot2
    local dots = {}
    local animationTimer
    local starTimer
----------------------
display.setDefault("background", 0.2, 0.2, 0.4 )



local function changeState()
        if state == 1 then
           state=2
           splash2:toFront()
        elseif state == 2 then
          state=3
          splash1:toFront()
        elseif state == 3 then
          state = 4
          splash3:toFront()
        elseif state == 4 then
          state = 1
          splash1:toFront()
        end
        for i = 1, #dots do
             if dots[i]~=0 then
                dots[i]:toFront()
             end
        end


end

local function delegateState()
  animationTimer2= timer.performWithDelay( 400, changeState, 0 )
end  

local function loadBar()

    dot = display.newImageRect( "images/dot.png", 9 , 12 )
    dot.anchorX=0
    dot.anchorY=0.5
    dot.x = 9*starCount
    dot.y = _H*(7/8)-3 
    dot.xScale =.8
    dot.yScale = .8
    dot2 = display.newImageRect( "images/dot.png", 9 , 12 )
    dot2.anchorX=0
    dot2.anchorY=1
    dot2.x = 9*starCount
    dot2.y = _H
    dot2.xScale =.8
    dot2.yScale = .8  
    starCount=starCount+1
    table.insert( dots, dot)
    table.insert( dots, dot2)
  


end

local function gotoClock()
            timer.cancel(animationTimer2)

           timer.cancel(animationTimer)
           timer.cancel(starTimer)
          composer.gotoScene("clock")
    end

function scene:create( event )
    splash2 = display.newImageRect( "images/titleScreenC.png", 1136, 640 )
    splash2.anchorX=0.5
    splash2.anchorY=0.5
    splash2.x = _W/2
    splash2.y = _H/2 
    splash2.xScale = 0.55
    splash2.yScale = 0.55

    splash3 = display.newImageRect( "images/titleScreenB.png", 1136, 640 )
    splash3.anchorX=0.5
    splash3.anchorY=0.5
    splash3.x = _W/2
    splash3.y = _H/2 
    splash3.xScale = 0.55
    splash3.yScale = 0.55

    splash1 = display.newImageRect( "images/titleScreenA.png", 1136, 640 )
    splash1.anchorX=0.5
    splash1.anchorY=0.5
    splash1.x = _W/2
    splash1.y = _H/2 
    splash1.xScale = 0.55
    splash1.yScale = 0.55



    --splash1:toBack()
    splash2:toBack()
    splash3:toBack()

    self.view:insert(splash2)
    self.view:insert(splash3)
    self.view:insert(splash1)

end

function scene:show( event )
    local group = self.view
    if event.phase == "will" then
    elseif event.phase == "did" then
         animationTimer = timer.performWithDelay( 400, delegateState, 1 )
         starTimer = timer.performWithDelay( 30, loadBar, 120 )
         timer.performWithDelay( 120*30, gotoClock ,1 )
    end
end

function scene:hide( event )
    if event.phase=="will" then

            for i = 1, #dots do
                if dots[i]~=0 then
                   display.remove(dots[i])
                end
         end    
        composer.removeScene("title",true)
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
