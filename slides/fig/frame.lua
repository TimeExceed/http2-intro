local frame = {}
local luamp = require 'luamp'
local table = require 'table'

frame.unit = 0.3

-- ruler --
local function longRuler(figs, i)
   local x = i * frame.unit
   local y = 0.1
   table.insert(figs, luamp.line(luamp.point(x, 0), luamp.point(x, y)))
   table.insert(figs, luamp.text(luamp.point(x, y), luamp.directions.top, tostring(i // 8)))
end

local function shortRuler(figs, i)
   local x = i * frame.unit
   table.insert(figs, luamp.line(luamp.point(x, 0), luamp.point(x, 0.05)))
end

function frame.ruler(figs)
   table.insert(figs, luamp.line(luamp.origin, luamp.point(4 * 8 * frame.unit, 0)))

   for i = 0, 4 * 8 do
      if i % 8 == 0 then
         longRuler(figs, i)
      else
         shortRuler(figs, i)
      end
   end
end

function frame.item(figs, level, start, length, text, opts)
   local height = 0.5
   local length = length * frame.unit
   local left_top_x = start * frame.unit
   local left_top_y = -level * height - 0.05
   local center = luamp.point(left_top_x, left_top_y) + luamp.point(length / 2, -height/2)
   table.insert(figs, luamp.rectangle(center, length, height, opts))
   table.insert(figs, luamp.text(center, luamp.directions.center, text))
end

return frame
