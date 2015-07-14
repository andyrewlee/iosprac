func iFact(num: Int) -> Int {
    var multiplierBucket = 1
    for var i = num; i > 0; --i {
        multiplierBucket *= i
    }
    return multiplierBucket
}

iFact(5) // 5 * 4 * 3 * 2 * 1
iFact(4) //     4 * 3 * 2 * 1
iFact(3) //         3 * 2 * 1
iFact(2) //             2 * 1
iFact(1) //                 1