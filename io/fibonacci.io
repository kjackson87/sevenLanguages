"\nRecursion\n" println

fibonacci := method(val,
    if(val == 0, return 0)
    if(val == 1, return 1)
    if(val == 2, return 1)
    fibonacci(val - 1) + fibonacci(val - 2)
)

for(i, 0, 10, fibonacci(i) println)

"\nLoops\n" println

fibonacci := method(val,
    fibSeries := list(1,1)
    if(val == 0, return 0)

    for(i, 3, val,
        nextNum := fibSeries at(i - 2) + fibSeries at(i - 3)
        fibSeries append(nextNum)
    )

    return fibSeries at(val-1)
)

for(i, 0, 10, fibonacci(i) println)