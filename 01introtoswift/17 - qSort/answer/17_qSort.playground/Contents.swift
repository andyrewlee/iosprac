func qSort(arr: [Int]) -> [Int] {
    if arr.count < 2 {
        return arr
    }
    
    let pivot = arr[0]
    var left = [Int]()
    var right = [Int]()
    
    for var i = 1; i < arr.count; ++i {
        if arr[i] < pivot {
            left.append(arr[i])
        } else {
            right.append(arr[i])
        }
    }
    
    return qSort(left) + [pivot] + qSort(right)
}

qSort([1,2,98, 4])