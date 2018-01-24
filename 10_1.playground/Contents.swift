import Foundation

struct Point
{
    var x: Double
    var y: Double
    
    func distance(point point: Point) -> Double
    {
        let a = abs(self.x - point.x)
        let b = abs(self.x - point.x)
        
        let c = sqrt(a * a + b * b)
        return c
    }
}

let pointA = Point(x: 1.0, y: 2.0)
let PointB = Point(x: 4.0, y: 6.0)
let c = pointA.distance(point: PointB)


class Circle
{
    var radius: Double = 0.0
    
    func diameter() -> Double
    {
        return 2 * radius
    }
    
    func area() -> Double
    {
        return M_PI * radius * radius
    }
}

var circle = Circle()
circle.radius = 5.0
print("Circle Diamter: \(circle.diameter()), area: \(circle.area)))")

///////////////////////////////////////////

var copyA = pointA
copyA.x = 12.0

print("Point A is: ", pointA, "copy is:", copyA)

var circle2 = circle
var circle3 = Circle()
circle3.radius = 5.0

print("Circle 1 and circle 2 are the same: ", circle === circle2)
print("Circle 1 and circle 3 are the same: ", circle === circle3)

print ("Circle radius is ", circle.radius)
circle2.radius = 10
print("Changing circle 2's radius changed circle's radius to ", circle.radius)
