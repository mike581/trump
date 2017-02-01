--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:3ca103be35e72374e647a135b8a928ba:b274d11d021c62a27a17d2b5edc1fcec:89066004e9113ca2c2cdc057eed2393e$
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
            width=430,
            height=110,

        },
        {
            -- Frame 1
            x=2,
            y=114,
            width=430,
            height=110,

        },
        {
            -- Frame 2
            x=2,
            y=226,
            width=430,
            height=110,

        },
        {
            -- Frame 3
            x=2,
            y=338,
            width=430,
            height=110,

        },
        {
            -- Frame 4
            x=2,
            y=450,
            width=430,
            height=110,

        },
        {
            -- Frame 5
            x=2,
            y=562,
            width=430,
            height=110,

        },
        {
            -- Frame 6
            x=2,
            y=674,
            width=430,
            height=110,

        },
        {
            -- Frame 7
            x=2,
            y=786,
            width=430,
            height=110,

        },
        {
            -- Frame 8
            x=2,
            y=898,
            width=430,
            height=110,

        },
    },
    
    sheetContentWidth = 434,
    sheetContentHeight = 1010
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
