//
//  ViewController.swift
//  Protocol&Deleget
//
//  Created by nikhil boriwale on 5/11/18.
//  Copyright © 2018 infostretch. All rights reserved.
//

import UIKit

class ViewController: UIViewController,datapass {
    

    @IBOutlet weak var lbl3: UILabel!
    @IBOutlet weak var lbl2: UILabel!
    @IBOutlet weak var lbl1: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
   
        
        
        
    }
    @IBAction func btnmoveaction(_ sender: Any) {
        let secnvc = self.storyboard?.instantiateViewController(withIdentifier: "SeconVC")as! SeconVC
        // without confirm delegt data is not pass or showing 
      secnvc.deleget = self
        self.navigationController?.pushViewController(secnvc, animated: true)
        
    }
   
    func datapassing(name: String, address: String, city: String) {
        lbl1.text = name
        lbl2.text = address
        lbl3.text = city
    }
    

}

