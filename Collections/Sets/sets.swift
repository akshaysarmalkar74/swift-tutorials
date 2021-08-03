// Empty Set
var emptySet = Set<Int>()

// Filled Set
var rollNums: Set<Int> = [12,3,5,1]

// Insert Value
rollNums.insert(33)
print(rollNums)

// Remove Value
rollNums.remove(3)
print(rollNums)

// Iterate over a Set
for num in rollNums {
    print(num)
}

// Count elements in set
print(rollNums.count)

// Union, Intersection, Diff and Subset
let setOne: Set = [1,2,3,4,5]
let setTwo: Set = [3,4,5,6,7]

print(setOne.union(setTwo))
print(setOne.intersection(setTwo))
print(setOne.subtracting(setTwo))
print(setOne.symmetricDifference(setTwo))
print(setOne.isSubset(of: setTwo));
