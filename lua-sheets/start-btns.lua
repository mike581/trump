--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:189f9a1d8d409593a6519deed1d6d7b4:9ff589d3786746f34cd99a8ce4995601:4ed63d0f64a54708c3b227d1a1ea119b$
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
            x=2,
            y=2,
            width=198,
            height=58,

        },
        {
            -- about-on
            x=202,
            y=2,
            width=198,
            height=58,

        },
        {
            -- options-off
            x=402,
            y=2,
            width=252,
            height=66,

        },
        {
            -- options-on
            x=656,
            y=2,
            width=252,
            height=66,

        },
        {
            -- playgame-off
            x=910,
            y=2,
            width=330,
            height=66,

        },
        {
            -- playgame-on
            x=1242,
            y=2,
            width=330,
            height=66,

        },
    },
    
    sheetContentWidth = 1574,
    sheetContentHeight = 70
}

SheetInfo.frameIndex =
{

    ["about-off"] = 1,
    ["about-on"] = 2,
    ["options-off"] = 3,
    ["options-on"] = 4,
    ["playgame-off"] = 5,
    ["playgame-on"] = 6,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
