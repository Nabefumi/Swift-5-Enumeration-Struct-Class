import UIKit

var greeting = "Problem2"
print(greeting)

struct Point {
    var x: Int
    var y: Int

    // reset method
    mutating func reset() -> Void {
        self.x = 0
        self.y = 0
    }

    func printPoint(pt point: Point) -> Void {
        print("[\(point.x), \(point.y)]")
    }
    
    static func average(_ points: [Point], _ character: Character)  -> Int? {
        if character == "x" {
            var resultX: Int = 0
            var sum: Int = 0
            points.map({ sum += $0.x })
            resultX = sum / points.count

            return resultX
            
        } else if character == "y" {
            var resultY: Int = 0
            var sum: Int = 0
            points.map({ sum += $0.y })
            resultY = sum / points.count
            
            return resultY
            
        } else {
            return nil
        }
    }
    
    static func vectorAverage(_ points: [Point]) -> Point {
        // define answer Point Structure
         var averagePoint: Point = Point(x: 0, y: 0)

        // calculate x-average by above static function
        if let averageOfX = average(points, "x") {
            averagePoint.x = averageOfX
        }
        // calculate y-average by above static function
        if let averageOfY = average(points, "y") {
            averagePoint.y = averageOfY
        }

        return averagePoint
    }
}

let point1 = Point(x: 5, y: 5)
let point2 = Point(x: 2, y: 4)
let point3 = Point(x: 10, y: 20)
let pointArrayList: [Point] = [point1, point2, point3]
let averagePoint: Point = Point.vectorAverage(pointArrayList)
averagePoint.printPoint(pt: averagePoint)

// - Let’s do some math:
// o Define a structure called point
// o Point has two integer variables called: x and y
// o Create a method called reset which set the x and y to 0
// o Define an instance method called printPoint, which takes a point and print its
// coordination in this format: the point is at coordinate [x,y] where x and y are the x
// and y coordination of the input point.
// o Define a static method called average which takes an array of points as well as a
// character. (so the method has 2 inputs). If the input charcter is ‘x’ then the
// function calculates the average of x coordination of all points in the array and
// returns it. Similarly if the input character is ‘y’ then it calculates the average of y
// coordination of the input points. If the character is not ‘x’ or ‘y’ then the function
// returns nil.
