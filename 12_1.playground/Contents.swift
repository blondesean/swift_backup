enum grades
{
    case kindergarten, first, second, third
    case fourth, fifth
}


enum grades1: Int
{
    case kindergarten, first, second, third
    case fourth, fifth
}


enum grades2: String
{
    case Kindergarten = "K", First = "1st", Second = "2nd", Third = "3rd"
    case Fourth = "4th", Fifth = "5th"
}

let thirdgrade = grades.third

print(thirdgrade)

let fourthgrade = grades1.fourth
let secondgrade = grades1(rawValue: 2)
let firstgrade = grades1.first.rawValue

print(fourthgrade.rawValue)
print(secondgrade!)
print(firstgrade)

let fifthgrade = grades2(rawValue: "5th")

print(fifthgrade!)

enum phonenumber
{
    case TollFree(Int, Int, Int)
    case InternalExtension(Int)
}

var customerservice = phonenumber.TollFree(800, 555, 1212)
var customerservice1 = phonenumber.InternalExtension(1234)

print(customerservice)


switch customerservice
{
case .TollFree(_,_, let ext):
    print("Toll-free number, extension: \(ext)")
case .InternalExtension(let ext):
    print("Internal extension: \(ext)")
}

///////////////////////////////////

let studentgrade = grades.first

switch studentgrade
    
{
    
case .kindergarten:
        print("Welcome to Kindergarten")
case .first:
        print("First grade will be awesome")
case .second:
        print("You're goingto be in second grade? You must be smart.")
case .third:
        print("You'll master multiplcation in third grade!")
case .fourth:
        print("Fourth grade spelling bee tryouts, first day!")
case .fifth:
        print("Fifth graders rule the school")
    
}

////////////////////////////////////

enum STYOptional<T> /* lol wut */
{
    case None
    case Some(T)
}

enum Result
{
    case Success(String)
    case Failure(Int)

    func description() -> String
    {
        switch self
        {
        case .Success(let value):
            return "Sucessful. Value: \(value)"
        case .Failure(let value):
            return "Failed. Error code: \(value)"
        }
    }
}

var results = Result.Success("Response from web service successful!")
print(results.description())

results = .Failure(404)
print(results.description())

