local oldtable = table.concat
table.concat = function(a)
    print(oldtable(a))
    return oldtable(a)
end 
-- Source: https://glot.io/snippets/fzsm0qss82
-- paste script below this line
