## Exercise 3.1: Which of the following are valid numerals? What are their values?

.0e12       : Valid | 0 
.e12        : Invalid, e needs a number before it
0.0e        : Invalid, e needs a number after it
0x12        : Valid | 18
0xABFG      : Invalid, G is not a valid hex digit
0xA         : Valid | 10
FFFF        : Invalid, 0x is missing
0xFFFFFFFF  : Valid | 4294967295
0x          : Invalid, 0x needs a number after it
0x1P10      : Valid | 1024 (IDK how P works)
0.1e1       : Valid | 1
0x0.1p1     : Invalid. (IDK how p works.)

## Exercise 3.2: Explain the following results:
    > math.maxinteger * 2 --> -2
    > math.mininteger * 2 --> 0
    > math.maxinteger * math.maxinteger --> 1
    > math.mininteger * math.mininteger --> 0

The first one wraps, and you're down two from 2^63-1 happening.
Second one you don't have that loss, so it sticks to 0
Third one is the same as the first one, but squared, so it wraps back to 1
Fourth one is the same as the second one, but squared, so it sticks to 0


Exercise 3.3: What will the following program print?
for i = -10, 10 do
print(i, i % 3)
end

-10     2
-9      0
-8      1
-7      2
-6      0
-5      1
-4      2
-3      0
-2      1
-1      2
0       0
1       1
2       2
3       0
4       1
5       2
6       0
7       1
8       2
9       0
10      1

Exercise 3.4: What is the result of the expression 2^3^4? What about 2^-3^4?

2^3^4 = 2^(3^4) = 2^81
2^-3^4 = 2^-(3^4) = 2^-81

Exercise 3.5: The number 12.7 is equal to the fraction 127/10, where the 
denominator is a power of ten. Can you express it as a common fraction where 
the denominator is a power of two? 

What about the number 5.5?

12.7 = 127/10 = 127/2^1 * 5 = 127/2 * 5 = 127/10
5.5 = 11/2 = 11/2^1 = 11/2

Exercise 3.6: Write a function to compute the volume of a right circular cone, 
given its height and the angle between a generatrix and the axis.

```lua
function cone_volume(height, angle)
    local radius = height * math.tan(angle)
    return math.pi * radius * radius * height / 3
end
```

Exercise 3.7: Using math.random, write a function to produce a pseudo-random number with a standard
normal (Gaussian) distribution.


Based on the "basic form" from [Wikipedia](https://en.wikipedia.org/wiki/Box%E2%80%93Muller_transform#Basic_form)
```lua
function box_muller_transform()
    u_1 = math.random()
    u_2 = math.random()
    return math.sqrt(-2 * math.log(u_1)) * math.cos(2 * math.pi * u_2)
end
```
