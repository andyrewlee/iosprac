func iSum(num: Int) -> Int {
    var sumBucket = 0
    for i in 1...num {
        sumBucket += i
    }
    return sumBucket
}

iSum(1) // 1
iSum(2) // 1 + 2
iSum(3) // 1 + 2 + 3
iSum(4) // 1 + 2 + 3 + 4
iSum(5) // 1 + 2 + 3 + 4 + 5
