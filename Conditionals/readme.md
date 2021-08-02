# Conditionals

## If, else if and else block
The below code is an example of if, else if and else block in swift
```
var luckyNum = 5
var guess = 5

if(guess == luckyNum) {
    print("You are correct")
} else if (luckyNum < guess) {
    print("Lucky Number is less than \(guess)")
} else {
    print("Lucky Number is greater than \(guess)")
}
```

## Nested If else block
If if else statements are neseted in another if or else block, then it is known as nested if else block, here is one of the example
```
var password = "helloThere"

if(password.count != 0) {
    if(password == "helloThere") {
        print("Logging you in")
    } else {
        print("Incorrect Password")
    }
} else {
    print("Please enter password")
}
```

## Switch Statement
Switch statement are use in such scenarios where we have lot of conditions to check, so instead of writing multiple if conditions we will write case. The default case runs when no case is true.
Also, the switch block behaves bit differently in swift as compared to other languages like JS, you don't need to write break after each case, that is the default behaviour in swift.
In case if we want such behaviour, we will have to use the ```fallthrough``` so that the next case code will run too regardless the condition is true or not
```
var age = 60

switch age {
    case 1...18:
        print("Under 18")
    case 19...60:
        print("Mid Age People")
    default:
        print("Retired People")
}
```

## Loops

### For in loop
For in loop is use to iterate over arrays, strings and ranges. It is similar to that of for of loop in JS when iterating over array and strings.
```
var languages = ["Java", "JavaScript", "HTML", "CSS"]

for lang in languages where lang != "HTML" {
    print(lang)
}

// Looping a Range

for i in 1...6 {
    print(i)
}

// Stride Function

for v in stride(from: 3, to: 10, by: 3) {
    print(v)
}
```

Stride function is use when we want to jump our iterator by multiple values at a time.

### While Loop
Same as JS
```
var counter = 1
while (counter <= 10) {
    print(counter)
    counter += 1
}
```

### Repeat While
Same as do while loop in JS, only replace do block with repeat block
```
var count = 1
repeat {
    print(count)
    count += 1
} while (count <= 10)
```

## Break
Break keyword is use to break out of loop. If break is present in nested loop, then it will break the nested loop. If you want to break outer loop, you will need to use labelled loop.
```
// Break
outerloop: for i in 1...3{
  innerloop: for j in 1...3 {
    if j == 3 {
      break
    }
    print("i = \(i), j = \(j)")
  }
  print("Done 1 Iteration")
}

// Label Break
outerloop: for i in 1...3{
  innerloop: for j in 1...3 {
    if j == 3 {
      break outerloop
    }
    print("i = \(i), j = \(j)")
  }
  print("Done 1 Iteration")
}
```

## Continue
Continue statement is use to skip an iteration while looping, similar to that of break keyword if it is used in nested loop, it will skip iteration of nested loop.
If we want to skip outer loop, we will have to use labelled continue
```
//Continue
outerloop: for i in 1...3{
  innerloop: for j in 1...3 {
    if j == 3 {
      continue
    }
    print("i = \(i), j = \(j)")
  }
  print("Done 1 Iteration")
}

// Label Continue
outerloop: for i in 1...3{
  innerloop: for j in 1...3 {
    if j == 3 {
      continue outerloop
    }
    print("i = \(i), j = \(j)")
  }
  print("Done 1 Iteration")
}
```

## Guard 
Guard is similar to that of if condition, but the difference is that if condition block will run if the condtion is true, where guard block runs if the guard condtion is false.
```
var i = 0;
while(i < 10) {
    guard i % 2 == 0 else {
        i += 1
        continue
    }
    print("\(i) is even number")
    i += 1
}
```

If you have multiple guard statements, then we have to use **comma ,** to seperate them.
