//
//  SeconVC.swift
//  Protocol&Deleget
//
//  Created by nikhil boriwale on 5/11/18.
//  Copyright © 2018 infostretch. All rights reserved.
//

import UIKit
protocol datapass {
    func datapassing(name:String,address:String,city:String)
    
    }

class SeconVC: UIViewController {
    

    @IBOutlet weak var txt1: UITextField!
    @IBOutlet weak var txt2: UITextField!
    @IBOutlet weak var txt3: UITextField!
    var deleget:datapass!
    // Protocol ki andr ki method muze use krna hey to main deleget confirm krna pdta hey
    override func viewDidLoad() {
        super.viewDidLoad()
   }

    @IBAction func btnsaveaction(_ sender: Any) {
  
        if txt1.text == ""{
            showMessage(title: "enter name", message: "enter name", VC: self)
        }else if txt2.text == ""{
            showMessage(title: "Enter address", message: "Enter address", VC: self)
        }else if txt3.text == ""{
            showMessage(title: "enter city", message: "enter city", VC: self )
        }else{
            deleget.datapassing(name: txt1.text!, address: txt2.text!, city: txt3.text!)
        }
        
        
        
    }
    func showMessage(title: String, message: String!, VC: UIViewController) {
        
        let alert : UIAlertController = UIAlertController(title: "", message: message, preferredStyle: UIAlertControllerStyle.alert)
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default) {
            UIAlertAction in
        }
        alert.addAction(okAction)
        VC.present(alert, animated: true, completion: nil)
    
 }
}
