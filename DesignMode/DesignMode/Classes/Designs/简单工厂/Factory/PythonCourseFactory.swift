//
//  PythonCourseFactory.swift
//  DesignMode
//
//  Created by delin on 2022/12/1.
//

import UIKit

class PythonCourseFactory: CourseFactory {
    
    func create() -> ICourse? {
        return PythonCourse.init()
    }
    
}
