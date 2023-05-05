//
//  ViewController.swift
//  userDefaults
//
//  Created by West Agile labs on 23/04/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TextLabel: UILabel!
    @IBOutlet weak var TextFieldLabel: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        let value = UserDefaults.standard.string(forKey: "name")//used for retreving data which is available in userdefault in textlabel
        if value != nil {
            TextLabel.text = "Hello, \(value!)"
        } else {
            TextLabel.text = "welcome"
        }
            
   
    }
    @IBAction func buttonPressed(_ sender: UIButton) {
        UserDefaults.standard.set(TextFieldLabel.text!, forKey: "name")
        let alert = UIAlertController(title: "Saving", message: "Your data saved successfully", preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .default) {(action) in
            
        }
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        
    }
    
}

