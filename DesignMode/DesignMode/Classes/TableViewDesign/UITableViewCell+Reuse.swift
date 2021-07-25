//
//  UITableViewCell+Reuse.swift
//  DesignPatterns
//
//  Created by delin.meng on 2020/11/19.
//

import UIKit

extension UITableViewCell: MLIdentifierProtocol {
    
    static func identifier() -> String {
        return "\(UITableViewCell.self)"
    }
    
//    lazy var name: NSString = {
//        return ""
//    }()
    
    
}
