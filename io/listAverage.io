List myAverage := method(
    array := self
    sum := 0
    array foreach(v, 
        if(v type != Number, Exception raise("NaN"))
        sum := sum + v)
    return sum / array size
)

a := list(1, 2, 3)
b := list(2, 6, 4)
bad := list(2, "test", 4)

a myAverage println
b myAverage println
bad myAverage println