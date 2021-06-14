/* This program generates random numbers
   and figures out the max and the min.

   Sean McLeod
   2021/05/01
*/

func maxCalculator(randomSet: [Int]) -> Int {
    // This function calculates max
    var max = randomSet[0]

    for randomNumber in randomSet {
        if randomNumber > max {
            max = randomNumber
        }
    }
    // return parameter
    return max
}

func minCalculator(randomSet: [Int]) -> Int {
    // This function calculates max
    var min = randomSet[0]

    for randomNumber in randomSet {
        if randomNumber < min {
            min = randomNumber
        }
    }
    // return parameter
    return min
}

let low:Int = 0
let high:Int = 99
let arraySize:Int = 9
// empty array
var randomSet = [Int]()

for _ in 0...arraySize {
    // generate random number
    let randomNumber = Int.random(in: low..<high + 1)
    randomSet.append(randomNumber)

    print(randomNumber)
}

// pass & accept parameters
let maxValue = maxCalculator(randomSet: randomSet)
let minValue = minCalculator(randomSet: randomSet)
// output
print("\nmax number is: \(maxValue)")
print("\nmin number is: \(minValue)")
