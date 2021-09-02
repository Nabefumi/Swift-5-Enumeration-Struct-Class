import UIKit

var greeting = "Problem5"
print(greeting)

//    o firstName
//    o lastName
//    o address
//    o Year of birth
//    o gpa
    
struct Student{

    var firstName: String
    var lastName: String
    var address: String
    var yearOfBirth: Int
    var gpa: Int
    
    init(firstName: String, lastName: String, address: String, yearOfBirth: Int, gpa: Int) {
        self.firstName = firstName
        self.lastName = lastName
        self.address = address
        self.yearOfBirth = yearOfBirth
        self.gpa = gpa
    }
    
    func printStudent() -> Void{
            print("First Name: \(self.firstName), Last Name: \(self.lastName), Address:  \(self.address), Year of Birth:  \(self.yearOfBirth), GPA: \(self.gpa)")
    }
}

class Classroom{
    var arrayOfStudents: [Student] = []
    func getHighestGpa() -> Void {
        var maxGPAIndex = 0
        for (index, value) in arrayOfStudents.enumerated() {
            if value.gpa > arrayOfStudents[maxGPAIndex].gpa {
                maxGPAIndex = index
            }
        }
        let highestStudent = arrayOfStudents[maxGPAIndex]
        highestStudent.printStudent()
    }
}
    
var generateList: [Student] = []
let test1 = Student(firstName: "Canada", lastName: "Vancouver", address: "123456789", yearOfBirth: 20210803, gpa: 1)
let test2 = Student(firstName: "Japan", lastName: "Tokyo", address: "111111111", yearOfBirth: 20002020, gpa: 3)
let test3 = Student(firstName: "USA", lastName: "Washington", address: "00000000", yearOfBirth: 20220111, gpa: 1)
let test4 = Student(firstName: "Japan", lastName: "Osaka", address: "77777777", yearOfBirth: 19920607, gpa: 4)
let test5 = Student(firstName: "Canada", lastName: "Toronto", address: "987654321", yearOfBirth: 19980909, gpa: 5)
let test6 = Student(firstName: "France", lastName: "Paris", address: "55555555", yearOfBirth: 20200101, gpa: 6)
let test7 = Student(firstName: "Korea", lastName: "Seoul", address: "3333333", yearOfBirth: 19911009, gpa: 7)
let test8 = Student(firstName: "China", lastName: "CH", address: "11111111", yearOfBirth: 20022020, gpa: 8)
let test9 = Student(firstName: "Russia", lastName: "RS", address: "66666666", yearOfBirth: 20210803, gpa: 9)
let test10 = Student(firstName: "Spain", lastName: "Madrid", address: "888887765", yearOfBirth: 20001111, gpa: 10)
    
generateList.append(test1)
generateList.append(test2)
generateList.append(test3)
generateList.append(test4)
generateList.append(test5)
generateList.append(test6)
generateList.append(test7)
generateList.append(test8)
generateList.append(test9)
generateList.append(test10)

var classroom = Classroom()
classroom.arrayOfStudents = generateList
classroom.getHighestGpa()

// - Define a struct classed Student. Each student is defined by the following attributes:
// o firstName
// o lastName
// o address
// o Year of birth
// o gpa
// - Define a class called Classroom with an instance property which is an array of Students.
// - Define a static method called printStudent for the struct Student to print the student’s
// information (firstName, lastName, address, year of birth and gpa)
// - Define an instance method for the class Classroom, called generateList. This method
// create 10 instances of the class students with some arbitrary information and add them to
// the list of students.
// - Define an instance method for the class Classroom, called getHighestGpa. This methods
// will search into the array of Students and returns the student with the highest GPA. The
// method also prints the information of the student with the highest GPA.
