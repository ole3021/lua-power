--[[ Multi
Line comments]]

-- Single comments

print('Hello Lua') -- semicolons are not necessary

--[[ Lua stored integer as integer first
untile operations like division on that integer.]]

n = 100
print(n)      --> 100;   internally stored as an integer.
print(n * 2)  --> 200;   this expression is stored as an integer.
print(n / 2)  -->  50.0; this expression is stored in floating-point.

--[[Table
equal only if they are the same object]]

obja = {}
objb = {}
obja['a'] = 123
objb['a'] = 123

print(obja == obja)
print{objb == obja}

--[[Lua Scope
`local` defines local variable. Lua variable not hosited]]
phi = 1.618034
local gamma = 0.577216

--[[Lua has short-circuited or and and operators return their last-evaluated value]]

-- local x = myBoolean and valueOnTrue or valueOnFalse
-- local maxNum = (a > b) and a or b
-- This is similar to the Javascript:
-- var maxNum = (a > b) ? a : b;

--[[Compare]]
print(6.0 * 7.0 == '42')            --> false, different types
print(6.0 * 7.0 == tonumber('42'))  --> true, both are numbers

-- Lua 5.3 new
-- print(3 & 5) -->  2;    00110b AND 10010b = 00010b.
-- print(6 | 18) --> 22;    00110b  OR 10010b = 10110b.
-- print(6 ~ 18) --> 20;    00110b XOR 10010b = 10100b.

--[[Function
]]

function reduce(a, b)
  return b, a % b
end

counter = 1

while counter < 3 do
  print('>>> counter in while', counter)
  counter = counter + 1
end

print('>>> counter after while', counter)

repeat
  print('>>> counter in repeat', counter)
  counter = counter + 1
until counter > 5

for i = 6, 8 do
  print('>>> for i ', i)
end

-- TOFIX
-- for key, value = ipairs({'a', 'b'}) do
--   print('>>> for key, value', key, value)
-- end

-- if (0 > 1) do
--   print('>>> if condition')
-- elseif 1 > 0 then
--   print('>>> elseif condition')
-- else
--   print('>>> else condition')
-- end

--[[Flexible number]]
local a, b, c = 1, 2, 3

a, b = b, a

--[[Table
Variable]]
table1 = {aKey = 'aValue'}
table1.aKey = 'someValue'
table2 = {key1 = 'value1', ['key2'] = 'value2',
          [false] = 0, [table1] = table1}
table2['key2'] = 'bValue'

print('>>> table1', table1.aKey)
print('>>> table2', table2['key2'])

--[[Lua provides tables may be used as keys
As ES6 symbles]]

local aTable = {}

local key1   = {}
aTable[key1] = 100

local key2   = {}
aTable[key2] = 200

print('>>> aTable[key1]', aTable[key1])

--[[Array in Lua]]
luaArray = {'human', 'tree'}

print('>>> array, firstItem, length', luaArray, luaArray[1], #luaArray)

first = table.remove(luaArray, 1)
print('>>> lua array remove first', luaArray[1])
table.insert(luaArray, 1, first)
print('>>> lua array add back first', luaArray[1])

table.insert(luaArray, 'raccoon')
last = table.remove(luaArray, #luaArray)