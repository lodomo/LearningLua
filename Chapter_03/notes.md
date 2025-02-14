# Chapter 3: Numbers

## Integers and Floats

In Lua, all numbers either double precision floating point numbers, or
64-bit integers. Both are of type "number"

Writing numbers has many forms that work.
4, 4.0, 4.57e-3, 0.3e12, 5E+20

If there's a decimal, it's treated as a float, otherwise it's an integer.

If you absolutely need to know if it's an integer or float:
math.type(4)    -> integer
math.type(4.0)  -> float

But, you can tell the difference during "print" and seeing a decimal.

There's also support for hexadecimal numbers:
0x1A, 0xFFFF, etc.

## Arithmetic

The basic arithmetic operators are:
Addition: +
Subtraction: -
Multiplication: *
Division: /
Modulo: %
Floor division: //
Exponentiation: ^
Negation: - (unary)

If any float is involved, the result is a float.
If division is involved, the result is a float.
If exponentiation is involved, the result is a float.

### Modulo and Floats
Using modulo with floats works, and can also be used to truncate decimals.
x = math.pi
x - x % 0.01    -> 3.14
x - x % 0.001   -> 3.141

## Relational Operators
<, >, <=, >=, ==, ~=

If the two values are of different types, they're considered unequal.
Comparison of numbers considers subtypes. 1 == 1.0 is true.
~= is "not equal"

## Mathmatical Library (math.)

All functions can be called with math.function_name()
They are inherintly included in the global namespace.

### Common Functions
math.abs(x)             -> absolute value
math.ceil(x)            -> ceiling
math.exp(x)             -> Returns e^x
math.floor(x)           -> floor
math.fmod(x, y)         -> x % y, works with floats
math.log(x [, base])    -> natural logarithm, or log base x
math.modf(x)            -> splits a float into integer and decimal ex: 3.14 -> 3, 0.14
math.sqrt(x)            -> square root
math.ult(m, n)          -> See [here](https://www.lua.org/manual/5.3/manual.html#6.7) for more

### Conversion Functions
math.tointeger(x)       -> convert to integer, or nil if not possible
math.type(x)            -> returns "integer" or "float"

### Random Number Functions
math.random([m [, n]])  -> random number integer between m and n(inclusive), or float 0 and 1
math.randomseed(x)      -> seed for random number generator

### Min/Max
math.min(x, y, ...)     -> returns the smallest number
math.max(x, y, ...)     -> returns the largest number

### Mathematical Constants
math.huge               -> Largest possible number (HUGE_VAL)
math.maxinteger         -> largest integer
math.mininteger         -> smallest integer
math.pi                 -> pi

### Trigonometry, all return in radians unless specified
math.acos(x)
math.asin(x)
math.atan(y [, x])  -> See [here](https://www.lua.org/manual/5.3/manual.html#6.7) for more
math.cos(x)
math.deg(x)     -> convert radians to degrees
math.sin(x)
math.tan(x)
math.rad(x)     -> convert degrees to radians

## Representation Limits

Integers: 64 bit, -2^63 to 2^63 - 1
Integers overflow and wrap around.
math.maxinteger + 1 == math.mininteger
math.mininteger - 1 == math.maxinteger

Floats: 64 bit, double precision
11 bits for exponent, 52 bits for fraction
Roughly 16 decimal digits, -10^308 to 10^308
Classic issue with floating point precision.

## Conversions

To convert an int to a float, x = x + 0.0
To convert a float to an int, x = x | 0 (bitwise OR)

Or use the math functions:
math.tointeger(x)

## Precedence

1. ^                        :   exponentiation
2. -, #, ~, not             :   unary operators
3. *, /, //, %              :   multiplication, division, floor division, modulo
4. +, -                     :   addition, subtraction
5. ..                       :   string concatenation
6. <<, >>                   :   bitwise shift
7. &                        :   bitwise AND
8. ~                        :   bitwise XOR
9. |                        :   bitwise OR
10. <, >, <=, >=, ~=, ==    :   comparisons
11. and                     :   logical AND
12. or                      :   logical OR

All binary operators are left associative, except exponentiation, and concatenation.
**When in doubt, always use explicit parentheses.**


