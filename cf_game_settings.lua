require("class")
require("cf_color")

CFGameSettings = class(function(c)
    local countries = {}
    countries["Andorra"] = { 
        id = 1,
        name = "andorra",
        code = "ryb",
        colors = {
            r = CFColor(208,16,58),
            y = CFColor(254,223,0),
            b = CFColor(0,24,168)
        },
        coords = { x = 958, y = 225 }
    }
    countries["Argentina"] = { 
        id = 2,
        name = "argentina",
        code = "bw",
        colors = {
            b = CFColor(116,172,223),
            w = CFColor(255,255,255),
        },
        coords = { x = 534, y = 640 }
    }
    countries["Australia"] = { 
        id = 3,
        name = "australia",
        code = "rbw",
        colors = {
            r = CFColor(255,0,0),
            b = CFColor(0,4,139),
            w = CFColor(255,255,255)
        },
        coords = { x = 1596, y = 570 }
    } 
    countries["Austria"] = { 
        id = 4,
        name = "austria",
        code = "rw",
        colors = {
            r = CFColor(237,41,57),
            w = CFColor(255,255,255),
        },
        coords = { x = 1008, y = 186 }
    }
    countries["Belgium"] = { 
        id = 5,
        name = "belgium",
        code = "ryk",
        colors = {
            r = CFColor(237,41,57),
            y = CFColor(250,224,66),
            k = CFColor(0,0,0)
        },
        coords = { x = 967, y = 170 }
    }
    countries["Brazil"] = { 
        id = 6,
        name = "brazil",
        code = "ygbw",
        colors = {
            y = CFColor(254,233,0),
            g = CFColor(0,155,58),
            b = CFColor(0,39,118),
            w = CFColor(255,255,255)
        },
        coords = { x = 532, y = 466 }
    }
    countries["Canada"] = { 
        id = 7,
        name = "canada",
        code = "rw",
        colors = {
            r = CFColor(255,0,0),
            w = CFColor(255,255,255)
        },
        coords = { x = 150, y = 0 }
    }
    countries["Chile"] = { 
        id = 8,
        name = "chile",
        code = "rbw",
        colors = {
            r = CFColor(213,43,30),
            b = CFColor(0,57,166),
            w = CFColor(255,255,255)
        },
        coords = { x = 526, y = 613 }
    }
    countries["China"] = { 
        id = 9,
        name = "china",
        code = "ry",
        colors = {
            r = CFColor(213,43,30),
            y = CFColor(255,222,0)
        },
        coords = { x = 1371, y = 157 }
    }
    countries["Croatia"] = { 
        id = 10,
        name = "croatia",
        code = "rbw",
        colors = {
            r = CFColor(255,0,0),
            b = CFColor(23,23,150),
            w = CFColor(255,255,255)
        },
        coords = { x = 1029, y = 201 }
    }
    countries["Cyprus"] = { 
        id = 11,
        name = "cyprus",
        code = "ogw",
        colors = {
            o = CFColor(216,217,3),
            g = CFColor(47,71,18),
            w = CFColor(255,255,255)
        },
        coords = { x = 1136, y = 272 }
    }
    countries["CzechRepublic"] = { 
        id = 12,
        name = "czechrepublic",
        code = "bw",
        colors = {
            b = CFColor(17,69,126),
            w = CFColor(255,255,255)
        },
        coords = { x = 1022, y = 173 }
    }
    countries["Denmark"] = { 
        id = 13,
        name = "denmark",
        code = "rw",
        colors = {
            r = CFColor(215,20,26),
            w = CFColor(255,255,255)
        },
        coords = { x = 998, y = 132 }
    } 
    countries["Egypt"] = { 
        id = 14,
        name = "egypt",
        code = "rw",
        colors = {
            r = CFColor(206,17,38),
            w = CFColor(255,255,255)
        },
        coords = { x = 1093, y = 296 }
    }
    countries["Estonia"] = { 
        id = 15,
        name = "estonia",
        code = "bw",
        colors = {
            b = CFColor(72,145,217),
            w = CFColor(255,255,255)
        },
        coords = { x = 1078, y = 121 }
    }
    countries["Finland"] = { 
        id = 16,
        name = "finland",
        code = "bw",
        colors = {
            b = CFColor(0,53,128),
            w = CFColor(255,255,255)
        },
        coords = { x = 1073, y = 62 }
    }
    countries["France"] = { 
        id = 17,
        name = "france",
        code = "rbw",
        colors = {
            r = CFColor(237,41,57),
            b = CFColor(0,35,149),
            w = CFColor(255,255,255)
        },
        coords = { x = 927, y = 172 }
    }
    countries["Germany"] = { 
        id = 18,
        name = "germany",
        code = "ryk",
        colors = {
            r = CFColor(221,0,0),
            y = CFColor(255,206,0),
            k = CFColor(0,0,0)
        },
        coords = { x = 989, y = 149 }
    }
    countries["Greece"] = { 
        id = 19,
        name = "greece",
        code = "bw",
        colors = {
            b = CFColor(13,94,175),
            w = CFColor(255,255,255)
        },
        coords = { x = 1067, y = 231 }
    }
    countries["Hungary"] = { 
        id = 20,
        name = "hungary",
        code = "rgw",
        colors = {
            r = CFColor(205,42,62),
            g = CFColor(67,111,77),
            w = CFColor(255,255,255)
        },
        coords = { x = 1045, y = 188 }
    }
    countries["Iceland"] = { 
        id = 21,
        name = "iceland",
        code = "rbw",
        colors = {
            r = CFColor(215,40,40),
            b = CFColor(0,56,151),
            w = CFColor(255,255,255)
        },
        coords = { x = 819, y = 81 }
    }
    countries["India"] = { 
        id = 22,
        name = "india",
        code = "ogbw",
        colors = {
            o = CFColor(255,153,51),
            g = CFColor(18,136,7),
            b = CFColor(0,0,0),
            w = CFColor(255,255,255)
        },
        coords = { x = 1341, y = 272 }
    }
    countries["Indonesia"] = { 
        id = 23,
        name = "indonesia",
        code = "rw",
        colors = {
            r = CFColor(206,17,38),
            w = CFColor(255,255,255)
        },
        coords = { x = 1493, y = 463 }
    } 
    countries["Ireland"] = { 
        id = 24,
        name = "ireland",
        code = "ogw",
        colors = {
            o = CFColor(255,121,0),
            g = CFColor(0,155,72),
            w = CFColor(255,255,255)
        },
        coords = { x = 896, y = 147 }
    }
    countries["Israel"] = { 
        id = 25,
        name = "israel",
        code = "bw",    
        colors = {
            b = CFColor(0,56,184),
            w = CFColor(255,255,255)
        },
        coords = { x = 1147, y = 287 }
    }
    countries["Italy"] = { 
        id = 26,
        name = "italy",
        code = "rgw",
        colors = {
            r = CFColor(206,43,55),
            g = CFColor(0,146,70),
            w = CFColor(255,255,255)
        },
        coords = { x = 991, y = 198 }
    }
    countries["Japan"] = { 
        id = 27,
        name = "japan",
        code = "rw",
        colors = {
            r = CFColor(188,0,45),
            w = CFColor(255,255,255)
        },
        coords = { x = 1691, y = 207 }
    }
    countries["Lithuania"] = { 
        id = 28,
        name = "lithuania",
        code = "ryg",
        colors = {
            r = CFColor(139,39,45),
            y = CFColor(253,185,19),
            g = CFColor(0,106,68)
        },
        coords = { x = 1072, y = 139 }
    }
    countries["Luxembourg"] = { 
        id = 29,
        name = "luxembourg",
        code = "rbw",
        colors = {
            r = CFColor(237,41,57),
            b = CFColor(0,161,222),
            w = CFColor(255,255,255)
        },
        coords = { x = 984, y = 177 }
    }
    countries["Malaysia"] = { 
        id = 30,
        name = "malaysia",
        code = "rybw",
        colors = {
            r = CFColor(204,0,1),
            y = CFColor(255,204,0),
            b = CFColor(1,0,102),
            w = CFColor(255,255,255)
        },
        coords = { x = 1522, y = 456 }
    }
    countries["Malta"] = { 
        id = 31,
        name = "malta",
        code = "rw",
        colors = {
            r = CFColor(207,20,43),
            w = CFColor(255,255,255),
        },
        coords = { x = 1031, y = 266 }
    }
    countries["Mexico"] = { 
        id = 32,
        name = "mexico",
        code = "rgw",
        colors = {
            r = CFColor(206,17,38),
            g = CFColor(0,104,71),
            w = CFColor(255,255,255)
        },
        coords = { x = 287, y = 289 }
    }
    countries["Netherlands"] = { 
        id = 33,
        name = "netherlands",
        code = "rbw",
        colors = {
            r = CFColor(174,28,40),
            b = CFColor(33,70,139),
            w = CFColor(255,255,255)
        },
        coords = { x = 976, y = 158 }
    } 
    countries["NewZealand"] = { 
        id = 34,
        name = "newzealand",
        code = "rbw",
        colors = {
            r = CFColor(204,20,43),
            b = CFColor(0,36,125),
            w = CFColor(255,255,255)
        },
        coords = { x = 1900, y = 725 }
    }
    countries["Norway"] = { 
        id = 35,
        name = "norway",
        code = "rbw",
        colors = {
            r = CFColor(239,43,45),
            b = CFColor(0,40,104),
            w = CFColor(255,255,255)
        },
        coords = { x = 984, y = 57 }
    }
    countries["Philippines"] = { 
        id = 36,
        name = "philippines",
        code = "rybw",
        colors = {
            r = CFColor(206,17,38),
            y = CFColor(252,209,22),
            b = CFColor(0,56,168),
            w = CFColor(255,255,255)
        },
        coords = { x = 1620, y = 380 }
    }
    countries["Poland"] = { 
        id = 37,
        name = "poland",
        code = "rw",
        colors = {
            r = CFColor(220,20,60),
            w = CFColor(255,255,255)
        },
        coords = { x = 1033, y = 149 }
    }
    countries["Portugal"] = { 
        id = 38,
        name = "portugal",
        code = "rg",
        colors = {
            r = CFColor(255,0,0),
            g = CFColor(0,102,0)
        },
        coords = { x = 899, y = 229 }
    }
    countries["Russia"] = { 
        id = 39,
        name = "russia",
        code = "rbw",
        colors = {
            r = CFColor(213,43,30),
            b = CFColor(0,57,166),
            w = CFColor(255,255,255)
        },
        coords = { x = 1108, y = 7 }
    }
    countries["SanMarino"] = { 
        id = 40,
        name = "sanmarino",
        code = "bw",
        colors = {
            b = CFColor(94,182,228),
            w = CFColor(255,255,255)
        },
        coords = { x = 1019, y = 216 }
    }
    countries["Singapore"] = { 
        id = 41,
        name = "singapore",
        code = "rw",
        colors = {
            r = CFColor(237,41,57),
            w = CFColor(255,255,255)
        },
        coords = { x = 1539, y = 487 }
    }
    countries["Slovakia"] = { 
        id = 42,
        name = "slovakia",
        code = "rbw",
        colors = {
            r = CFColor(238,28,37),
            b = CFColor(11,78,162),
            w = CFColor(255,255,255)
        },
        coords = { x = 1048, y = 182 }
    }
    countries["Slovenia"] = { 
        id = 43,
        name = "slovenia",
        code = "rbw",
        colors = {
            r = CFColor(237,28,36),
            b = CFColor(0,93,164),
            w = CFColor(255,255,255)
        },
        coords = { x = 1030, y = 200 }
    } 
    countries["SouthAfrica"] = { 
        id = 44,
        name = "southafrica",
        code = "rygbwk",
        colors = {
            r = CFColor(222,56,49),
            y = CFColor(255,182,18),
            g = CFColor(0,122,77),
            b = CFColor(0,35,149),
            w = CFColor(255,255,255),
            k = CFColor(0,0,0)
        },
        coords = { x = 1046, y = 642 }
    }
    countries["SouthKorea"] = { 
        id = 45,
        name = "southkorea",
        code = "rbwk",
        colors = {
            r = CFColor(198,12,48),
            b = CFColor(0,52,120),
            w = CFColor(255,255,255),
            k = CFColor(0,0,0)
        },
        coords = { x = 1671, y = 252 }
    }
    countries["Spain"] = { 
        id = 46,
        name = "spain",
        code = "ry",
        colors = {
            r = CFColor(198,11,30),
            y = CFColor(225,196,0)
        },
        coords = { x = 900, y = 218 }
    }
    countries["SriLanka"] = { 
        id = 47,
        name = "srilanka",
        code = "royg",
        colors = {
            r = CFColor(141,32,41),
            o = CFColor(255,91,0),
            y = CFColor(255,183,0),
            g = CFColor(0,86,65)
        },
        coords = { x = 1405, y = 438 }
    }
    countries["Sweden"] = { 
        id = 48,
        name = "sweden",
        code = "yb",
        colors = {
            y = CFColor(255,183,0),
            b = CFColor(0,106,167)
        },
        coords = { x = 1016, y = 67 }
    }
    countries["Switzerland"] = { 
        id = 49,
        name = "switzerland",
        code = "rw",
        colors = {
            r = CFColor(213,43,30),
            w = CFColor(255,255,255)
        },
        coords = { x = 988, y = 193 }
    }
    countries["Taiwan"] = { 
        id = 50,
        name = "taiwan",
        code = "rbw",
        colors = {
            r = CFColor(254,0,0),
            b = CFColor(0,0,149),
            w = CFColor(255,255,255)
        },
        coords = { x = 1635, y = 337 }
    }
    countries["Thailand"] = { 
        id = 51,
        name = "thailand",
        code = "rbw",
        colors = {
            r = CFColor(237,28,36),
            b = CFColor(36,29,79),
            w = CFColor(255,255,255)
        },
        coords = { x = 1507, y = 368 }
    }
    countries["Turkey"] = { 
        id = 52,
        name = "turkey",
        code = "rw",
        colors = {
            r = CFColor(227,10,23),
            w = CFColor(255,255,255)
        },
        coords = { x = 1100, y = 229 }
    }
    countries["UnitedArabEmirates"] = { 
        id = 53,
        name = "unitedarabemirates",
        code = "rgwk",
        colors = {
            r = CFColor(255,0,0),
            g = CFColor(0,115,47),
            y = CFColor(255,255,255),
            k = CFColor(0,0,0)
        },
        coords = { x = 1247, y = 334 }
    } 
    countries["UnitedKingdom"] = { 
        id = 54,
        name = "unitedkingdom",
        code = "rbw",
        colors = {
            r = CFColor(207,20,43),
            b = CFColor(0,36,125),
            w = CFColor(255,255,255)
        },
        coords = { x = 908, y = 127 }
    }
    countries["UnitedStates"] = { 
        id = 55,
        name = "unitedstates",
        code = "rbw",
        colors = {
            r = CFColor(178,34,52),
            b = CFColor(60,59,110),
            w = CFColor(255,255,255)
        },
        coords = { x = 0, y = 55 }
    }
    
    c.countries = countries
end)

function CFGameSettings:getItemByID(id)
    for k, v in pairs(self.countries) do
        if (v.id == id) then
            return v
        end
    end
end

function CFGameSettings:getLength()
    local count = 0
    for k, v in pairs(self.countries) do
        count = count + 1
    end
    return count
end

--[[
function BulbGameSettings:getItemByName(name)
    return self.countries[name]
end
]]--
