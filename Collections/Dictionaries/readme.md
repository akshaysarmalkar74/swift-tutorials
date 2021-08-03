# Dictionary
Dictionary is basically Hash Table, Object in Js. Below is the way we declare a Dictionary in Swift
```
var person: [String: Any] = [
"name": "Akshay",
"age": 22,
"favNum": 74
]

print(person)
```

## Insert Value
Inserting a Value in Dictionary is same as we do in JS
```
person["isProgrammer"] = true
print(person)
```

## Update Value
Same as JS
```
person["favNum"] = 23
print(person)
```

## Get Keys of Dictionary
We can get keys of a particular dictionary in the below manner
```
// Array(<dictionaryName>.keys)
let keys = Array(person.keys)
print(keys)
```

## Get Values of Dictionary
We can get values of particular dictionary in the below manner
```
// Array(<dictionaryName>.values)
let values = Array(person.values)
print(values)
```

## Looping through the dictionary
If you just want to access keys, then use only 1 variable or else you can use tuple (collection of variables), 2 in this case.
```
for (key, val) in person {
    print("\(key): \(val)")
}
```

## Remove Value
You can either set value to ```nil```, or use the removeValue method.
Method 1
```
person["favNum"] = nil
```
Method 2
```
let removedVal = person.removeValue(forKey: "favNum")
print(type(of: removedVal))
print(person)
```

## Remove all keys
To remove all keys, use the removeAll method
```
person.removeAll()
print(person)
```