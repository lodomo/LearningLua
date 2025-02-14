# TABLES.

Tables are the lifeblood of Lua.

## Basics

    > a = {}                -- create a table and assign its reference
    > k = "x"               -- variable k is the string "x"
    > a[k] = 10             -- new entry, with key="x" and value=10
    > a[20] = "great"       -- new entry, with key=20 and value="great"
    > a["x"]                --> 10
    > k = 20                -- variale k is now the number 20
    > a[k]                  --> "great"      
    > a["x"] = a["x"] + 1   -- increments entry "x"
    > a["x"]                --> 11 

## Indices

    > a = {}                -- empty table
    > a.x = 10              -- same as a["x"] = 10
    > a.x       --> 10      -- same as a["x"]
    > a.y       --> nil     -- same as a["y"]

Keys can be numbers or strings.
Getting to a key with the dot notation, the key must be a string, not a number.

## Constructors.y]

If a table is made without keys, it defaults to "indexed", 
Wild thing about Lua is that it's 1 indexed.

table = {"one", "two", "three"}
table[1] --> "one"
table[2] --> "two"
table[3] --> "three"

## Constructors with keys.

table = {x=10, y=20}
table["x"]      --> 10
table.x         --> 10
table["y"]      --> 20
table.y         --> 20
table["20"]     --> nil

## Arithmetic Keys

You can make a key arithmetically, but you need to define it in the constructor
with brackets.

x = 10
y = 1
table = {[x+y] = 10, [x-y] = 20}

table[11] --> 10
table[9]  --> 20

## Arrays, Lists and Sequences

Arrays are tables, with index keys.
Arrays == Lists == Sequences.

### Add to the end of a table
a = {"x", "y"}
a[#a+1] = "z"
a[3] --> "z"

### Problems with holes.

Holes are nil values in the table.

a = {"one", "two", nil, "four"}
#a      --> 4
a[3]    --> nil

### Traversal

#### By keys
table = {o = 1, t = 2, th = 3}

for key, value in pairs(table) do
    print(key, value)
end

Traversal order is never guaranteed by key. All keys are guaranteed to be traversed.

#### By index
table = {"one", nil, "three"}

for index, value in ipairs(table) do
    print(index, value)
end

Traversal order is guaranteed by index. **If there is a hole, traversal stops.**

## Safe Navigation

table = {x = {y = {z = 10}}}

table.x.y.z --> 10

E = {}
zed = ((table.x or {}).y or {}).z
zed --> 10

## Table Library

table.concat(table, separator, start, end)
table.insert(table, position, value)
table.remove(table, position)
table.move(table1, start, end, position, table2)
table.sort(table, comparator)
table.pack(...)
table.unpack(table, start, end)

