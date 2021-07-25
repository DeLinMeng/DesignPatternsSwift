//
//  ChildViewController.swift
//  DesignPatterns
//
//  Created by delin.meng on 2020/11/18.
//

import UIKit
import RxSwift


// bind view
struct CellModel {
    
    var name:String?
    
    var age:String?
    
    var time:String?
    
}


class ChildViewController: UIViewController {
    
    lazy var tableView:UITableView = {
        let tableView = UITableView.init(frame: self.view.bounds)
        return tableView
    }()
    
    lazy var dataSource = {
        return MLArrayDataSource([UITableViewCell.identifier()]) { (element) -> String in
             return element
         } remove: { (index) in
            
            
            
         } configure: { (element, cell) in
            
             cell.backgroundColor = UIColor.red
             cell.textLabel?.text = "name"
            
             
         }
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        self.view.addSubview(self.tableView)
        setTableView()
        
    }
    
    
    private func setTableView() {
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: UITableViewCell.identifier())
        self.tableView.delegate = dataSource
        self.tableView.dataSource = dataSource
    }
    
    func getName(strin:String? = nil, callBack:() -> ()) -> Bool {
        return true
    }
    
    
    override func encodeRestorableState(with coder: NSCoder) {
        
        
    }
    
    override func decodeRestorableState(with coder: NSCoder) {
        
        
        
    }
    
    
    
}


