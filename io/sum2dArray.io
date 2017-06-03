sumArray := method(array,
    sum := 0
    array foreach(v,
        v foreach(jv, sum := sum + jv)
    )
)

a := list(1, 2, 3)
b := list(4, 5, 6)
c := list(7, 8, 9)
abc := list(a, b, c)

sumArray(abc) println