//: Playground - noun: a place where people can play

import UIKit

infix operator ** { associativity left precedence 170 }

func ** (num: Double, power: Double) -> Double{
    return pow(num, power)
}

var str = "Hello, playground"

var x = 1

while ( x <= 10)
{
    var x2 = Int(pow(Double(x),Double(2)))
    
    print("X was = to ", x, " so the value is ", x2)
    
    x += 1
}