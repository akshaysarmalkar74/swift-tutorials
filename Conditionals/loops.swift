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

// While Loop

var counter = 1
while (counter <= 10) {
    print(counter)
    counter += 1
}

// Repeat While Loop

var count = 1
repeat {
    print(count)
    count += 1
} while (count <= 10)