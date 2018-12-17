var intArray = [1,232,4,5,6,4,45,2,32,2,23,22]
var sum = 254

func twoSum (nums : [Int], target : Int) -> [Int] {
    var dictOfNumAndIndex = [Int : Int]()
    for (index, num) in nums.enumerated() {
        if let tryNewIndex = dictOfNumAndIndex[target - num] {
            return ([tryNewIndex, index])
        }
        dictOfNumAndIndex[num] = index
    }
    fatalError("No Match")
}
twoSum(nums: intArray, target: sum)
