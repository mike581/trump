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
            -- 2x_1
            x=2,
            y=770,
            width=896,
            height=132,

        },
        {
            -- 2x_2
            x=2,
            y=904,
            width=896,
            height=132,

        },
        {
            -- 2x_3
            x=2,
            y=1038,
            width=896,
            height=132,

        },
        {
            -- 2x_4
            x=2,
            y=1172,
            width=896,
            height=132,

        },
        {
            -- 2x_5
            x=2,
            y=1306,
            width=896,
            height=132,

        },
        {
            -- 2x_6
            x=2,
            y=1440,
            width=896,
            height=132,

        },
        {
            -- 4x_1
            x=2,
            y=2,
            width=901,
            height=126,

        },
        {
            -- 4x_2
            x=2,
            y=130,
            width=901,
            height=126,

        },
        {
            -- 4x_3
            x=2,
            y=258,
            width=901,
            height=126,

        },
        {
            -- 4x_4
            x=2,
            y=386,
            width=901,
            height=126,

        },
        {
            -- 4x_5
            x=2,
            y=514,
            width=901,
            height=126,

        },
        {
            -- 4x_6
            x=2,
            y=642,
            width=901,
            height=126,

        },
        {
            -- 6x_1
            x=900,
            y=770,
            width=853,
            height=127,

        },
        {
            -- 6x_2
            x=900,
            y=899,
            width=853,
            height=127,

        },
        {
            -- 6x_3
            x=900,
            y=1028,
            width=853,
            height=127,

        },
        {
            -- 6x_4
            x=900,
            y=1157,
            width=853,
            height=127,

        },
        {
            -- 6x_5
            x=900,
            y=1286,
            width=853,
            height=127,

        },
        {
            -- 6x_6
            x=900,
            y=1415,
            width=853,
            height=127,

        },
        {
            -- 7x_1
            x=905,
            y=2,
            width=848,
            height=124,

        },
        {
            -- 7x_2
            x=905,
            y=128,
            width=848,
            height=124,

        },
        {
            -- 7x_3
            x=905,
            y=254,
            width=848,
            height=124,

        },
        {
            -- 7x_4
            x=905,
            y=380,
            width=848,
            height=124,

        },
        {
            -- 7x_5
            x=905,
            y=506,
            width=848,
            height=124,

        },
        {
            -- 7x_6
            x=905,
            y=632,
            width=848,
            height=124,

        },
        {
            -- 8x_1
            x=2,
            y=1574,
            width=854,
            height=129,

        },
        {
            -- 8x_2
            x=858,
            y=1574,
            width=854,
            height=129,

        },
        {
            -- 8x_3
            x=2,
            y=1705,
            width=854,
            height=129,

        },
        {
            -- 8x_4
            x=2,
            y=1836,
            width=854,
            height=129,

        },
        {
            -- 8x_5
            x=858,
            y=1705,
            width=854,
            height=129,

        },
        {
            -- 8x_6
            x=858,
            y=1836,
            width=854,
            height=129,

        },
    },
    
    sheetContentWidth = 1755,
    sheetContentHeight = 1967
}

SheetInfo.frameIndex =
{

    ["2x_1"] = 1,
    ["2x_2"] = 2,
    ["2x_3"] = 3,
    ["2x_4"] = 4,
    ["2x_5"] = 5,
    ["2x_6"] = 6,
    ["4x_1"] = 7,
    ["4x_2"] = 8,
    ["4x_3"] = 9,
    ["4x_4"] = 10,
    ["4x_5"] = 11,
    ["4x_6"] = 12,
    ["6x_1"] = 13,
    ["6x_2"] = 14,
    ["6x_3"] = 15,
    ["6x_4"] = 16,
    ["6x_5"] = 17,
    ["6x_6"] = 18,
    ["7x_1"] = 19,
    ["7x_2"] = 20,
    ["7x_3"] = 21,
    ["7x_4"] = 22,
    ["7x_5"] = 23,
    ["7x_6"] = 24,
    ["8x_1"] = 25,
    ["8x_2"] = 26,
    ["8x_3"] = 27,
    ["8x_4"] = 28,
    ["8x_5"] = 29,
    ["8x_6"] = 30,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
