let i = 0;
while(i < 10) {
    guard i % 2 == 0 else {
        i += 1
        continue
    }
    print("\(i) is even number")
    i += 1
}