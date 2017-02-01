--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:ecb9d5158f9803113f6fc7cc596a9462:598f32ac161745abb67b67fb4b571c74:7bd4dd92770d22d47b01517531dc793a$
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
            -- Frame 0
            x=2,
            y=2,
            width=569,
            height=108,

        },
        {
            -- Frame 1
            x=2,
            y=112,
            width=569,
            height=108,

        },
        {
            -- Frame 2
            x=2,
            y=222,
            width=569,
            height=108,

        },
        {
            -- Frame 3
            x=573,
            y=2,
            width=569,
            height=108,

        },
        {
            -- Frame 4
            x=1144,
            y=2,
            width=569,
            height=108,

        },
        {
            -- Frame 5
            x=573,
            y=112,
            width=569,
            height=108,

        },
        {
            -- Frame 6
            x=1144,
            y=112,
            width=569,
            height=108,

        },
        {
            -- Frame 7
            x=573,
            y=222,
            width=569,
            height=108,

        },
        {
            -- Frame 8
            x=1144,
            y=222,
            width=569,
            height=108,

        },
    },
    
    sheetContentWidth = 1715,
    sheetContentHeight = 332
}

SheetInfo.frameIndex =
{

    ["Frame 0"] = 1,
    ["Frame 1"] = 2,
    ["Frame 2"] = 3,
    ["Frame 3"] = 4,
    ["Frame 4"] = 5,
    ["Frame 5"] = 6,
    ["Frame 6"] = 7,
    ["Frame 7"] = 8,
    ["Frame 8"] = 9,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
