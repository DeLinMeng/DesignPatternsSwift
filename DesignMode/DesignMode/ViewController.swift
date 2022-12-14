//
//  ViewController.swift
//  DesignMode
//
//  Created by 孟德林 on 2021/7/25.
//

import UIKit

class ViewController: UIViewController {

    let childVC = ChildViewController.init()
    
    let childVC2 = ChildTwoViewController.init()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.white
        
        self.addChild(childVC)
        self.view.addSubview(childVC.view)
        
        self.view.addSubview(childVC2.view)
        self.addChild(childVC2)
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem.init(title: "v2ov1", style: .done, target: self, action: #selector(finish))
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem.init(title: "v1ov2", style: .done, target: self, action: #selector(finish2))
        
    }
    
    @objc private func finish() {
        self.transition(from: childVC2, to: childVC, duration: .greatestFiniteMagnitude, options: .curveEaseInOut) {
        } completion: { (finish) in
            
        }
    }
    
    @objc private func finish2() {
        self.transition(from: childVC, to: childVC2, duration: .greatestFiniteMagnitude, options: .curveEaseInOut) {
        } completion: { (finish) in
            
            
        }
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        print("Father viewWillAppear")
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        print("Father viewDidAppear")
        
    
    }


}

