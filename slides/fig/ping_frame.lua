local luamp = require 'luamp'
local frame = require 'frame'

local figs = {}

frame.ruler(figs)

frame.item(figs, 0, 0, 32, "opaque data part 1")
frame.item(figs, 1, 0, 32, "opaque data part 2")

print(luamp.figure(table.unpack(figs)))
