# Optionals
Optionals are basically variables which can have a value of a specified Datatype or they can be ```nil```

## Declaring an Optional
```
// Needs Unwraping
var name: String? = "Akshay"
var favNum: Int? = nil

// Already Unwraped
var name: String! = "Akshay"
var favNum: Int! = nil
```

## Optional Handling 
It is basically ways in which we can get the actual value of Optional, means converting Optional String to String, Optional Int to Int and so on.

### If Else
We can use if else block to check if the optional has some value or it is nil
```
if name != nil {
    print("Name is \(name!)")
} else {
    print("No Name provided")
}
```
The ! means force unwraping, because at that point we know that name will have some value

### If Let Block
The If Let Block looks something like below
```
if let actualName = name {
    print("Name is \(actualName)")
} else {
    print("No Name provided");
}
```
It basically checks if the name variable has some value or not, if it has then the value is applied to newly created constant and can be accessed within if block

### Guard Statement
Usually use in functions, so that we can check if input is correct or not and if it is wrong then we can exit earlier.
```
func printName(name: String?) -> String {
    guard let actualName = name else {
        return "No Name Provided"
    }
    return "Name is \(actualName)"
}

var result = printName(name: nil)
print(result)
```

### Nil Coalescing
The ?? is a Nil Coalescing operator, basically we will have a possible optional value on the left side of ?? and default value on the right side of ??.
If the optional does have a value then that value will be applied, whereas if the optional is null then the default value will be applied
```
var someOptional: Int?
var output = someOptional ?? 42
print(output)
```

### Optional Chaining
Optional Chaining is used in cases where we want to access some members of the optional value. We can either use if let block to see if the value is present and then apply the method on it, or we can use directly optional chaining. optional chaining always returns an optional so that we can continue chaining.
```
func getData(_ num: Int) -> String? {
    if num == 1 {
        return "One"
    }
    return nil
}

var numName = getData(7)?.uppercased()

if numName != nil {
    print("Numname is \(numName!)")
} else {
    print("Enter Valid num")
}
```