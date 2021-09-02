import UIKit

var greeting = "Problem1"

//Struct Date
struct Date {
    var month: Int
    var day: Int
    var year: Int
    
    static func funcOfDate(_ month: Int, _ day: Int, _ year: Int) -> Date {
        var dateComponents = DateComponents()
        dateComponents.year = year
        dateComponents.month = month
        dateComponents.day = day
        let calendar = Calendar.current.date(from: dateComponents)!

        let splitDate = calendar.description.split(separator: " ")[0]
        let yearForDate = splitDate.split(separator: "-")[0]
        let monthForDate = splitDate.split(separator: "-")[1]
        let dayForDate = splitDate.split(separator: "-")[2]
        
        let intYear = Int(yearForDate)!
        let intMonth = Int(monthForDate)!
        let intDay = Int(dayForDate)!
        
        return Date(month: intMonth, day: intDay, year: intYear)
    }
}

let date1 = Date.funcOfDate(365, 2021, 8)
print(date1)

let date2 = Date.funcOfDate(299, 1999, 4)
print(date2)

// - Struct Date:
// o Define a structure called Date with three integer fields, day, month and year.
// oe a static method for this structure which receives a number between 1 and
// 365 and convert it to day, month and year. This function will return a Date struct
// o Test it: Create a few instances from this struct and test the static function with
// some different numbers. Defin
//------------------------------------------------

//Enum WeekDay
enum daysOfTheWeek: Int {
    case Sun, Mon, Tue, Wed, Thu, Fri, Sat
    
    static func returnAnEnumWeekday(_ date: Date) -> daysOfTheWeek {
        
        var dateComponents = DateComponents()
        dateComponents.year = date.year
        dateComponents.month = date.month
        dateComponents.day = date.day
        let calendar = Calendar.current.date(from: dateComponents)!
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "e"

        let day_number: Int = Int(dateFormatter.string(from: calendar))!
        return daysOfTheWeek(rawValue: day_number)!
    }
}
//what day of the week is the given input date.
print("what day of the week is the given input date?")
print(daysOfTheWeek.returnAnEnumWeekday(date1))
print(daysOfTheWeek.returnAnEnumWeekday(date2))

// - Enum WeekDay
// o Define an Enumeration with a raw values of type String for its cases to represents
// days of the week.
// o Define a static function for this enumeration which receives a Struct Date and
// return an Enum Weekday. The method tells what day of the week is the given
// input date.
