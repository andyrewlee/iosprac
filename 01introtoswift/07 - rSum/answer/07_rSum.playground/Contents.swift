func rSum(num: Int) -> Int {
    if num == 1 {
        return num
    } else {
        return rSum(num - 1) + num
    }
}

rSum(1) // 1                 BASE CASE return 1
rSum(2) // 1 + 2             OR rSum(1) + 2
rSum(3) // 1 + 2 + 3         OR rSum(2) + 3
rSum(4) // 1 + 2 + 3 + 4     OR rSum(3) + 4
rSum(5) // 1 + 2 + 3 + 4 + 5 OR rSum(4) + 5