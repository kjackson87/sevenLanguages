Matrix := Object clone

Matrix dim := method(x, y,
    self array := List clone
    for(i, 1, y, 
        newArray := List clone
        for (j, 1, x,
            newArray append(0)
        )
        array append(newArray)
    )
)

Matrix set := method(x, y, value,
    theList := self array at(y)
    theList atPut(x, value)

)

Matrix get := method(x, y, value,
    theList := self array at(y)
    theList at(x)
)

Matrix println := method(
    self array foreach(l, l println)
)

newArray := Matrix clone
newArray dim(2, 3)
newArray set(0, 0, 1)
newArray println
