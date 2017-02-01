local dog = {}
local dog_mt = { __index = dog }    -- metatable

-- PRIVATE FUNCTIONS

local function getDogYears( realYears ) -- local; only visible in this module
    return realYears * 7
end

-- PUBLIC FUNCTIONS

function dog.old( text, type, size, x, y )    -- constructor
    local newDog = {
        text = text or "Unnamed",
        type = type or "Arial Rounded MT Bold",
        size = size or 16,
        x = x or 0,
        y = y or 0
    }
    return setmetatable( newDog, dog_mt )
end

function dog.new( text, type, size, x, y )    -- constructor

    local offset = size / (size / 2) 
    local textForeground = display.newText( text, x, y, type, size )
    local textBackground = display.newText( text, x+offset, y+offset, type, size )
    textForeground:setFillColor( 189/255, 177/255, 255/255 )                                           
    textBackground:setFillColor( 47/255, 44/255, 64/255)                                           
    local textTable = {
        foreground = textForeground,
        background = textBackground
    }
    return setmetatable( textTable, dog_mt )
end

function dog:Text(newText)
    self.foreground.text = newText
    self.background.text = newText
end

function dog:RemoveDisplay() 
    display.remove(self.foreground)
    display.remove(self.background)
end

function dog:ToFront()
    self.foreground:toFront()
    self.background:toFront()
end

function dog:Remove()
    self.foreground:removeSelf()
    self.background:removeSelf()
end

return dog
