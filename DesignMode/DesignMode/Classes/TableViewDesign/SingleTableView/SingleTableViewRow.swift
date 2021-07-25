//
//  SingleTableViewRow.swift
//  DesignPatterns
//
//  Created by delin.meng on 2020/11/19.
//

import UIKit

class SingleTableViewRow: NSObject {
    
    var sectionName : String
    var identifier : String
    var data:Any
    var rowHeight :CGFloat
    var nibName : String
    
    /// 用来构建TableView将要显示的Cell类型
    ///
    /// - Parameters:
    ///   - sectionName: 用来统计几个section,如果Name相同,则在同一个section中
    ///   - identifier: cell的identifier
    ///   - data: cell 将要用到的数据
    ///   - rowHeight: cell的初始高度
    ///   - nibName: cell的xib名字,如果为空,默认为等于identifier
    init(identifier:String,nibName:String,sectionName:String,rowHeight:CGFloat,data:Any?) {
        self.identifier = identifier
        self.nibName = nibName
        self.sectionName = sectionName
        self.rowHeight = rowHeight
        self.data = data ?? "empty data"
    }
    
}
