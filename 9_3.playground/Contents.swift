func mean2(numbers: [Int] ) -> Double
{
    var sum = 0
    print("Sum is: ", sum)
    func meanCombine(num1: Int, num2: Int) -> Int
    {
        print("Num1 is: ", num1, "Num2 is: ", num2)
        return num1 + num2
    }
    
    print("Sum is: ", sum)
    sum = numbers.reduce(0, combine: meanCombine)
    print("Sum is: ", sum)
    return Double(sum) / Double(numbers.count)
}


var a = mean2([3,4,5,8])
print("The mean is: ", a)

func mean3 (numbers: [Int]) -> Double
{
    let sum = numbers.reduce(0, combine: { (num1: Int, num2: Int) -> Int in
            return num1 + num2
    })
    print("Sum is: ", sum, "Double Sum is: ", Double(sum), "Count is: ", numbers.count, "Double Count is: ", Double(numbers.count))
    return Double(sum) / Double(numbers.count)
}

var b = mean3([2,3,4,5,6,7])
print("The mean is: ", b)

func mean4 (numbers: [Int]) -> Double
{
    let sum = numbers.reduce(0, combine: { num1, num2 in
        return num1 + num2
    })
    return Double(sum) / Double(numbers.count)
}

var c = mean4([1,1,2,3])
print("The mean is: ", c)

func mean5 (numbers: [Int]) -> Double
{
    let sum = numbers.reduce(0, combine: { num1, num2 in num1 + num2
    })
    return Double(sum) / Double(numbers.count)
}

var d = mean5([7,7,11])
print("The mean is: ", d)

func mean6 (numbers: [Int]) -> Double
{
    let sum = numbers.reduce(0, combine: { $0 + $1})
    return Double(sum) / Double(numbers.count)
}

var e = mean6([10,11,12])
print("The mean is: ", e)

func mean7 (numbers: [Int]) -> Double
{
    let sum = numbers.reduce(0) { $0 + $1}
    return Double(sum) / Double(numbers.count)
}

var f = mean7([10,11,12])
print("The mean is: ", f)

func mean8 (numbers: [Int]) -> Double
{
    return Double(numbers.reduce(0) {$0 + $1}) / Double(numbers.count)
}

var g = mean8([10,11,12])
print("The mean is: ", g)


let x = [3,4,1,2,5]
let y = x.sort(<)

print(x, " -> ", y)

