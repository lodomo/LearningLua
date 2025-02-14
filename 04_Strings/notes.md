# Chapter 4: Strings

Strings are immutable.
the '#' character is used to get the length of a string.
It counts the length in bytes.
Concatenation is done with the ".." operator.

> print("Hello" .. " World") -- Hello World
> print("The result is " .. 3) -- The result is 3

Strings are IMMUTABLE.

> a = "Hello"
> print(a .. " World") -- Hello World
> print(a) -- Hello

## Literal Strings

Strings can be enclosed with single or double quotes.

> print("Hello") -- Hello
> print('Hello') -- Hello

Strings can have pairs of single or double quotes inside them,
as long as they are different from the enclosing quotes.

> print("Hello 'World'") -- Hello 'World'
> print('Hello "World"') -- Hello "World"

\a bell
\b back space
\f form feed
\n newline
\r carriage return
\t horizontal tab
\v vertical tab
\\ backslash
\" double quote
\' single quote

## Long Strings

Long strings are enclosed with double square brackets.
[[...]]

This is exactly how multi-line comments are done in Lua.
-- [[Long String]]

Sometimes you want to have nested long strings.
[==[ ... ]==] is also valid. As many equal signs as you want, as long as they match.

## Coersions

You can do math with strings as long as the strings can be cleanly turned into numbers.
All string conversions to converted on the fly to floats.

> "10" + 1 -> 11.0

### Explicit conversions

#### tonumber

It's better to use the built in function to convert strings to numbers, it's
safer, and cleaner, and more readable.

> tonumber("10") + 1 -> 11.0

You can also convert strings as other bases, to base 10.

> tonumber("10", 16) -> 16
> tonumber("101101", 2) -> 45

If the string can't be converted to a number, **tonumber will return nil.**

> tonumber("Hello") -> nil
> tonumber("10.5e") -> nil

#### tostring

You can convert numbers to strings with the tostring function.

## String Library

string.len(s) : Returns Length of string s, equiv to #s
string.rep(s, n) : Returns a repeat string s n times (n must be an integer)
string.reverse(s) : Returns a reverse string s
string.lower(s) : Returns lowercase string s
string.upper(s) : Returns uppercase string s
string.sub(s, i, j) : Returns substring of s from i to j
string.char(x[,y...]) : Returns a string of the character with ASCII value x, will concatenate all arguments
string.byte(s[,i[,j]]) : Returns the ASCII value of the character at position i in string s, or the ASCII value of the character at position i to j in string s defaults to 1
string.format(fmt, ...) : Returns a formatted string, like printf in C
string.gsub(s, p, r) : Returns a string with all occurrences of pattern p in string s replaced with string r, returns the modified string and the number of replacements

## Unicode

utf8.len('string') : Returns the number of characters in a string
If there is an error in the string, it returns nil and where the error is.

utf.char(x) is the same as string.char(x)
utf.codepoint() is the same as string.byte()

for i, c in utf8.codes("Ação") do
    print(i, c)
end

    --> 1 65
    --> 2 231
    --> 4 227
    --> 6 111


