func square(num: Int) -> Int
{
    return num * num
}

func mapElement(inArray arr: [Int], withFunc aFunc: (Int) -> Int) -> [Int]
{
    var returnArray = [Int]()
    for num in arr
    {
        print(num)
        returnArray.append(aFunc(num))
        print(returnArray)
    }
    
    return returnArray
}

let firstArray = [1,2,3,4,5]
let secondArray = mapElement(inArray: firstArray, withFunc: square)