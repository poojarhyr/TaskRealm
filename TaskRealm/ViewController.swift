//
//  ViewController.swift
//  TaskRealm
//
//  Created by Pooja R on 06/02/20.
//  Copyright © 2020 Pooja R. All rights reserved.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {

//    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
//    @IBOutlet weak var emailID: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func OnclickSubmit(_ sender: UIButton) {
        
        let alert = UIAlertController(title: "", message: "Your Data Saved", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(action)
        present(alert,animated: true)
        firstName.text!.removeAll()
        lastName.text!.removeAll()
        emailID.text!.removeAll()
    }
    
    @IBAction func OnclickViewDetails(_ sender: UIBarButtonItem) {
        
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let nextViewcontroller = storyboard.instantiateViewController(withIdentifier: "Second") as! SecondViewController
        self.present(nextViewcontroller, animated: true, completion: nil)
        
    }
    
}

