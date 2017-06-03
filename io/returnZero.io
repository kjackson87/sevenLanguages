Number div := Number getSlot("/")

Number / := method(num, 
    if (num == 0, return 0,
    call message argAt(0) println
    return call target div(num))
)

2 / 0 println
16 / 8 println // this is not quite working