func rFib(num: Int) -> Int {
    if num == 0 {
        return 0
    } else if num == 1 || num == 2 {
        return 1
    } else {
        return rFib(num - 1) + rFib(num - 2)
    }
}

rFib(0) // BASE CASE return 0
rFib(1) // BASE CASE return 1
rFib(2) // BASE CASE return 1
rFib(3) // rFib(2) + rFib(1)
rFib(4) // rFib(3) + rFib(2)
rFib(5) // rFib(4) + rFib(3)
