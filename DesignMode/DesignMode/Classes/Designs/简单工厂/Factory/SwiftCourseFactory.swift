//
//  SwiftFactoryCourse.swift
//  DesignMode
//
//  Created by delin on 2022/12/1.
//

import UIKit

class SwiftCourseFactory: CourseFactory {
    
    func create() -> ICourse? {
        return SwiftCourse.init()
        
    }
    
    
    
    
    
}
