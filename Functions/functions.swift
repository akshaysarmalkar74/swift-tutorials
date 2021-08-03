// Declare a function

func greet() {
    print("Hello, there!")
}

greet()

// Func with arguments

func greet2(name: String) {
    print("Hello, there \(name)!")
}


greet2(name: "Akshay")

// Func with return

func add(num1: Int, num2:Int) -> Int {
    return num1 + num2
}

var sum = add(num1: 4, num2: 5)
print(sum)


// Default Parametes

func sub(num1: Int = 0, num2:Int = 0) -> Int {
    return num1 - num2
}

var diff = sub()
print(diff)

// Labelled Arguments
func multiplication(of num1: Int = 1, and num2: Int = 1) -> Int {
    return num1 * num2
}

print(multiplication(of: 4, and: 6));

// Omit Labels
func sum2(_ a: Int, _ b: Int) {
  print("Sum:", a + b)
}

sum2(2, 3)

// Variable number of parameters
func sum3( numbers: Int...) {

  var result = 0
  for num in numbers {
    result = result + num
  }
  
  print("Sum = \(result)")
}

sum3(numbers: 1,2,6)

// Inout parameter
func changeName(name: inout String) {
  if name == "Ross" {
      name = "Joey"
  }
}

var userName = "Ross"
print("Before: ", userName)
changeName(name: &userName)

print("After: ", userName)