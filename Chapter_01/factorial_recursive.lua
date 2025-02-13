--[[
    This is an example of block text
]]
function factorial(n)
    if n < 0 then
        return "n must be a positive number"
    end

    if n == 0 then
        return 1
    else
        return n * factorial(n - 1)
    end
end

print("enter a number:")
a = io.read("*n")
print(factorial(a))
