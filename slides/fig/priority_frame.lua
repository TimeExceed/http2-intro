local luamp = require 'luamp'
local frame = require 'frame'

local figs = {}

frame.ruler(figs)

frame.item(figs, 0, 0, 1, "E")
frame.item(figs, 0, 1, 31, "dependent stream")
frame.item(figs, 1, 0, 8, "weight")

print(luamp.figure(table.unpack(figs)))
