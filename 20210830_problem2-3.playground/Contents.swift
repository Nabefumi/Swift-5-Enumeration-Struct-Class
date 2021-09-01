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



