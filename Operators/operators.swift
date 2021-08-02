// Basic Operations

var a = 12
var b = 4

print(a + b)
print(a - b)
print(a * b)
print(a / b)

// Modulo (Remainder)

print(15 % 5)
print(10 % 4)

// Compound Operator
var num = 5
num += 1 // 6
num *= 10 // 60

// Combining Operator

var num1 = 10
var num2 = 15

if(num1 > 10 && num2 > 10) {
    print("Both are greater")
}

if(num1 > 10 || num2 > 10) {
    print("Atleast one is greater")
    
}

// Ternary Operator

var isOdd = num1 % 2 == 0 ? true : false
print(isOdd)

// Range Operator

// Non Inclusive
for i in 1..<10 {
    print(i)
}

// Inclusive

for i in 1...10 {
    print(i)
}