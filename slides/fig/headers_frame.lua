local luamp = require 'luamp'
local frame = require 'frame'

local figs = {}

frame.ruler(figs)

frame.item(figs, 0, 0, 8, "pad length (?)")
frame.item(figs, 1, 0, 1, "E?")
frame.item(figs, 1, 1, 31, "dependent stream (?)")
frame.item(figs, 2, 0, 8, "weight (?)")
frame.item(figs, 3, 0, 32, "header block (*)")
frame.item(figs, 4, 0, 32, "padding (*)")

print(luamp.figure(table.unpack(figs)))
