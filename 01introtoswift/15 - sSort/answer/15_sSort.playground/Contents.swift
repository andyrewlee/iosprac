func sSort(var arr: [Int]) -> [Int] {
    for var i = 0; i < arr.count; ++i {
        var minIndex = i;
        for var j = i; j < arr.count; ++j {
            if arr[j] < arr[minIndex] {
                minIndex = j
            }
        }
        if minIndex != 1 {
            let temp = arr[i]
            arr[i] = arr[minIndex]
            arr[minIndex] = temp
        }
    }
    return arr
}

sSort([1, 23, 43, 29])