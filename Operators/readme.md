# Operators

## Basic Operators
It includes addtion, subraction, multiplication and division
```
var a = 12
var b = 4

print(a + b) // 16
print(a - b) // 8
print(a * b) // 48
print(a / b) // 3
```

## Modulo Operator
It will return the remainder

```
print(15 % 5) // 0
print(10 % 4)  // 2
```

## Compound Operators
Shorthand operators for doing basic operations, like below
```
var num = 5
num += 1 // 6
num *= 10 // 60
```

## Combinational Operators
### AND
AND operator will return true if all the conditions are true
```
var num1 = 10
var num2 = 15

if(num1 > 10 && num2 > 10) {
    print("Both are greater")
}
```

### OR
OR operator will return true if any one condition is true
```
var num1 = 10
var num2 = 15

if(num1 > 10 || num2 > 10) {
    print("Atleast one number is greater")
}
```

## Ternary Operator
Basically like writing if else statement in one line. The syntax is as follows
```
condition ? Runs if condition is true : Runs if condition is false 
```
Example
```
var isOdd = num1 % 2 == 0 ? true : false
print(isOdd)
```

## Range Operator
Similar to that of range function in Python. There are 2 types inclusive and exclusive
```
// Inclusive
for i in 1...10 {
    print(i)  Prints from 1 to 10
}

// Exclusive
for i in 1..<10 {
    print(i)  Prints from 1 to 9
}
```