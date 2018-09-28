local luamp = require 'luamp'
local frame = require 'frame'

local figs = {}

frame.ruler(figs)

frame.item(figs, 0, 0, 32, "error code")

print(luamp.figure(table.unpack(figs)))
