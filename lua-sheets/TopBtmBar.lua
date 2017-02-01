--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:5e3cf4ef1fd919b0c40ec04ad25bc801:30d15e137d5e34583d8f7bced3e5b19c:de682786e8ec15b0a9d917eeef86fd33$
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
            -- main [R1C10]
            x=2,
            y=2,
            width=580,
            height=100,

        },
        {
            -- main [R1C1]
            x=584,
            y=2,
            width=580,
            height=100,

        },
        {
            -- main [R1C2]
            x=2,
            y=104,
            width=580,
            height=100,

        },
        {
            -- main [R1C3]
            x=584,
            y=104,
            width=580,
            height=100,

        },
        {
            -- main [R1C4]
            x=2,
            y=206,
            width=580,
            height=100,

        },
        {
            -- main [R1C5]
            x=584,
            y=206,
            width=580,
            height=100,

        },
        {
            -- main [R1C6]
            x=2,
            y=308,
            width=580,
            height=100,

        },
        {
            -- main [R1C7]
            x=2,
            y=410,
            width=580,
            height=100,

        },
        {
            -- main [R1C8]
            x=584,
            y=308,
            width=580,
            height=100,

        },
        {
            -- main [R1C9]
            x=584,
            y=410,
            width=580,
            height=100,

        },
    },
    
    sheetContentWidth = 1168,
    sheetContentHeight = 512
}

SheetInfo.frameIndex =
{

    ["main [R1C10]"] = 1,
    ["main [R1C1]"] = 2,
    ["main [R1C2]"] = 3,
    ["main [R1C3]"] = 4,
    ["main [R1C4]"] = 5,
    ["main [R1C5]"] = 6,
    ["main [R1C6]"] = 7,
    ["main [R1C7]"] = 8,
    ["main [R1C8]"] = 9,
    ["main [R1C9]"] = 10,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
