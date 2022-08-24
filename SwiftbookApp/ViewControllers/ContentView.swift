//
//  ContentView.swift
//  CourseDetails
//
//  Created by Alexey Efimov on 06.06.2020.
//  Copyright © 2020 Alexey Efimov. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let course: Course
    
    var body: some View {
        VStack {
            Text(course.name)
                .font(.largeTitle)
                        
            VStack(alignment: .leading, spacing: 20) {
                AsyncImage(url: course.imageUrl) { image in
                    image.resizable()
                } placeholder: {
                    Image(systemName: "xmark.shield")
                        .resizable()
                }
                .cornerRadius(30)
                .frame(width: 230, height: 180)

                CourseInfo(
                    title: "Number of lessons",
                    numberOfTitles: course.numberOfLessons
                )
                CourseInfo(
                    title: "Number of tests",
                    numberOfTitles: course.numberOfTests
                )
                
            }
            .padding(.top)
            
            Spacer()
        }
        .padding(.top)
    }
}

struct CourseInfo: View {
    let title: String
    let numberOfTitles: Int
    
    var body: some View {
        HStack {
            Text("\(title): ")
            Text("\(numberOfTitles)")
        }
        .font(.headline)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(course: Course.getCourse())
    }
}
