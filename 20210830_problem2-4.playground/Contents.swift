import UIKit

var greeting = "Problem4"

class Search {
    var arr: [Int] = []
    
    func reset() -> Void {
        arr = []
        print("hello instance")
    }
    
    func randomFill() -> Void{
        let randomIntNum = Int.random(in: 1..<10)
        arr.append(randomIntNum)
    }
    
    static func linearSearch(of list: [Int], _ checkForValue: Int) -> Bool {
        for searchingForValue in list {
            if searchingForValue == checkForValue {
                return true
                print("There is a number", searchingForValue)
            }
        }
        return false
    }
}

var search = Search()
search.randomFill()
print(search.arr)
print(Search.linearSearch(of: search.arr, 5))

// - Create a class called Search which has an array of numbers as its instance variable.
// - Create an instance method for this class called, reset which create an empty array and
// return void.
// - Create an instance method for this class called randomFill which generates 10 random
// Integer and add them to the array of numbers and returns void (which is the instance
// variable of the class).
// - Create a static method called linearSearch which takes a list of Integer and a number. It
// check whether the number exist in the list of not.
