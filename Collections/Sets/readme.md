# Set
## Initialize a set
```
// Empty Set
var emptySet = Set<Int>()

// Filled Set
var rollNums: Set<Int> = [12,3,5,1]
```

## Insert a Value
Use the insert method to add values
```
rollNums.insert(33)
print(rollNums)
```

## Remove a Value
Use the remove method to remove a value
```
rollNums.remove(3)
print(rollNums)
```

## Iterating over a Set
Iterating over a set is same as iterating over an array
```
for num in rollNums {
    print(num)
}
```

## Count number of elements
Same as counting number of elements in array
```
print(rollNums.count)
```

## Union, Intersection, Difference and isSubset
**Union** - Joins content of sets (unique elements only)
**Intersection** - Prints elements which are present in both sets
**Subracting** - Prints elements not present in another set
**symmetricDifference** - Prints elements which are not present in both sets
**isSubset** - Checks if all elements of set is present in another set
```
let setOne: Set = [1,2,3,4,5]
let setTwo: Set = [3,4,5,6,7]

print(setOne.union(setTwo))
print(setOne.intersection(setTwo))
print(setOne.subtracting(setTwo))
print(setOne.symmetricDifference(setTwo))
print(setOne.isSubset(of: setTwo));
```