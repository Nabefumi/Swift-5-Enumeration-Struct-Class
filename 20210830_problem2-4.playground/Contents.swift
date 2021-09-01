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
