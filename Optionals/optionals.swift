var name: String? = "Akshay"

// Optional Handling 
// If Else Statement
if name != nil {
    print("Name is \(name!)")
} else {
    print("No Name provided")
}

// If let Block

if let actualName = name {
    print("Name is \(actualName)")
} else {
    print("No Name provided");
}

// Guard Statement

func printName(name: String?) -> String {
    guard let actualName = name else {
        return "No Name Provided"
    }
    return "Name is \(actualName)"
}

var result = printName(name: nil)
print(result)

// Nil Coalescing

var someOptional: Int?
var output = someOptional ?? 42
print(output)

// Optional Chaining

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