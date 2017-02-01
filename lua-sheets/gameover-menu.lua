--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:5f632f69d381e64e98a43284433b8314:7d6634d0244b18481b07dc9ce856994e:7baaba94b20c2ff5b320c9754423650f$
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
            -- all-menu-items-green-new_Again
            x=2,
            y=2,
            width=154,
            height=57,

        },
        {
            -- all-menu-items-green-new_Again
            x=156,
            y=2,
            width=154,
            height=57,

        },        
        {
            -- all-menu-items-green-new_Quit
            x=312,
            y=2,
            width=121,
            height=51,

        },
        {
            -- all-menu-items-green-new_Quit
            x=433,
            y=2,
            width=121,
            height=51,

        },        
        {
            -- all-menu-items-green-new_Share
            x=556,
            y=2,
            width=160,
            height=48,

        },
        {
            -- all-menu-items-green-new_Share
            x=716,
            y=2,
            width=160,
            height=48,

        },        
    },
    
    sheetContentWidth = 878,
    sheetContentHeight = 61
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
