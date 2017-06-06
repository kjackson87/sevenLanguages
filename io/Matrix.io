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

Matrix transpose := method(
    transposedMatrix := Matrix clone
    ySize := self array size
    xSize := self array at(0) size
    transposedMatrix dim(xSize, ySize)
    for(y, 0, ySize,
        for(x, 0, xSize,
            transposedMatrix set(y, x, self get(x, y))
        )
    )
    return transposedMatrix
)

newArray := Matrix clone
newArray dim(2, 3)
newArray set(0, 0, 1)
newArray set(1, 2, 8)
newArray println

transposeM := newArray transpose
