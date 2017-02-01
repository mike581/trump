--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:1a211143b6f736c1fd732604b2a09479:819aa4e070daf5639fea63cb107ba31e:ca6966bf24cf9b3f6e6c0fbad0387565$
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
            -- sweden
            x=0,
            y=0,
            width=500,
            height=332,

        },
        {
            -- switzerland
            x=500,
            y=0,
            width=500,
            height=332,

        },
        {
            -- thailand
            x=0,
            y=332,
            width=500,
            height=332,

        },
        {
            -- turkey
            x=500,
            y=332,
            width=500,
            height=332,

        },
        {
            -- united_arab_emirates
            x=0,
            y=664,
            width=500,
            height=332,

        },
        {
            -- united_kingdom
            x=0,
            y=996,
            width=500,
            height=332,

        },
        {
            -- united_states
            x=500,
            y=664,
            width=500,
            height=332,

        },
    },
    
    sheetContentWidth = 1328,
    sheetContentHeight = 1328
}

SheetInfo.frameIndex =
{

    ["Sweden"] = 1,
    ["Switzerland"] = 2,
    ["Thailand"] = 3,
    ["Turkey"] = 4,
    ["UnitedArabEmirates"] = 5,
    ["UnitedKingdom"] = 6,
    ["UnitedStates"] = 7,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
