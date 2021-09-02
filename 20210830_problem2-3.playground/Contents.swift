import UIKit

var greeting = "Ploblem3"

enum Calculator{
    case sum
    case subtraction
    case multiplication
    case division
}

func calculate(opt: Calculator, num1: Int, num2: Int) -> Int{
    switch opt {
    
    case .sum:
        return num1 + num2
        
    case .subtraction:
        return num1 - num2
    
    case .multiplication:
        return num1 * num2
    
    case .division:
        return num1 / num2
        
    default:
        print("NO numbers")
    }
}

print(calculate(opt: Calculator.sum, num1:1, num2:2))
print(calculate(opt: Calculator.subtraction, num1:10, num2:2))
print(calculate(opt: Calculator.multiplication, num1:10, num2:2))
print(calculate(opt: Calculator.division, num1:10, num2:5))

// - Define an enum called Calculator with 4 cases:
// o Sum, Subtraction, Multiplication and Division
// o The cases have an associated value which is of type (Int, Int)-> Int
// o Create a static method called calculate for the enum Calculator which takes three
// input parameters:
// § num1: An integer
// § num2: An integer
// § opt: A Calculator enum
// o This function uses a switch statement based on the opt and each case return the
// result of calling the function which is the associated value of the case. For
// instance if the opt is Sum, the function will calculate the sum of the two input
// integers (num1 and num2)
// o Test: Write some test cases to test the enum and calling the calculate method.
