func rBS(arr: [Int], forNum num: Int,  low: Int,  high: Int) -> Int? {
    if high < low {
        return nil
    }

    let mid = (low + high)/2
    if arr[mid] > num  {
        return rBS(arr, forNum: num, low: low, high: mid - 1)
    } else if arr[mid] < num {
        return rBS(arr, forNum: num, low: mid + 1, high: high)
    } else {
        return mid
    }
}

let arr = [1, 2, 5, 9, 12, 23]
print(rBS(arr, forNum: 5, low: 0, high: arr.count - 1))
print(rBS(arr, forNum: 12, low: 0, high: arr.count - 1))
print(rBS(arr, forNum: 99, low: 0, high: arr.count - 1))
