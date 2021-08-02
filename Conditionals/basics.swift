// Basic If, else if, else Block
var luckyNum = 5
var guess = 5

if(guess == luckyNum) {
    print("You are correct")
} else if (luckyNum < guess) {
    print("Lucky Number is less than \(guess)")
} else {
    print("Lucky Number is greater than \(guess)")
}

// Nested If Else
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

// Switch
var age = 60

switch age {
    case 1...18:
        print("Under 18")
    case 19...60:
        print("Mid Age People")
    default:
        print("Retired People")
}
