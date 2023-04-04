using Performance2

# Read the source code for `create_hashtable` and `push_hashtable!` in `src/Performance2.jl`.
# (You can read `hash2index` too, although you won't call it directly.)

# For the letters of the alphabet, `'a':'z'`, push each once onto a hashtable that you create
# with `create_hashtable`. Do this four times, for hash tables of size 16, 32, 64, and 128.
# Be sure you look at the result. Then fill in the table in the README with the number of
# collisions you observe for each table size.

table = create_hashtable(Char,16)
for i in 'a':'z'
    push_hashtable!(table, i)
end

count = 0
for i in 1:length(table)
    if length(table[i]) > 1
        global count += 1
    end
end

print(count,' ')
count = 0

table = create_hashtable(Char,32)
for i in 'a':'z'
    push_hashtable!(table, i)
end

for i in 1:length(table)
    if length(table[i]) > 1
        global count += 1
    end
end

print(count,' ')
count = 0

table = create_hashtable(Char,64)
for i in 'a':'z'
    push_hashtable!(table, i)
end

for i in 1:length(table)
    if length(table[i]) > 1
        global count += 1
    end
end

print(count,' ')
count = 0

table = create_hashtable(Char,128)
for i in 'a':'z'
    push_hashtable!(table, i)
end

for i in 1:length(table)
    if length(table[i]) > 1
        global count += 1
    end
end

print(count,' ')