import Cocoa

let intArray = [1,232,24,3,241,252,42,13,21,4,124,1,2521,23]
let sum = 255

func twoSum(nums : [Int], target : Int) -> [Int] {
    var dict = [Int : Int]()
    for (index, number) in nums.enumerated() {
        if let tryIndex = dict[target - number] {
            return ([tryIndex, index])
        }
        dict[number] = index
    }
    fatalError("No Match")
}
twoSum(nums: intArray, target: sum)
