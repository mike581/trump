--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:29359fbf50b95eacaa9bd934b9aeaaee:10d33f5302d4fbde2677dd3caf709728:58e31cb599214f5baab249ec966c16d4$
--
-- local sheetInfo = require("mysheet")
-- local myImageSheet = graphics.newImageSheet( "mysheet.png", sheetInfo:getSheet() )
-- local sprite = display.newSprite( myImageSheet , {frames={sheetInfo:getFrameIndex("sprite")}} )
--

local SheetInfo = {}

SheetInfo.sheet =
{
    frames = {
    
        {
            -- TextButtons_--Btn
            x=55,
            y=2,
            width=69,
            height=50,

        },
        {
            -- TextButtons_xBtn
            x=2,
            y=2,
            width=51,
            height=51,

        },
    },
    
    sheetContentWidth = 126,
    sheetContentHeight = 55
}

SheetInfo.frameIndex =
{

    ["TextButtons_--Btn"] = 1,
    ["TextButtons_xBtn"] = 2,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
