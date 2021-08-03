# Arrays
We can declare an array in the below manner
```
// var arr = [String]()
var arr: [String] = ["Hello", "Hey", "There"]
print(arr)
```

## Counting Number of Elements
In Swift we have .count instead of .length
```
print(arr.count)
```

## Updating Elements
Same as JS
```
print(arr[0])
// print(arr[5]) // Error (Index out of Range)
```

## Appending new elements
Here, we have to use append method, which is similar to push method is JS
```
arr.append("Bye")
print(arr)
```

Append can be also use to concat arrays, in the below manner
```
arr.append(contentsOf: ["Hey there", "Goodbye", "Bye Bye"])
print(arr)
```
We can also concat arrays in the below manner
```
arr += ["Come on", "Done"]
print(arr)
```

## Remove elements from array
Use .remove method and specify and index using at parameter
```
arr.remove(at: 2)
print(arr)
```
Invalid index will result into array

## Looping thorugh an array
```
for val in arr {
    print(val)
}

for val in 0..<arr.count {
    print(arr[val])
}
```
