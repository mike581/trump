require("class")

CFColor = class(function(c, r, g, b)
    c.r = r/255
    c.g = g/255
    c.b = b/255
end)
