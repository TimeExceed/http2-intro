local luamp = require 'luamp'
local frame = require 'frame'

local figs = {}

frame.ruler(figs)

frame.item(figs, 0, 0, 24, "length of payload")
frame.item(figs, 1, 0, 8, "type")
frame.item(figs, 1, 8, 8, "flags")
frame.item(figs, 2, 0, 32, "stream id")

print(luamp.figure(table.unpack(figs)))
