// Foundation not needed

// Apple Swift version 2.0

struct GradeSchool {
    var roster = [Int: [String]]()

    mutating func addStudent(name: String, grade: Int) {
        if var students = roster[grade] {
            students.append(name)
            roster[grade] = students
        } else {
            roster[grade] = [name]
        }
    }

    func studentsInGrade(grade: Int) -> [String] {
        return roster[grade] ?? []
    }

    var sortedRoster: [Int: [String]] {
        var sortedRoster = [Int: [String]](minimumCapacity: roster.count)
        for (grade, students) in roster {
            sortedRoster[grade] = students.sort(<)
        }
        return sortedRoster
    }
}

// Class Version for Reference

//class GradeSchool {
//    var roster: [Int: [String]] = [:]
//    
//    func addStudent(name: String, grade: Int) {
//        if var students = roster[grade] {
//            students.append(name)
//            roster[grade] = students
//        } else {
//            roster[grade] = [name]
//        }
//    }
//    
//    func studentsInGrade(grade: Int) -> [String]
//    {
//        if let students = roster[grade] {
//            return students
//        } else {
//            return []
//        }
//    }
//    
//    var sortedRoster:[Int: [String]] {
//        var sortedDB = roster
//        for (grade, students) in sortedDB {
//            sortedDB[grade] = students.sort(<)
//        }
//        return sortedDB
//    }
//}