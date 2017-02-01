--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:307f5b293861c350d5fe145d45204782:d68e215c46eaa6ac91dc3de5776029c1:8d855f3074364878a7c99e581562cc13$
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
            -- again-final
            x=2,
            y=39,
            width=113,-- full is 226
            height=40,

        },
        {
            -- again-final-off
            x=115,
            y=39,
            width=113,
            height=40,

        },        
        {
            -- quit-final
            x=2,
            y=81,
            width=89, -- full is 178
            height=36,

        },
        {
            -- quit-final-off
            x=91,
            y=81,
            width=89,
            height=36,

        },        
        {
            -- share-final
            x=2,
            y=2,
            width=118, -- full is 236
            height=35,

        },
        {
            -- share-final-off
            x=120,
            y=2,
            width=118,
            height=35,

        },        
    },
    
    sheetContentWidth = 240,
    sheetContentHeight = 119
}

SheetInfo.frameIndex =
{

    ["again-final-on"] = 1,
    ["again-final-off"] = 2,    
    ["quit-final-on"] = 3,
	["quit-final-off"] = 4,    
    ["share-final-on"] = 5,
    ["share-final-off"] = 6,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
