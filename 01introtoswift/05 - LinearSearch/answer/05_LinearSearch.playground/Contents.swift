func linearSearch(arr: [Int], forNumber: Int) -> Int? {
    for var i = 0; i < arr.count; ++i {
        if arr[i] == forNumber {
            return i
        }
    }
    return nil
}

let arr = [1, 6, 8, 23, 4]
print(linearSearch(arr, forNumber: 6))
print(linearSearch(arr, forNumber: 8))
print(linearSearch(arr, forNumber: -1))