//
//  ViewController.swift
//  primeNumberCheck
//
//  Created by D7703_27 on 2018. 3. 29..
//  Copyright © 2018년 D7703_27. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{

    @IBOutlet weak var txtF: UITextField!
    @IBOutlet weak var lbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        txtF.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnR(_ sender: Any) {
        txtF.text = ""
        lbl.text = ""
    }
    
    @IBAction func btn(_ sender: Any) {
            let number = Int(txtF.text!)
            var isPrise = true
            if number! == 1 {
                isPrise = false
   
        }
        if number! != 1 && number! != 2 {
            for i in 2 ..< number!  {
                if number! % i == 0  {
                    isPrise = false
                }
        }
}
        if isPrise == true  {
            lbl.text = "Prime number"
        }else {
            lbl.text = "Not prime number"
        }
}
func textFieldShouldReturn(_ textField: UITextField) -> Bool  {txtF.resignFirstResponder()
return true
}
}

