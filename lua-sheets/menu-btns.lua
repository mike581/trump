--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:6eb6a2abf64a18911317fee0041b7dbf:513c95431bca93a671d731d495d27599:a5265e157e0b595a641c8388db3aa8e8$
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
            -- about_off
            x=2,
            y=2,
            width=198,
            height=58,

        },
        {
            -- about_on
            x=202,
            y=2,
            width=198,
            height=58,

        },
        {
            -- share_off
            x=402,
            y=2,
            width=200,
            height=60,

        },
        {
            -- share_on
            x=604,
            y=2,
            width=200,
            height=60,

        },
        {
            -- options_off
            x=2,
            y=64,
            width=254,
            height=68,

        },
        {
            -- options_on
            x=258,
            y=64,
            width=254,
            height=68,

        },
        {
            -- again_off
            x=514,
            y=64,
            width=194,
            height=70,

        },
        {
            -- playgame_on
            x=2,
            y=136,
            width=334,
            height=70,

        },
        {
            -- playgame_off
            x=338,
            y=136,
            width=334,
            height=70,

        },
        {
            -- again_on
            x=674,
            y=136,
            width=194,
            height=70,

        },
    },
    
    sheetContentWidth = 870,
    sheetContentHeight = 208
}

SheetInfo.frameIndex =
{

    ["about_off"] = 1,
    ["about_on"] = 2,
    ["share_off"] = 3,
    ["share_on"] = 4,
    ["options_off"] = 5,
    ["options_on"] = 6,
    ["again_off"] = 7,
    ["playgame_on"] = 8,
    ["playgame_off"] = 9,
    ["again_on"] = 10,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
