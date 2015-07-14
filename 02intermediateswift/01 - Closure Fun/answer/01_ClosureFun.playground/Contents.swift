func exponentialGrowth(baseNumber num: Int) -> () -> Int {
    var growth = 1
    
    func growthMode() -> Int {
        growth *= num
        return growth
    }
    
    return growthMode
}

let baseTwo = exponentialGrowth(baseNumber: 2)
baseTwo()
baseTwo()
baseTwo()
baseTwo()
baseTwo()