//
//  ViewController.swift
//  LoginApp
//
//  Created by thomas on 2020/3/14.
//  Copyright © 2020 thomas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLbl: UITextField!
    
    @IBOutlet weak var pwdLabl: UITextField!
    
    @IBOutlet weak var sliderLbl: UILabel!
    
    @IBOutlet weak var LblCMPSwitch: UISwitch!
    
    @IBOutlet weak var educarionSeg: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func doneInputName(_ sender: UITextField) {
        sender.resignFirstResponder()
    }
    
    @IBAction func downInputPwd(_ sender: UITextField) {
        sender.resignFirstResponder()
    }
    
    @IBAction func taped(_ sender: UITapGestureRecognizer) {
        nameLbl.resignFirstResponder()
        pwdLabl.resignFirstResponder()
    }

    @IBAction func sliderChanged(_ sender: UISlider) {
        sliderLbl.text = "\(lroundf(sender.value))"
        
    }
    @IBAction func submit(_ sender: Any) {
        var u = UserInfo()
        u.name = nameLbl.text!
        u.password = pwdLabl.text!
        u.isCPM = LblCMPSwitch.isOn
        u.iq = sliderLbl.text!
        u.setEduByIndex(Index: educarionSeg.selectedSegmentIndex)
        
        print(u)
    }
}

