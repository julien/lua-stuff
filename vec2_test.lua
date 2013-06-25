--[[ Tests for Vec2  ]]--

package.path = './?.lua;' .. package.path
require 'vec2'

-- new
v = Vec2:new({x = 10 , y = 10})
assert(v.x == 10)
assert(v.y == 10)
print('x: ' .. v.x .. ' y: ' .. v.y)

-- add
v:add({x = 10, y = 10})
assert(v.x == 20)
assert(v.y == 20)
print('x: ' .. v.x .. ' y: ' .. v.y)

-- sub
v:sub({x = 10, y = 10})
assert(v.x == 10)
assert(v.y == 10)
print('x: ' .. v.x .. ' y: ' .. v.y)

-- mult
v:mult(2)
assert(v.x == 20)
assert(v.y == 20)
print('x: ' .. v.x .. ' y: ' .. v.y)

-- div
v:div(2)
assert(v.x == 10)
assert(v.y == 10)
print('x: ' .. v.x .. ' y: ' .. v.y)

-- mag
assert(v:mag() == math.sqrt(10 * 10 + 10 * 10))

-- maq_sq
assert(v:mag_sq() == (10 * 10 + 10 * 10))

-- equals
assert(v:equals({x = 10, y = 10}) == true)

-- tostring
assert(tostring(v) == 'x = 10, y = 10')

-- type (TODO: fix)
assert(type(v) == 'table', 'type')


