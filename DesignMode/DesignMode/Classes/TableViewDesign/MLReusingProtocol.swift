//
//  FDReusingProtocol.swift
//  DesignPatterns
//
//  Created by delin.meng on 2020/11/19.
//

import UIKit

// 自定义Cell需要实现
protocol MLReusingProtocol: MLIdentifierProtocol {
    
    func configgure<T:Codable>(_ item:T)
    
}

protocol MLIdentifierProtocol {
    
    static func identifier() -> String
    
}
