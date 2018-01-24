func median( numbers: [Int]) -> Double
{
    if numbers.count % 2 == 0
    {
        return Double(Double(numbers.sort(<)[numbers.count / 2]) + Double(numbers.sort(<)[numbers.count / 2 - 1]))/2
    }
    else
    {
     return Double(numbers.sort(<)[numbers.count / 2])
    }
}

print("The median is: ", median([1,2,3,4,5,6]))
