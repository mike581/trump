--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:fd287b693a7fb01a8ecec7bdd79ad5a3:15b98a8b99caea00b90f7a2407db58e0:c66bb5aedd478fdea8cd6180dfb458c1$
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
            -- 3x_1
            x=2,
            y=125,
            width=847,
            height=120,

        },
        {
            -- 3x_2
            x=807,
            y=2,
            width=847,
            height=120,

        },
        {
            -- 3x_3
            x=2,
            y=247,
            width=847,
            height=120,

        },
        {
            -- 3x_4
            x=807,
            y=493,
            width=847,
            height=120,

        },
        {
            -- 3x_5
            x=2,
            y=615,
            width=847,
            height=120,

        },
        {
            -- 3x_6
            x=851,
            y=615,
            width=847,
            height=120,

        },
        {
            -- 5x_1
            x=2,
            y=737,
            width=812,
            height=112,

        },
        {
            -- 5x_2
            x=816,
            y=737,
            width=812,
            height=112,

        },
        {
            -- 5x_3
            x=2,
            y=851,
            width=812,
            height=112,

        },
        {
            -- 5x_4
            x=816,
            y=851,
            width=812,
            height=112,

        },
        {
            -- 5x_5
            x=2,
            y=965,
            width=812,
            height=112,

        },
        {
            -- 5x_6
            x=816,
            y=965,
            width=812,
            height=112,

        },
        {
            -- 9X_1
            x=2,
            y=2,
            width=803,
            height=121,

        },
        {
            -- 9X_2
            x=851,
            y=124,
            width=803,
            height=121,

        },
        {
            -- 9X_3
            x=851,
            y=247,
            width=803,
            height=121,

        },
        {
            -- 9X_4
            x=2,
            y=369,
            width=803,
            height=121,

        },
        {
            -- 9X_5
            x=807,
            y=370,
            width=803,
            height=121,

        },
        {
            -- 9X_6
            x=2,
            y=492,
            width=803,
            height=121,

        },
    },
    
    sheetContentWidth = 1700,
    sheetContentHeight = 1079
}

SheetInfo.frameIndex =
{

    ["3x_1"] = 1,
    ["3x_2"] = 2,
    ["3x_3"] = 3,
    ["3x_4"] = 4,
    ["3x_5"] = 5,
    ["3x_6"] = 6,
    ["5x_1"] = 7,
    ["5x_2"] = 8,
    ["5x_3"] = 9,
    ["5x_4"] = 10,
    ["5x_5"] = 11,
    ["5x_6"] = 12,
    ["9X_1"] = 13,
    ["9X_2"] = 14,
    ["9X_3"] = 15,
    ["9X_4"] = 16,
    ["9X_5"] = 17,
    ["9X_6"] = 18,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
