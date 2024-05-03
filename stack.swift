struct Stack<T> {
    private var elements = [T]()
    
    var isEmpty: Bool {
        return elements.isEmpty
    }
    
    var count: Int {
        return elements.count
    }
    
    mutating func push(_ element: T) {
        elements.append(element)
    }
    
    mutating func pop() -> T? {
        return elements.popLast()
    }
    
    func peek() -> T? {
        return elements.last
    }
}

// Example usage:
var stack = Stack<Int>()

stack.push(1)
stack.push(2)
stack.push(3)

print("Top element of the stack: \(stack.peek() ?? -1)") // Output: 3

if let poppedElement = stack.pop() {
    print("Popped element: \(poppedElement)") // Output: 3
}

print("Top element of the stack: \(stack.peek() ?? -1)") // Output: 2
