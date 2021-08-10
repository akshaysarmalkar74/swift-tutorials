struct Person {
    var clothes: String
    var shoes: String
    
    func printData() {
        print("I am wearing \(clothes) with \(shoes)")
    }
}


var person1 = Person(clothes: "shirt", shoes: "Floaters")
person1.printData()

// Property Observer

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


// Computed Properties

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

// Static Properties

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

// Lazy Property

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

// Methods
// Methods are basically functions which are present in Struct, Classes. They can change the data or show the data.
