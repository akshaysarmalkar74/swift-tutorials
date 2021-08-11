# Classes

Class are basically blueprints from which we can generate various objects. They are similar to Structs but have some difference
- Struct are of Value type whereas classes are Reference Type
- Struct directly have memberwise initializer, classes don't have.
- Classes can inherit from other classes whereas Struct cannot

## Declaring a Class
```
class Singer {
    var name: String
    var numOfSongs: Int
    
    init(name: String, numOfSongs: Int) {
        self.name = name
        self.numOfSongs = numOfSongs
    }
    
    func printData() {
        print("My name is \(name) and I have sang \(numOfSongs) songs")
    }
}

var singer1 = Singer(name: "Green Day", numOfSongs: 122)
singer1.printData()
```

## Inheritance
We can inherit properties and methods from parent Class, so that we don't have to write repetative code.
An example of Inheritance is below, it will inherit memberwise init func too
```
class Singer {
    var name: String
    var numOfSongs: Int
    
    init(name: String, numOfSongs: Int) {
        self.name = name
        self.numOfSongs = numOfSongs
    }
    
    func printData() {
        print("My name is \(name) and I have sang \(numOfSongs) songs")
    }
}

class CountrySinger: Singer {
    override func printData() {
        print("I am a Country Singer")
    }
}

var singer1 = Singer(name: "Green Day", numOfSongs: 122)
var singer2 = CountrySinger(name: "Hello", numOfSongs: 120)
singer1.printData()
singer2.printData()
```

Example 2
```
class Singer {
    var name: String
    var numOfSongs: Int
    
    init(name: String, numOfSongs: Int) {
        self.name = name
        self.numOfSongs = numOfSongs
    }
    
    func printData() {
        print("My name is \(name) and I have sang \(numOfSongs) songs")
    }
}

class CountrySinger: Singer {
    override func printData() {
        print("I am a Country Singer")
    }
}

class StatsSinger: Singer {
    var numOfHits: Int
    
    init(name: String, numOfSongs: Int, numOfHits: Int) {
        self.numOfHits = numOfHits
        super.init(name: name, numOfSongs: numOfSongs)
    }
    
    override func printData() {
        print("I have \(numOfHits) hit songs")
    }
}

var singer1 = Singer(name: "Green Day", numOfSongs: 122)
var singer2 = CountrySinger(name: "Hello", numOfSongs: 120)
var hitSinger = StatsSinger(name: "Apple", numOfSongs: 100, numOfHits: 64)
singer1.printData()
singer2.printData()
hitSinger.printData()
```

## Final Keyword
Final keyword is use when we don't want any class to get extended.

```
final class Person {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func printData() {
        print("My name is \(name) and I am \(age) years old")
    }
}

class Athlete: Person {
    var isAthletic: Bool = true
}
```

In the above example the Athlete class won't work because we are extending from a final class

## Copy Object
When we copy an instance of a class, and we change the property of copy then the original one also get changed.The reason is Class is of Reference type in Swift, so when we copy an Instance the reference gets copied not the individual properties and methods

## Deinit
One more difference between Struct and Class is that Class have a deinit func, which will be called when the class is destroyed
```
final class Person {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func printData() {
        print("My name is \(name) and I am \(age) years old")
    }
    
    deinit {
        print("\(name) instance is destroyed")
    }
}


for i in 1...3 {
    let person = Person(name: "Apple \(i)", age: 12)
    person.printData()
}
```

## Mutability
If instance of a class is allotted to constant then we can still change the properties of that instance as long as they are declare with var keyword. In struct we cannot do that, if we want to do that in Struct we will need to use ```mutating``` keyword.
If we don't want properties of instance to change, we can declare those properties as const.
For [More Info](https://www.hackingwithswift.com/sixty/8/7/mutability)

## Designated Initialzers and Convenience Initializers
Designated are normal Intializers which make sure that the Object is ready to use.
Convenience Initializers are those which are use to add custom code. They also called designated initializers so that the object is ready.
We declare Convenience Initializers by having ```convenience``` keyword before init.

## Polymorphism and TypeCasting
Polymorphism means existing in different forms. Like If a Class B extends from Class A, then the Class B can be also called as either of Class A type or Class B type
Type casting is a way to check the type of an instance, or to treat that instance as a different superclass or subclass from somewhere else in its own class hierarchy.
2 Ways
- as? which means it can be or cannot be
- as! it is of that specific type if not then the app will crash

```
class Album {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func getData() {
        print("\(name) did not sell a lot")
    }
}

class LiveAlbum: Album {
    var location: String
    
    init(name: String, location: String) {
        self.location = location
        super.init(name: name)
    }
    
    override func getData() {
        print("\(name) did a lot")
    }
}

class StudioAlbum: Album {
    var studio: String
    
    init(name: String, studio: String) {
        self.studio = studio
        super.init(name: name)
    }
    
    override func getData() {
        print("\(name) did  great")
    }
}

var apple = LiveAlbum(name: "Apple", location: "California")
var banana = StudioAlbum(name: "Banana", studio: "China")
var cat = StudioAlbum(name: "Cat", studio: "India")

var array: [Album] = [apple, banana, cat]

for album in array {
    if let sAlbum = album as? StudioAlbum {
        print(sAlbum.studio)
    } else if let lAlbum = album as? LiveAlbum {
        print(lAlbum.location)
    }
}
```