//
//  Course.swift
//  CourseDetails
//
//  Created by Alexey Efimov on 06.06.2020.
//  Copyright © 2020 Alexey Efimov. All rights reserved.
//

import Foundation

struct Course: Decodable {
    let name: String
    let imageUrl: URL
    let numberOfLessons: Int
    let numberOfTests: Int
    
    static func getCourse() -> Course {
        Course(
            name: "Course Name",
            imageUrl: URL(string: "https://swiftbook.ru/wp-content/uploads/2018/03/2-courselogo.jpg")!,
            numberOfLessons: 40,
            numberOfTests: 10
        )
    }
}
