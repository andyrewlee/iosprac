func bSort(var arr: [Int]) -> [Int] {
    var swapped: Bool
    let count = 0
    
    repeat {
        swapped = false
        
        for var i = 0; i < arr.count - 1 - count; ++i {
            if arr[i] > arr[i + 1] {
                let temp = arr[i]
                arr[i] = arr[i + 1]
                arr[i + 1] = temp
            }
        }
        
    } while swapped == true
    
    return arr
}

bSort([1,23, 43, 29])