--about.lua
local composer=require("composer")
local scene = composer.newScene()

require("lineprinter")

local title
local backBtn
local twitterBtn
local mageeBtn
local colorBtn
local mgBtn
local facebookBtn
local font1
local font2
local font3
local font4

local backBtn

local canQuit = true 
local currentObject
local touchInsideBtn = false
local isBtnAnim = false

local fontTable = {}
local tempFont
local m

local defaultLinePrinterSize = 14
local defaultLinePrinterFont = "Helvetica"
local defaultLinePrinterColor = {0,0,0}
local defaultLinePrinterAlign = "center"

local btnsSheetCoords = require("lua-sheets.buttons")

local btnsSheet = graphics.newImageSheet("images/buttons.png", btnsSheetCoords:getSheet())

local btnsSeq = {
    {
        name = "backBtn",
        frames = {
            btnsSheetCoords:getFrameIndex("backArrowBtn3"),
            btnsSheetCoords:getFrameIndex("backArrowBtn5")
        },
        time = 500 
    },
    {
        name = "backBtn_anim",
        frames = {
            btnsSheetCoords:getFrameIndex("backArrowBtn2"),
            btnsSheetCoords:getFrameIndex("backArrowBtn3"),
            btnsSheetCoords:getFrameIndex("backArrowBtn4"),
            btnsSheetCoords:getFrameIndex("backArrowBtn5")
        },
        time = 500 
    }
}

local function myTouchListener(event)
    currentObject = event.target
    display.getCurrentStage():setFocus(currentObject)
    print(currentObject.name) 
    if event.phase == "began" then
        print("touch ON. inside")          
    elseif event.phase == "ended" or event.phase == "cancelled" then
        
        -- setSequence() below redundant ?? Isn't this handled in the doFunction()
        if currentObject.name == "backBtn" then
            currentObject:setSequence("backBtn")
        end

        if touchInsideBtn == true and canQuit == true then 

            print("touch OFF. inside")
            -- composer.removeScene("start")
            
            if(currentObject.name == "backBtn") then
                composer.gotoScene("menu", { effect = defaultTransition })
            end

        elseif touchInsideBtn == false then
            -- print("touch OFF outside")
        end
        
        currentObject = nil
        display.getCurrentStage():setFocus(nil)
        touchInsideBtn = false
    end
end
 
local function doFunction(e)
    if currentObject ~= nil then
        if e.x < currentObject.contentBounds.xMin or
            e.x > currentObject.contentBounds.xMax or
            e.y < currentObject.contentBounds.yMin or 
            e.y > currentObject.contentBounds.yMax then 
            
            if(isBtnAnim) then
                if currentObject.name == "backBtn" then
                    currentObject:setSequence("backBtn")
                end
            else 
                if currentObject.name == "backBtn" then
                    currentObject:setFrame(1)
                end
            end
            -- redundant ??
            -- currentObject:setFrame(1)
            touchInsideBtn = false
        else
            if touchInsideBtn == false then
                if(isBtnAnim) then
                    if currentObject.name == "backBtn" then
                        currentObject:setSequence("backBtn_anim")
                    end
                    currentObject:play()
                else
                    if currentObject.name == "backBtn" then
                        currentObject:setFrame(2)
                    end
                end
            end
            touchInsideBtn = true
        end
    end
end

local function linePrinter(t, xStart, yStart)
    local lineSpacing = 18
    local xLoc = xStart
    local yLoc = yStart
    local idx = 1
    local fontSize
    local fontFace = "Helvetica"
    local lineColor
  
    for i = 1, #t do
        if t[i][1] ~= nil and t[i][1] ~= "" then
          
            fontSize = t[i]["size"] or defaultLinePrinterSize
            defaultLinePrinterSize = fontSize
            fontFace = t[i]["font"] or defaultLinePrinterFont
            defaultLinePrinterFont = fontFace
            lineColor = t[i]["color"] or defaultLinePrinterColor
            defaultLinePrinterColor = lineColor
            alignment = t[i]["align"] or defaultLinePrinterAlign
            defaultLinePrinterAlign = alignment
          
            local txt = display.newText( t[i][1], 0, 0, fontFace, fontSize )
            txt.x = xLoc
            txt.y = yLoc + (idx * lineSpacing)
            txt:setFillColor ( lineColor[1], lineColor[2], lineColor[3] )
            lineSpacing = fontSize + 4
          
            if alignment ~= nil then
                if alignment == "center" then
                    txt.anchorX=0.5
                    txt.anchorY=0.5
                    txt.x = centerX
                elseif alignment == "right" then
                    txt.anchorX=0.5
                    txt.anchorY=0.5
                    txt.x = _W - xLoc  
                end
            end
          
        --    if grp then
        --        grp:insert(txt)
        --    end
            idx = idx + 1
        end
    end
end

--[[
local fonts = native.getFontNames()

count = 0

-- Count the number of total fonts
for i,fontname in ipairs(fonts) do
    count = count+1
end

print( "\rFont count = " .. count )

local name = "pt"     -- part of the Font name we are looking for

name = string.lower( name )

-- Display each font in the terminal console

for i, fontname in ipairs(fonts) do
--  for i=1, 251 do
    j, k = string.find( string.lower( fontname ), name )

    if( j ~= nil ) then

      tempFont=tostring(fontname)
      table.insert( fontTable, tempFont )

     -- else
        print( "fontname = " .. tostring( fontname ) )
    --  end
    end
end


   -- for i = 1, #spawnTable do

local gameCredits = {
        {fontTable[1], size=9, color={1, 1, 1}, align="right" },
  --    for m = 1, #fontTable do
    --    {fontTable[m],
      --  end
 
        {fontTable[2]},
        {fontTable[3]},
        {fontTable[4]},
        {fontTable[5]},
        {fontTable[6]},
        {fontTable[7]},
        {fontTable[8]},
        {fontTable[9]},
        {fontTable[10]},
        {fontTable[11]},
        {fontTable[12]},
        {fontTable[13]},
        {fontTable[14]},
        {fontTable[15]},
        {fontTable[16]},
        {fontTable[17]},
        {fontTable[18]},
        {fontTable[19]},
        {fontTable[20]},
        {fontTable[21]},
        {fontTable[22]},
        {fontTable[23]},
        {fontTable[24]},   
linePrinter(gameCredits, 50, 0)

gamecredits={}

 gameCredits = {
        {fontTable[25], size=10, color={1, 1, 1}, align="right" },

    --    for m = 1, #fontTable do
    --    {fontTable[m],
      --  end
      
        {fontTable[26]},
        {fontTable[27]},
        {fontTable[28]},
        {fontTable[29]},
        {fontTable[30]},
        {fontTable[31]},
        {fontTable[32]},
        {fontTable[33]},
        {fontTable[34]},
        {fontTable[35]},
        {fontTable[36]},
        {fontTable[37]},
        {fontTable[38]},
        {fontTable[39]},
        {fontTable[40]},
        {fontTable[41]},
        {fontTable[42]},
        {fontTable[43]},
        {fontTable[44]},
        {fontTable[45]},
        {fontTable[46]},
        {fontTable[47]},
        {fontTable[48]},    
    }
linePrinter(gameCredits, 200, 0)

gameCredits = {
        {fontTable[49], size=10, color={1, 1, 1}, align="right" },

    --    for m = 1, #fontTable do
    --    {fontTable[m],
      --  end
        {fontTable[50]},
        {fontTable[51]},     
        {fontTable[52]},
        {fontTable[53]},
        {fontTable[54]},
        {fontTable[55]},
        {fontTable[56]},
        {fontTable[57]},
        {fontTable[58]},
        {fontTable[59]},
        {fontTable[60]},
        {fontTable[61]},
        {fontTable[62]},
        {fontTable[63]},
        {fontTable[64]},
        {fontTable[65]},
        {fontTable[66]},
        {fontTable[67]},
        {fontTable[68]},
        {fontTable[69]},
        {fontTable[70]},
        {fontTable[71]},
        {fontTable[72]},   
    }
linePrinter(gameCredits, 350, 0)

gameCredits = {
        {fontTable[73], size=10, color={1, 1, 1}, align="right" },

    --    for m = 1, #fontTable do
    --    {fontTable[m],
      --  end
         {fontTable[74]},
        {fontTable[75]},     
        {fontTable[76]},
        {fontTable[77]},
        {fontTable[78]},
        {fontTable[79]},
        {fontTable[80]},
        {fontTable[81]},
        {fontTable[82]},
        {fontTable[83]},
        {fontTable[84]},
        {fontTable[85]},
        {fontTable[86]},
        {fontTable[87]},
        {fontTable[88]},
        {fontTable[89]},
        {fontTable[90]},
        {fontTable[91]},
        {fontTable[92]},
        {fontTable[93]},
        {fontTable[94]},
        {fontTable[95]},
        {fontTable[96]},  
    }
linePrinter(gameCredits, 500, 0)



   
  --  local model = system.getInfo("model")
  --  local myModel= display.newText(model, _W/2, _H/2, "Optima-ExtraBlack", 25 )
  --  myModel.x = 200
 --   myModel.y = 210  
 --   local environment = system.getInfo("environment")
  --  local myEnvironment= display.newText(environment, _W/2, _H/2, "Optima-ExtraBlack", 25 )
  --  myEnvironment.x = 200
   -- myEnvironment.y = 240  


--]]
local function buttonHit(event)
    local goto = event.target.gotoScene

    composer.gotoScene ( goto, { effect = defaultTransition } )
    return true
end

local function urlMG(e)
  system.openURL( "http://www.facebook.com/mageegames")
end 
local function urlTwitter(e)
  system.openURL( "http://www.twitter.com/colorflagsgame")
end    
local function urlFacebook(e)
  system.openURL( "http://www.facebook.com/colorflagsgame")
end  
local function urlMagee(e)
  system.openURL( "http://www.mageegames.com")
end    

local function urlColor(e)
  system.openURL( "http://www.colorflagsgame.com")
end    

function scene:create( event )
    local margins = 6
   --  title = display.newText("Game Credits", _W/2, _H/2, "Helvetica", 48 )
   -- title.x = _W/2
   -- title.y = 30

 font1 = display.newText("Mike Magee", _W/2, 0, "SnackerComic", 25 )
    font1.y = 80
    font2 = display.newText("Game Designer, Guitar Composition", _W/2, 0, "FFF_Tusj", 25 )
    font2.y = 110
    font3 = display.newText("Sam Englander", _W/2, 0, "SnackerComic", 25 )
    font3.y = 140
    font4 = display.newText("Audio/Visual Design, Programmer", _W/2, 0, "FFF_Tusj", 25 )
    font4.y = 170
    mageeBtn = display.newText("www.mageegames.com", _W/2, 0, "ALBAS", 25 )
    mageeBtn.y = 200           
    colorBtn = display.newText("www.colorflagsgame.com", _W/2, 0, "ALBAS", 25 )
    colorBtn.y = 230    

    twitterBtn = display.newImage("images/twitter51x51.png",_W-40,_H-40)
    twitterBtn.anchorX=0.5
    twitterBtn.anchorY=0.5
    facebookBtn = display.newImage("images/facebook50x50.png",_W-100,_H-40)
    facebookBtn.anchorX=0.5
    facebookBtn.anchorY=0.5
    mgBtn = display.newImage("images/MG80x80.png",5,5)
    mgBtn.anchorX=0
    mgBtn.anchorY=0

	backBtn = display.newSprite(btnsSheet, btnsSeq)
    backBtn:setSequence("backBtn")
    backBtn.name = "backBtn"
    backBtn.anchorX = 0
    backBtn.anchorY = 1
    backBtn.x = 0 + margins
    backBtn.y = _H - backBtn.y - margins
	backBtn.gotoScene = "menu"
    backBtn:setFillColor(224/225,96/225,224/225) 

    -- add listeners here ??
    --backBtn:addEventListener("touch", myTouchListener)
    --backBtn:addEventListener("touch", doFunction)

    --self.view:insert(title)
    self.view:insert(backBtn)
    self.view:insert(twitterBtn)
    self.view:insert(mageeBtn)
    self.view:insert(colorBtn)
    self.view:insert(facebookBtn)
    self.view:insert(mgBtn)
    self.view:insert(font1)
    self.view:insert(font2)
    self.view:insert(font3)
    self.view:insert(font4)
end

function scene:show( event )
    local group = self.view
    if event.phase == "will" then
    elseif event.phase == "did" then

        backBtn:addEventListener("touch", myTouchListener)
        backBtn:addEventListener("touch", doFunction)
        twitterBtn:addEventListener("tap",urlTwitter)
        mageeBtn:addEventListener("tap",urlMagee)
        colorBtn:addEventListener("tap",urlColor) 
        facebookBtn:addEventListener("tap",urlFacebook)  
        mgBtn:addEventListener("tap",urlMG)   
    end
end

function scene:hide( event )
    if event.phase=="will" then
        display.remove(gameCredits)
        backBtn:removeEventListener("touch", myTouchListener)
        backBtn:removeEventListener("touch", doFunction)
        twitterBtn:removeEventListener("tap",urlTwitter)
        mageeBtn:removeEventListener("tap",urlMagee)
        colorBtn:removeEventListener("tap",urlColor) 
        facebookBtn:addEventListener("tap",urlFacebook)    
        mgBtn:removeEventListener("tap",urlMG)        
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
