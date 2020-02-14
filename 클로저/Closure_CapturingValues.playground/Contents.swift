import UIKit


func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementer
}


let incrementByTen = makeIncrementer(forIncrement: 10)

incrementByTen()
incrementByTen()
incrementByTen()
incrementByTen()

let incrementBySeven = makeIncrementer(forIncrement: 7)

incrementBySeven()
incrementBySeven()

incrementByTen()

let alsoIncrementByTen = incrementByTen

alsoIncrementByTen()

