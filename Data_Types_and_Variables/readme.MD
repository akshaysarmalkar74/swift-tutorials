# Variables, Constants and Literals

## Variables
In swift variables are declare using ```var``` keyword same as we declare in JS(old way).
```
var fName = "Akshay"
print(fName) // Akshay
```
The value of such variables can be changed, in the below manner
```
fName = "Notorious"
print(fName) // Notorious
```

You can also only declare the variable type, rather than giving it a value and then give it value at some other time. (Type annotation). Basically we are specifying what type of value will be store in that variable
```
var fName: String
fName = "Akshay"
print(fName)
```

You can also state the type of data it will hold and also give a value on the same line itself, something like below
```
let fName: String = "Akshay"
print(fName)
```

## Constants

In Swift, we declare constants using the ```let``` keyword.
```
let pi = 3.14
```
Once a value is declare using constant, we cannot change it i.e the below code would result into an error
```
let pi = 3.14
pi = 3.142 // Error
```


## Literals
I think of literals as they are the value that we give to constants. They can be of any type string, bool, numbers and so on. In the below example
```
let pi = 3.14
// 3.14 is the literal (double in this case)
```
For [More Info](https://www.programiz.com/swift-programming/variables-constants-literals)


# Data Types

- Character
- Int
- String
- Float
- Double
- Bool

## Character
It is used to store a single character
```
var initialChar: Character
initialChar = "A"
print(initialChar)
```

If we try to store more than 1 character, it will result into an error.

## Int
Int includes all the Integers. They can be 0, negative or positive.

```
var someNum: Int
someNum = 43
print(someNum)
someNum = -32
print(someNum)
```

## String
String are basically group of characters, they can be empty too.

```
var fName = "Akshay"
var lName = "Sarmalkar"
print(fName)
print(lName)
```

## Float
Float is use to store Decimal Numbers, but the precision is less as compared to Double.
```
var someFloat: Float
someFloat = 3.13432
print(someFloat)
```

## Double
Double is use to store Decimal Numbers, but precision is higher than Float.
Also, if we declare variable and give decimal number to it, then it will be **Double** not **Float**

```
var someDbl = 3.2111
var anotherDbl: Double
anotherDbl = 332.1321
```

## Bool
Bool stands for Boolean. It holds only true or false values.
```
var isAvailable = true
print(isAvailable)
isAvailable = false
print(isAvailable)
```

## Get Datatype of Variable
We can use type function to get what type of value does the variable holds, similar to that of `typeof` function in JS
```
type(of: <variable>)
print(type(of: someDbl))
```

For [More Info](https://www.programiz.com/swift-programming/data-types)

# String Interploation

String Interpolation is quite similar to Template Strings in JS. All we have to do is replace `${JsExpression}` with `\(SwiftExpression)`. 
```
var fName = "Akshay"
var lName = "Sarmalkar"
print("My full name is \(fName) \(lName)")
```