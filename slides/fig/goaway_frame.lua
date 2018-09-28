local luamp = require 'luamp'
local frame = require 'frame'

local figs = {}

frame.ruler(figs)

frame.item(figs, 0, 0, 32, "last stream id")
frame.item(figs, 1, 0, 32, "error code")
frame.item(figs, 2, 0, 32, "additional debug data (*)")

print(luamp.figure(table.unpack(figs)))
