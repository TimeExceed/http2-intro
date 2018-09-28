local luamp = require 'luamp'
local table = require 'table'

local figs = {}

local tree = luamp.layouts.tree(
   luamp.origin, 1, 1,
   {luamp.bullet,
    {luamp.bullet,
     {luamp.bullet},
     {luamp.bullet,
      {luamp.bullet},
      {luamp.bullet}}}})
table.insert(figs, tree)

local function calcLines(tree)
    assert(#tree > 0, tostring(#tree))
    local rt = tree[1]
    for i = 2, #tree do
        table.insert(figs, luamp.line(rt, tree[i][1]))
        calcLines(tree[i])
    end
end
calcLines(tree.shapes)

table.insert(
   figs,
   luamp.text(tree.shapes[2][1].center, luamp.directions.right, "index.html"))
table.insert(
   figs,
   luamp.text(tree.shapes[2][2][1].center, luamp.directions.left, "packed.js,4"))
table.insert(
   figs,
   luamp.text(tree.shapes[2][3][1].center, luamp.directions.right, "packed.css,8"))
table.insert(
   figs,
   luamp.text(tree.shapes[2][3][2][1].center, luamp.directions.bottom_left, "logo.png,1"))
table.insert(
   figs,
   luamp.text(tree.shapes[2][3][3][1].center, luamp.directions.bottom_right, "icon.gif,1"))

print(luamp.figure(table.unpack(figs)))
