--about.lua
local composer=require("composer")
local scene = composer.newScene()

 -- local bg
  local backBtn
  local stopBtn
  local playBtn
  local phaseNarrowBtn
  local phaseWideBtn
  local phaseFullBtn
  local ffBtn
  local rwBtn
  local bg2
  local pauseTimer
  local refreshTimer
  local font
  local musicOff
  local phaseGroup=display.newGroup()

--local function phase4(btn)
--display.remove(btn)
-- btn = display.newText(btn.text,btn.x,btn.y, "federalescortchrome", 35 ) 
--end



 
  local function phase3(e)
transition.to(e,{time=50, xScale=1,yScale=1})
end


  local function phase2(e)

transition.to(e,{time=50, xScale=.8,yScale=.8,onComplete=phase3}) 
  end


 
local function buttonHit(e)


  if e.target==backBtn then
    display.remove(stopBtn)
   display.remove(playBtn)
   display.remove(jamBtn)
   display.remove(rwBtn)
   display.remove(ffBtn)   
   display.remove(phaseFullBtn)
   display.remove(phaseNarrowBtn)
   display.remove(phaseWideBtn)                
    composer.hideOverlay("pause")
  elseif e.target==ffBtn or e.target==rwBtn then
    if e.target==ffBtn then  
          transition.to(ffBtn,{time=50, xScale=1.2,yScale=1.2,onComplete=phase2}) 
    elseif e.target==rwBtn then    
          transition.to(rwBtn,{time=50, xScale=1.2,yScale=1.2,onComplete=phase2})  
    end       
  else  

    display.remove(ffBtn)
    display.remove(rwBtn)

    if e.target.type=="music" then
       display.remove(stopBtn)
       display.remove(jamBtn)
       display.remove(playBtn)
       if e.target==playBtn then 
          stopBtn = display.newText("Mute", _W*(3/4)+10, _H*(19/24)-5, "federalescort3d", 35 )
          stopBtn:setFillColor(224/225,96/225,224/225) 
          jamBtn = display.newText("MuSic",_W*(1/4)-15, _H*(15/24) , "federalescort3d", 35 )
          jamBtn:setFillColor(224/225,96/225,224/225)                       
          if soundOn==false then
            media.playSound(music)
            soundOn=true
            print("music")
          end
          playBtn = display.newText("AntheM", _W/2-10, _H*(17/24)+5, "federalescortchrome", 35 )
       --   playBtn:setFillColor(224/225,96/225,224/225)          
          transition.to(playBtn,{time=50, xScale=1.2,yScale=1.2,onComplete=phase2})        
       elseif e.target==stopBtn then
          playBtn = display.newText("AntheM", _W/2-10, _H*(17/24)+5, "federalescort3d", 35 )
          playBtn:setFillColor(224/225,96/225,224/225)         
          jamBtn = display.newText("MuSic", _W*(1/4)-15, _H*(15/24), "federalescort3d", 35 )
          jamBtn:setFillColor(224/225,96/225,224/225)   
          if soundOn==true then
            media.stopSound(music)
            music=nil
            soundOn=false
            print("stop")
          end
          stopBtn = display.newText("Mute", _W*(3/4)+10, _H*(19/24)-5, "federalescortchrome", 35 )
       --   stopBtn:setFillColor(224/225,96/225,224/225)            
          transition.to(stopBtn,{time=50, xScale=1.2,yScale=1.2,onComplete=phase2})       
      elseif e.target==jamBtn then
          stopBtn = display.newText("Mute", _W*(3/4)+10, _H*(19/24)-5, "federalescort3d", 35 )
          stopBtn:setFillColor(224/225,96/225,224/225)       
          playBtn = display.newText("AntheM", _W/2-10, _H*(17/24)+5, "federalescort3d", 35 )
          playBtn:setFillColor(224/225,96/225,224/225)  
          jamBtn = display.newText("MuSic", _W*(1/4)-15, _H*(15/24), "federalescortchrome", 35 )

          ffBtn = display.newText(">>", (_W*(1/6))+60, _H/2, "federalescortchrome", 35 )      
          rwBtn = display.newText("<<", _W*(1/6), _H/2, "federalescortchrome", 35 )
          transition.to(ffBtn,{time=50, xScale=1.2,yScale=1.2,onComplete=phase2}) 
          transition.to(rwBtn,{time=50, xScale=1.2,yScale=1.2,onComplete=phase2})                   
          transition.to(jamBtn,{time=50, xScale=1.2,yScale=1.2,onComplete=phase2}) 
          ffBtn:addEventListener("tap",buttonHit) 
          rwBtn:addEventListener("tap",buttonHit) 
      end 
      jamBtn.type="music"
      stopBtn.type="music"
      playBtn.type="music"
      jamBtn:addEventListener("tap",buttonHit) 
      stopBtn:addEventListener("tap",buttonHit) 
      playBtn:addEventListener("tap",buttonHit)






    elseif e.target.type=="phase" then
        display.remove(phaseWideBtn)
    --    display.remove(phaseFullBtn)
        display.remove(phaseNarrowBtn)
  --[[      if e.target==phaseFullBtn then
          
          heightModeTop=_H/2-90
          heightModeLow=_H/2+90  
          topBar.y=heightModeTop
          lowBar.y=heightModeLow
               

          phaseWideBtn = display.newText("wide", _W*(3/4), _H*(9/24)-10, "federalescort3d", 35 )
          phaseWideBtn:setFillColor(224/225,96/225,224/225) 
          phaseNarrowBtn = display.newText("nArrow", _W*(1/4)+20, _H*(5/24), "federalescort3d", 35 )
          phaseNarrowBtn:setFillColor(224/225,96/225,224/225)     
          phaseFullBtn = display.newText("full", _W*(1/2), _H*(7/24)+5, "federalescortchrome", 35 )  
          transition.to(phaseFullBtn,{time=50, xScale=1.2,yScale=1.2,onComplete=phase2})
        else--]]

        if e.target==phaseWideBtn then

            heightModeTop=35
            heightModeLow=_H-35   
            if topBar ~= nil then
            topBar.y=heightModeTop
            lowBar.y=heightModeLow
            end
         -- phaseFullBtn = display.newText("full", _W*(1/2), _H*(7/24)+5, "federalescort3d", 35 )
        --  phaseFullBtn:setFillColor(224/225,96/225,224/225)              
          phaseNarrowBtn = display.newText("nArrow", _W*(1/4)+30 ,_H*(7/24), "federalescort3d", 35 ) 
          phaseNarrowBtn:setFillColor(224/225,96/225,224/225)     
          phaseWideBtn = display.newText("wide", _W*(3/4)-10, _H*7/24 , "federalescortchrome", 35 )
          transition.to(phaseWideBtn,{time=50, xScale=1.2,yScale=1.2,onComplete=phase2})
        elseif e.target==phaseNarrowBtn then

          heightModeTop=70
          heightModeLow=_H-70  
          if topBar ~= nil then       
          topBar.y=heightModeTop
          lowBar.y=heightModeLow
          end


          phaseWideBtn = display.newText("wide", _W*(3/4)-10 ,_H*7/24 , "federalescort3d", 35 )
          phaseWideBtn:setFillColor(224/225,96/225,224/225) 
      --    phaseFullBtn = display.newText("full", _W*(1/2), _H*(7/24)+5, "federalescort3d", 35 )  
      --    phaseFullBtn:setFillColor(224/225,96/225,224/225)     
          phaseNarrowBtn = display.newText("nArrow",_W*(1/4)+30 ,_H*(7/24), "federalescortchrome", 35 )
          transition.to(phaseNarrowBtn,{time=50, xScale=1.2,yScale=1.2,onComplete=phase2})
        end
        phaseWideBtn.type="phase"
       -- phaseFullBtn.type="phase"
        phaseNarrowBtn.type="phase"
        phaseWideBtn:addEventListener("tap",buttonHit) 
     --   phaseFullBtn:addEventListener("tap",buttonHit) 
        phaseNarrowBtn:addEventListener("tap",buttonHit) 
    end
      
   --[[   if e.target==modeBtn then
        if topBar~=nil then
          if isWideMode==true then
            print("HERRE")
            heightModeTop=35
            heightModeLow=_H-35   
            isWideMode=false
          else
            heightModeTop=70
            heightModeLow=_H-70  
            isWideMode=true
          end 
          topBar.y=heightModeTop
          lowBar.y=heightModeLow
        end
      end
--]]




    end 

    return true
end


--local catchAll

--local function catchAllTaps(event)
--    return true
--end


local function removeIt(e)
       display.remove(e)
end



function scene:create( event )
    --[[catchAll=display.newRect(0,0,_W,_H)
    catchAll.alpha=1
    catchAll.hitTestable=true
    catchAll:addEventListener("tap",catchAllTaps)
    catchAll:toFront()
    self.view:insert(catchAll)--]]

    --  bg=display.newRect(50,50,_W-100,_H-100)

    --bg=display.newRoundedRect(50,50,_W-100,_H-100,12)      

 --     bg.x=_W/2
  --    bg.y=_H/2
   --  self.view:insert(bg)
end

function scene:show( event )

    if event.phase == "will" then


 bg2=display.newRoundedRect(50,50,_W-100,_H-100,3)
     -- bg2:setFillColor(128/255,0,1)

    bg2:setFillColor(64/255,64/255,224/225)   

bg2:setStrokeColor( 25/255, 1 ,20/255 )
bg2.strokeWidth = 5
      bg2.x=_W/2
      bg2.y=_H/2
      bg2:scale(0,0)
      bg2:toFront()
  

   backBtn = display.newText("bAck", _W/2, _H/2, "federalescorthalf", 55 )
   --backBtn:setFillColor(224/225,96/225,224/225)    
   playBtn = display.newText("AntheM", _W/2, _H/2, "federalescort3d", 35 )
   playBtn:setFillColor(224/225,96/225,224/225) 
   playBtn.type="music"   
   stopBtn = display.newText("Mute", _W/2, _H/2, "federalescort3d", 35 )
   stopBtn:setFillColor(224/225,96/225,224/225)  
   stopBtn.type="music"
   jamBtn = display.newText("MuSic", _W/2, _H/2, "federalescort3d", 35 )
   jamBtn:setFillColor(224/225,96/225,224/225) 
   jamBtn.type="music"
   phaseNarrowBtn = display.newText("nArrow", _W/2, _H/2, "federalescort3d", 35 )
   phaseNarrowBtn:setFillColor(224/225,96/225,224/225)  
   phaseNarrowBtn.type="phase"
   phaseWideBtn = display.newText("wide", _W/2, _H/2, "federalescort3d", 35 )
   phaseWideBtn:setFillColor(224/225,96/225,224/225) 
   phaseWideBtn.type="phase"
   --phaseFullBtn = display.newText("full", _W/2, _H/2, "federalescort3d", 35 )  
   --phaseFullBtn:setFillColor(224/225,96/225,224/225) 
   --phaseFullBtn.type="phase" 
   --phaseGroup:scale(0,0)
   phaseGroup:toFront()
   phaseGroup:insert(jamBtn)
   phaseGroup:insert(phaseNarrowBtn)
   phaseGroup:insert(phaseWideBtn)
   --phaseGroup:insert(phaseFullBtn)
   phaseGroup:insert(backBtn)
   phaseGroup:insert(playBtn)
   phaseGroup:insert(stopBtn)  
   jamBtn:addEventListener("tap",buttonHit) 
   phaseNarrowBtn:addEventListener("tap",buttonHit) 
   phaseWideBtn:addEventListener("tap",buttonHit) 
   --phaseFullBtn:addEventListener("tap",buttonHit) 
   backBtn:addEventListener("tap",buttonHit) 
   playBtn:addEventListener("tap",buttonHit)
   stopBtn:addEventListener("tap",buttonHit)                
   
   --transition.to(phaseGroup, {time=100, xScale=1,yScale=1})   
   

   
   transition.to(playBtn, {time=25,x= _W/2-10,y=_H*(17/24)+5 })   
   transition.to(stopBtn, {time=25,x=_W*(3/4)+10 ,y= _H*(19/24)-10 }) 
   transition.to(jamBtn, {time=25,x=_W*(1/4)-15 ,y= _H*(15/24) }) 
   transition.to(phaseNarrowBtn, {time=25,x=_W*(1/4)+30 ,y=_H*(7/24) }) 
   transition.to(phaseWideBtn, {time=25, x= _W*(3/4)-10 ,y=_H*7/24 }) 
  -- transition.to(phaseFullBtn, {time=100, x=_W*(1/2) ,y= _H*(7/24)+5 })          
--[[
   playBtn = display.newText("AntheM", _W/2-30, _H*(17/24)+5, "federalescort3d", 35 )
   stopBtn = display.newText("Mute", _W*(3/4)+10, _H*(19/24)-10, "federalescort3d", 35 )
   jamBtn = display.newText("MuSic", _W*(1/4)-15, _H*(15/24), "federalescort3d", 35 )
   phaseNarrowBtn = display.newText("nArrow", _W*(1/4)+20, _H*(5/24), "federalescort3d", 35 )
   phaseWideBtn = display.newText("wide", _W*(3/4), _H*(9/24)-10, "federalescort3d", 35 )
   phaseFullBtn = display.newText("full", _W*(1/2), _H*(7/24)+5, "federalescort3d", 35 ) 
--]]







   transition.to(bg2, {time=25, xScale=1,yScale=1})

    elseif event.phase=="did" then



  refreshTimer=timer.performWithDelay(20,event.parent.testF,0)


           end
end

function scene:hide( event )
    if event.phase=="will"then
      transition.to(bg2, {time=25, xScale=0.01,yScale=0.01,onComplete=removeIt})
      transition.to(phaseGroup, {time=25, xScale=0.01,yScale=0.01,x=_W/2,y=_H/2,onComplete=removeIt})      
      timer.cancel(refreshTimer)  
     
    composer.removeScene("pause",false)   
     elseif event.phase == "did" then

  returnFunction()

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