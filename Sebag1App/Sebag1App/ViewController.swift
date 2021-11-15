//
//  ViewController.swift
//  Sebag1App
//
//  Created by Ethan Sebag on 15/11/2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        MyInputTextField.text = "Initialisation du champs texte"
        
    }


    @IBOutlet weak var MyFirstButton: UIButton!
    @IBOutlet weak var MyInputTextField: UITextField!
    @IBOutlet weak var MyLabel: UILabel!
    @IBOutlet weak var MyFirstSwitch: UISwitch!
    
    
    @IBAction func UpdateLabel() {
        MyLabel.text = MyInputTextField.text
    }
   
    
    @IBAction func Activate(_ sender: UISwitch) {
        MyFirstButton.isEnabled = MyFirstSwitch.isOn
    }
    
   
    
   
    
}

