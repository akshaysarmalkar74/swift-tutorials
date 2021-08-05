# Enums
Enums are use for basically grouping related values.

## Declaring an Enum
```
enum SocialMedia {
    case Facebook 
    case Instagram 
    case Twitter 
    case Reddit 
}

```

Using an Enum in Function
```
func printSocialMedia(on platform: SocialMedia) {
    switch platform {
        case .Facebook:
            print("I am on Facebook")
        case .Instagram:
            print("I am on Instagram")
        case .Twitter:
            print("I am on Twitter")
        case .Reddit:
            print("I am on Reddit")
    }
}
```

## Raw Values
The = sign in enums is use for giving a raw value. The default is the index means first element will have a raw value of 0, second will have 1 and so on.
Giving Raw Values
```
enum SocialMedia: String, CaseIterable {
    case Facebook = "Not Active Currently"
    case Instagram = "Not Want to use now"
    case Twitter = "Sometimes"
    case Reddit = "All the time"
}

```

## CaseIterable
The CaseIterable is used so that we can loop of all the cases, also we can count the number of cases present in an enum.
```
for platform in SocialMedia.allCases {
    getOpinion(of: platform)
}
```


## Associate Values
Associate Values means we can have certain cases triggered on only if certain conditions are met (Not all cases needs to have associate values). We need to either use if statement or we can use the where clause
```
enum Actions {
    case running(speed: Int)
    case sleeping
    case eating(calories: Int)
}

func getData(task: Actions) {
    switch task {
        case .running(let speed) where speed > 10:
            print("You run very quickly")
        case .eating(let calories) where calories < 1000:
            print("Looks like you are on diet!")
    
        case .eating, .running: 
            print("This is what my everyday looks like")
        case .sleeping:
            print("DND")
    }   
}

getData(task: .eating(calories: 202))
```