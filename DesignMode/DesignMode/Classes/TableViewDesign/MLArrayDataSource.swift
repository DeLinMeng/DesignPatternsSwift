//
//  FDDataSource.swift
//  DesignPatterns
//
//  Created by delin.meng on 2020/11/19.
//

import UIKit

class MLArrayDataSource<Element>: NSObject, UITableViewDataSource ,UITableViewDelegate{

    typealias FDIdentier = (Element) -> String
    
    typealias FDRemove = (_ at:Int) -> ()
    
    typealias FDConfigure = (Element,UITableViewCell) -> ()
    
    private var identier:FDIdentier
    
    private var remove:FDRemove
    
    private var configure:FDConfigure
    
    private var contents = [Element]()
    
    init(_ contents:[Element],
         identier:@escaping FDIdentier,
         remove:@escaping FDRemove,
         configure:@escaping FDConfigure) {
        self.contents = contents
        self.identier = identier
        self.remove = remove
        self.configure = configure
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contents.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = contents[indexPath.row]
        let identifier = self.identier(item)
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        self.configure(item,cell)
        return cell
    }
    
    
}
