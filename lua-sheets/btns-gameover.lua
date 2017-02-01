--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:f9087a4e5d79ab0cb7218b3ade5444ac:4917a50292d2f61823eb4c0340e36833:a24bfbd606e3ebc804ca65e85f3bcf87$
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
            -- again-off
            x=0,
            y=0,
            width=168,
            height=62,

        },
        {
            -- again-on
            x=168,
            y=0,
            width=168,
            height=62,

        },
        {
            -- quit-off
            x=336,
            y=0,
            width=132,
            height=56,

        },
        {
            -- quit-on
            x=468,
            y=0,
            width=132,
            height=56,

        },
        {
            -- share-off
            x=600,
            y=0,
            width=174,
            height=52,

        },
        {
            -- share-on
            x=774,
            y=0,
            width=174,
            height=52,

        },
    },
    
    sheetContentWidth = 948,
    sheetContentHeight = 62
}

SheetInfo.frameIndex =
{

    ["again-off"] = 1,
    ["again-on"] = 2,
    ["quit-off"] = 3,
    ["quit-on"] = 4,
    ["share-off"] = 5,
    ["share-on"] = 6,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
