# Struct
Struct are groups of variables (properties) and functions (methods). They are similar to Classes, but Classes have some extra functionality. init() is called when we call the Struct same as Classes.

## Deckaring a Struct
We declare Struct in the below manner
```
struct Person {
    var clothes: String
    var shoes: String
    
    func printData() {
        print("I am wearing \(clothes) with \(shoes)")
    }
}


var person1 = Person(clothes: "shirt", shoes: "Floaters")
person1.printData()
```

In the above code person can have a clothes property and shoes property.
It also has printData method which is use for printing the data.

## Property Observer
In Swift, we can set observer to properties, means we can set which code will run before a property value changes (willSet) also, we can set code which will run after a property value is changed (didSet)
```
struct Person {
    var clothes: String {
        willSet {
            print("Changing clothes - From \(clothes) to \(newValue)")
        }
        didSet {
            print("Changed clothes - From \(oldValue) to \(clothes)")
        }
    }
}

var person2 = Person(clothes: "Shirts");
person2.clothes = "T Shirts"
```

## Computed Properties
Computed properties are those properties whose value is dynamic, it will change based on some other property or some variable something like below
```
struct Person {
    var age: Int
    var ageInDogYears: Int {
        get {
            return age * 7
        }
    }
}

var person3 = Person(age: 10);
print(person3.age);
print(person3.ageInDogYears)
```

## Static Properties
Static Properties are those which are present on the struct itself means on the blueprint not on the individual instances, something like below
```
struct Person {
    static var age = 15

    var firstName: String
    var lastName: String
    
    func printData() {
        print("Hello, I am \(firstName) \(lastName)")
    }
}

var person = Person(firstName: "Akshay", lastName: "Sarmalkar")
print(Person.age)
```

## Lazy Property
We might have some values which require time to generate or we require them at some point only not at the point we initiate a new instance. For such scenario, we can declare a property as lazy property.
Lazy property will get calculated when the user first accesses the property or changes the property.
```
struct FamilyTree {
    init() {
        print("This is my Family Tree")
    }
}

struct Person {
    var name: String
    lazy var familyTree = FamilyTree()
    
}

var person = Person(name: "Akshay")
print(person.familyTree)
print(person.familyTree)
```

## Methods
Methods are basically functions which are present in Struct, Classes. They can change the data or show the data.
Strings, arrays are all of Struct Type, where they have some properties and methods which are used to show or manipulate the data present in them.