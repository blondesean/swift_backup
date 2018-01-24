var optStr: String? //optional, explicit
optStr = "I'm an optional string"
let unwrappedstring = optStr!
print(unwrappedstring)

var optionalString: String? ;

if let unwrappedString = optionalString
{
    print("unwrapped string is not nil, and equals \(unwrappedString)")
}
else
{
   print("optional string contains nil")
}

print("----------------------------")

var implicitInt: Int! //implict (don't need to unwrap (intended to never be nil after initialized

print("----------------------------")

var optStr1: String?
optStr1 = "Forced Unwrapped"
let unwrappedString1 = optStr1!
print(unwrappedString1)

print("----------------------------")

let optionalA: String? = "Hello"
let resultA = optionalA ?? "Hi" //coelesce with nil value
print(resultA)

let optionalB: String? = nil
let resultB = optionalB ?? "Hi"
print(resultB)

print("----------------------------")

var user: String?
var pass: String?
var login = true

user = "esean"
pass = "puppies1"

if login, let unwrapuser = user where unwrapuser.characters.count >= 5 && unwrapuser.hasPrefix("e"), let unwrappass = pass where unwrappass.characters.count >= 8
{
    print("\(unwrapuser) and \(unwrappass) are valid")
}
else
{
    print("Please enter valid input")
}