enum SocialMedia: String, CaseIterable {
    case Facebook = "Not Active Currently"
    case Instagram = "Not Want to use now"
    case Twitter = "Sometimes"
    case Reddit = "All the time"
}

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

printSocialMedia(on: .Instagram)

// Raw Value
func getOpinion(of platform: SocialMedia) {
    print(platform.rawValue)
}

getOpinion(of: .Facebook)

// Case Iterable
for platform in SocialMedia.allCases {
    getOpinion(of: platform)
}

// Associate Values
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