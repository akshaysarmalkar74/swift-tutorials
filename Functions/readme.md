# Functions
Functions are block of code that can be used again and again, whenever there is need.

## Declaring a function
```
// Declare a function
func greet() {
    print("Hello, there!")
}

greet()

// Func with arguments
func greet2(name: String) {
    print("Hello, there \(name)!")
}
```

## Return a value with func
Just add a slim arrow and a return type, to return a value. You can also have mutiple return values just seperate them using ,
```
func add(num1: Int, num2:Int) -> Int {
    return num1 + num2
}

var sum = add(num1: 4, num2: 5)
print(sum)
```

## Default Parameters
Same as JS
```
func sub(num1: Int = 0, num2:Int = 0) -> Int {
    return num1 - num2
}

var diff = sub()
print(diff)
```

## Labelled Arguments
Labelled Arguments are used to make our code more readable
```
func multiplication(of num1: Int = 1, and num2: Int = 1) -> Int {
    return num1 * num2
}

print(multiplication(of: 4, and: 6));
```

## Omit Arguments
In case if you don't need to external arguments, you can use _ in place of external argument name
```
funfunc sum2(_ a: Int, _ b: Int) {
  print("Sum:", a + b)
}

sum2(2, 3)c sum2(_ a: Int, _ b: Int) {
  print("Sum:", a + b)
}

sum2(2, 3)
```

## Variable number or Arguments
Same as rest operator in JS, only difference is we have to specify the name of argument while calling which is same for all func in Swift
```
func sum3( numbers: Int...) {

  var result = 0
  for num in numbers {
    result = result + num
  }
  print("Sum = \(result)")
}

sum3(numbers: 1,2,6)
```

## Inout Parameters
Inout parameters are those which are passed to function and we want to change the value of parameter in function. By default, arguments are considered to be declare by ```let``` so we cannot change it directly. Also the function can change the value and writes new value to the variable that is passed as argument.
```
func changeName(name: inout String) {
  if name == "Ross" {
      name = "Joey"
  }
}

var userName = "Ross"
print("Before: ", userName)
changeName(name: &userName)

print("After: ", userName)
```

## Others
- Functions can be nested, and it is same as JS function nesting
- You can also return function from another function, just change the return type to func (same syntax)


## Function Overloading
Function Overloading means a function can produce different results based on different arguments. Means if user passes string then it will return different result as compared to that of when user passed Int.
3 Ways in which Function Overloading can acheive
- Different arguments types are use for arguments like String and Int
- Diffent number of parameters are used like one function takes 1 Int, other function takes 3 Int
- Based on arguments labelling