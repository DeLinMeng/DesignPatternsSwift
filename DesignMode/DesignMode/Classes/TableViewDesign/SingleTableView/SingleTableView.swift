//
//  SingleTableView.swift
//  DesignPatterns
//
//  Created by delin.meng on 2020/11/19.
//

import UIKit

class SingleTableView: UITableView {
    
    public var sections : [[SingleTableViewRow]] = []
    
    private var registerIdentifier:[String] = []
    
    public var sectionCount:Int{
        return sections.count
    }
    
    public func heightForRowAt(indexPath: IndexPath) -> CGFloat{
        let r = sections[indexPath.section][indexPath.row]
        return r.rowHeight
    }
    
    
    func setup(rows:[SingleTableViewRow],bundle:Bundle?){
        sections = []
        var sectionNames:[String] = []
        for row in rows{
            
            //防止重复注册
            if !registerIdentifier.contains(row.identifier){
                self.register(UINib.init(nibName: row.nibName, bundle: bundle), forCellReuseIdentifier: row.identifier)
                registerIdentifier.append(row.identifier)
            }
            
            //区分section
            if !sectionNames.contains(row.sectionName){
                sectionNames.append(row.sectionName)
                sections.append([SingleTableViewRow]())
            }
            
            //给section中添加row
            if let index = sectionNames.firstIndex(of: row.sectionName){
                sections[index].append(row)
            }
        }
        reloadData()
        
    }

}


