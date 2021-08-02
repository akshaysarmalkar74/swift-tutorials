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
