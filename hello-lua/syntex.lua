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