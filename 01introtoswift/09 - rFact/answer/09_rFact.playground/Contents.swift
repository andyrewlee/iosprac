func rFact(num: Int) -> Int {
    if num == 1 {
        return 1
    } else {
        return num * rFact(num - 1)
    }
}

rFact(5) // 5 * 4 * 3 * 2 * 1  OR  5 * rFact(4)
rFact(4) //     4 * 3 * 2 * 1  OR  4 * rFact(3)
rFact(3) //         3 * 2 * 1  OR  3 * rFact(2)
rFact(2) //             2 * 1  OR  2 * rFact(1)
rFact(1) //                 1  BASE CASE return 1