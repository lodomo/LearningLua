# Exercises

- Exercise 4.1: How can you embed the following fragment of XML as a string in a Lua program?

<![CDATA[
Hello world
]]>

Show at least two different ways.

```lua
-- First way, using long brackets
local xml = [==[
<![CDATA[
Hello world
]]>]==]

-- Second way, using one liner tricks
local xml = "<![CDATA[\nHello world\n]]>"
```

- Exercise 4.2: Suppose you need to write a long sequence of arbitrary bytes as a literal string in Lua. What format would you use? Consider issues like readability, maximum line length, and size.

```lua
local bytes = [[ some long sequence of bytes ]]
```

- Exercise 4.3: Write a function to insert a string into a given position of another one:
    > insert("hello world", 1, "start: ") --> start: hello world
    > insert("hello world", 7, "small ") --> hello small world

- Exercise 4.4: Redo the previous exercise for UTF-8 strings:
    > insert("ação", 5, "!") --> ação!

- Exercise 4.5: Write a function to remove a slice from a string; the slice should be given by its initial
position and its length:
    > remove("hello world", 7, 4) --> hello d

- Exercise 4.6: Redo the previous exercise for UTF-8 strings:
    > remove("ação", 2, 2) --> ao
    (Here, both the initial position and the length should be counted in codepoints.)

- Exercise 4.7: Write a function to check whether a given string is a palindrome:
    > ispali("step on no pets") --> true
    > ispali("banana") --> false

Exercise 4.8: Redo the previous exercise so that it ignores differences in spaces and punctuation.

Exercise 4.9: Redo the previous exercise for UTF-8 strings.
