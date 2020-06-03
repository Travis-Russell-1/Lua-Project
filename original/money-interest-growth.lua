-- Initial amount in Euros
local A = 1000

-- Percentual of interest rate
local P = 5

-- The amount of years
local N = 3

-- Calculate the amount of money made
local total = A * ((1 + P / 100) ^ N)

-- Display the result
print("Total: " .. total)
