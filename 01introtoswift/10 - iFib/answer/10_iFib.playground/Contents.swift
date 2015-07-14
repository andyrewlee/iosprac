func iFib(num: Int) -> Int {
    var fibs = [0, 1];
    for var i = 0; i < num; ++i {
        fibs.append(fibs[0] + fibs[1])
        fibs.removeAtIndex(0)
    }
    return fibs[0]
}

iFib(0)
iFib(1)
iFib(2)
iFib(3)
iFib(4)
iFib(5)