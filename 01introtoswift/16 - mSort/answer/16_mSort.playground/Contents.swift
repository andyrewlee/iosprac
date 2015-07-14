func mSort(var arr: [Int]) -> [Int] {
    if arr.count < 2 {
        return arr
    }
    
    let middle = arr.count/2
    let left = Array(arr[0..<middle])
    let right = Array(arr[middle...arr.count-1])
    return mergeLeft(mSort(left), withRight: mSort(right))
}

func mergeLeft(var left: [Int], var withRight right: [Int]) -> [Int] {
    var output = [Int]()
    
    while(left.count > 0 && right.count > 0) {
        if left[0] <= right[0] {
            output.append(left.removeAtIndex(0))
        } else {
            output.append(right.removeAtIndex(0))
        }
    }
    
    while(left.count > 0) {
        output.append(left.removeAtIndex(0))
    }
    
    while(right.count > 0) {
        output.append(right.removeAtIndex(0))
    }
    
    return output
}


mSort([1,2,98, 4])