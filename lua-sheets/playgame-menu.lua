--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:c9bbdaa38526957e0ac599ef67c34bb4:07269ab9b33a437e165380dd244abd29:9bcc2cb97e30ca975d4fe8646d66a2b0$
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
            -- cr0
            x=2,
            y=49,
            width=172,
            height=44,

        },
        {
            -- cr1
            x=176,
            y=49,
            width=172,
            height=44,

        },
        {
            -- cr2
            x=350,
            y=49,
            width=172,
            height=44,

        },
        {
            -- cr3
            x=524,
            y=49,
            width=172,
            height=44,

        },
        {
            -- cr4
            x=698,
            y=49,
            width=172,
            height=44,

        },
        {
            -- st0
            x=872,
            y=49,
            width=141,
            height=44,

        },
        {
            -- st1
            x=1015,
            y=49,
            width=141,
            height=44,

        },
        {
            -- st2
            x=1062,
            y=2,
            width=141,
            height=44,

        },
        {
            -- st3
            x=1205,
            y=2,
            width=141,
            height=44,

        },
        {
            -- st4
            x=1158,
            y=48,
            width=141,
            height=44,

        },
        {
            -- tut0
            x=2,
            y=2,
            width=210,
            height=45,

        },
        {
            -- tut1 -37
            x=214,
            y=2,
            width=210,
            height=45,

        },
        {
            -- tut2 57
            x=426,
            y=2,
            width=210,
            height=45,

        },
        {
            -- tut3 147
            x=638,
            y=2,
            width=210,
            height=45,

        },
        {
            -- tut4 -123
            x=850,
            y=2,
            width=210,
            height=45,

        },
    },
    
    sheetContentWidth = 1348,
    sheetContentHeight = 95
}

SheetInfo.frameIndex =
{

    ["cr0"] = 1,
    ["cr1"] = 2,
    ["cr2"] = 3,
    ["cr3"] = 4,
    ["cr4"] = 5,
    ["st0"] = 6,
    ["st1"] = 7,
    ["st2"] = 8,
    ["st3"] = 9,
    ["st4"] = 10,
    ["tut0"] = 11,
    ["tut1 -37"] = 12,
    ["tut2 57"] = 13,
    ["tut3 147"] = 14,
    ["tut4 -123"] = 15,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
