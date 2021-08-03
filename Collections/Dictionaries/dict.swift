// Dictionary

var person: [String: Any] = [
"name": "Akshay",
"age": 22,
"favNum": 74
]

print(person)


// Add New Values

person["isProgrammer"] = true
print(person)

// Change Values
person["favNum"] = 23
print(person)

// Get Keys
let keys = Array(person.keys)
print(keys)

// Get Values
let values = Array(person.values)
print(values)

// Loop
for (key, val) in person {
    print("\(key): \(val)")
}

// Remove Value
let removedVal = person.removeValue(forKey: "favNum")
print(type(of: removedVal))
print(person)


// Remove All
person.removeAll()
print(person)