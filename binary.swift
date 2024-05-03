func binarySearch<T: Comparable>(_ array: [T], key: T) -> Int? {
    var low = 0
    var high = array.count - 1
    
    while low <= high {
        let mid = low + (high - low) / 2
        
        if array[mid] == key {
            return mid
        } else if array[mid] < key {
            low = mid + 1
        } else {
            high = mid - 1
        }
    }
    
    return nil
}

// Example usage:
let sortedArray = [1, 3, 5, 7, 9, 11, 13, 15]
if let index = binarySearch(sortedArray, key: 7) {
    print("Element found at index: \(index)")
} else {
    print("Element not found")
}
