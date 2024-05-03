func linearSearch<T: Equatable>(_ array: [T], key: T) -> Int? {
    for (index, element) in array.enumerated() {
        if element == key {
            return index
        }
    }
    return nil
}

// Example usage:
let array = [3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5]
if let index = linearSearch(array, key: 9) {
    print("Element found at index: \(index)") // Output: Element found at index: 5
} else {
    print("Element not found")
}
