# Chapter 1 Notes

## Chunks

In Lua, a chunk is just a sequence of statements.
They can be loaded from file, or written to the interpreter.
Not sure what "Chunks" really means, but I guess it just means script?

### Interactive Mode

Enter the Lua interpreter by typing `lua` in the terminal.

#### Loading scripts into the interpreter
use the -i flag to run a script and then enter interactive mode.
```bash
lua -i script.lua
```

use the -l flag to load a script and then enter interactive mode.
```bash
lua -l script
```

add a file to the interpreter by using the `dofile` function.
```lua
dofile("script.lua")
```

## Lexical Conventions

- Identifiers can start with [a-z], [A-Z], or _
    - Avoid: _ALLCAPS

- Keywords:
    - Boolean values
        - true
        - false
    - Logical operators
        - and
        - or
        - not
    - Conditional
        - do
        - while
        - for
        - in
        - break
        - if
        - elseif
        - then      **if** condition **then** block
        - else      
        - end       ends an **if**, **for**, **while**, or **function** block
        - goto      jumps to a label
        - repeat    
        - until     **repeat** block **until** condition
    - Other
        - local     declare a local variable
        - function  declare a function
        - return: return statement
        - nil       null, or nothing

## Global Variables

All variables are global by default. A variable accessed that doesn't exist is **nil**.

## Types

There are 8 basic types in Lua:
- nil, boolean, number, string, userdata, function, thread, and table.

### Nil
null, or nothing. 
Important: 0 is not nil.

### Boolean
true or false.
Conditonal Values:
- false and nil are false
- everything else is true
- 0 is true
- empty string ("") is true

## Args

Args are weird in lua. They're centered around the name of the script.

```bash
lua -e "sin=math.sin" script a b
```
arg[-3] is "lua"
arg[-2] is "-e"
arg[-1] is "sin=math.sin"
arg[0] is "script"
arg[1] is "a"
arg[2] is "b"
