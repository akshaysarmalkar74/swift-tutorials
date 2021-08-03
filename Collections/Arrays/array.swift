// Declare
var arr: [String] = ["Hello", "Hey", "There"]
print(arr)

// Find Number of Elements
print(arr.count)

// Update Exisiting Elements
print(arr[0])
// print(arr[5]) // Error (Index out of Range)

// Appending new elements
arr.append("Bye")
print(arr)

// Concatening Array
arr.append(contentsOf: ["Hey there", "Goodbye", "Bye Bye"])
print(arr)

arr += ["Come on", "Done"]
print(arr)

// Remove an element

arr.remove(at: 2)
print(arr)

// Looping
for val in 0..<arr.count {
    print(arr[val])
}