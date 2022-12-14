//
//  AbsCourseFactory.swift
//  DesignMode
//
//  Created by delin on 2022/12/1.
//

import UIKit

protocol AbsCourseFactory {
    
    func createAbsCourse() -> AbsCourse?
    
    func createAbsLog() -> AbsLog?
    
    func createAbsView() -> AbsView?
    
}
