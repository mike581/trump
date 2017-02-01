--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:53501d850f27b0e043ba68d792511809:d78629e1b0b3d3412436ae1f8ce3814c:5d39da0cf2b43448ba289bb3c8cf5cc8$
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
            -- about-off
            x=0,
            y=0,
            width=194,
            height=55,

            sourceX = 2,
            sourceY = 1,
            sourceWidth = 198,
            sourceHeight = 58
        },
        {
            -- about-on
            x=194,
            y=0,
            width=197,
            height=57,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 198,
            sourceHeight = 58
        },
        {
            -- again-off
            x=391,
            y=0,
            width=166,
            height=60,

            sourceX = 1,
            sourceY = 1,
            sourceWidth = 168,
            sourceHeight = 62
        },
        {
            -- again-on
            x=557,
            y=0,
            width=168,
            height=62,

        },
        {
            -- options-off
            x=725,
            y=0,
            width=251,
            height=66,

        },
        {
            -- options-on
            x=976,
            y=0,
            width=251,
            height=66,

        },
        {
            -- playgame-off
            x=1227,
            y=0,
            width=330,
            height=66,

        },
        {
            -- playgame-on
            x=1557,
            y=0,
            width=330,
            height=66,

        },
        {
            -- quit-off
            x=0,
            y=66,
            width=131,
            height=53,

            sourceX = 1,
            sourceY = 1,
            sourceWidth = 132,
            sourceHeight = 56
        },
        {
            -- quit-on
            x=131,
            y=66,
            width=132,
            height=55,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 132,
            sourceHeight = 56
        },
        {
            -- share-off
            x=263,
            y=66,
            width=172,
            height=51,

            sourceX = 1,
            sourceY = 1,
            sourceWidth = 174,
            sourceHeight = 52
        },
        {
            -- share-on
            x=435,
            y=66,
            width=174,
            height=52,

        },
    },
    
    sheetContentWidth = 1887,
    sheetContentHeight = 121
}

SheetInfo.frameIndex =
{

    ["about-off"] = 1,
    ["about-on"] = 2,
    ["again-off"] = 3,
    ["again-on"] = 4,
    ["options-off"] = 5,
    ["options-on"] = 6,
    ["playgame-off"] = 7,
    ["playgame-on"] = 8,
    ["quit-off"] = 9,
    ["quit-on"] = 10,
    ["share-off"] = 11,
    ["share-on"] = 12,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
