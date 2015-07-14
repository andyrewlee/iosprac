func iBS(arr: [Int], forNum: Int) -> Int? {
    var low = 0
    var high = arr.count - 1

    while low <= high {
        let mid = (low + high)/2

        if arr[mid] > forNum {
            high = mid - 1
        } else if arr[mid] < forNum {
            low = mid + 1
        } else {
            return mid
        }
    }

    return nil
}


let arr = [1, 2, 5, 9, 12, 23]
print(iBS(arr, forNum: 5))
print(iBS(arr, forNum: 12))
print(iBS(arr, forNum: 99))