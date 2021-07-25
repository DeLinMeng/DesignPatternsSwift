//
//  ChildTwoViewController.swift
//  DesignPatterns
//
//  Created by delin.meng on 2020/11/19.
//

import UIKit

class ChildTwoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.white
        
        
        let bt = UIButton.init()
        bt.frame = CGRect(x: 0, y: 100, width: 200, height: 100)
        bt.setTitleColor(UIColor.black, for: .normal)
        bt.setTitle("哈哈2222", for: .normal)
        self.view.addSubview(bt)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        print("Child2 viewWillAppear")
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        print("Child2 viewDidAppear")
        
    
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
