//
//  ViewController.swift
//  AppworksSchoolApp
//
//  Created by hu shun-ling on 2020/9/27.
//  Copyright © 2020 hu shun-ling. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var status : String = ""

    @IBOutlet weak var logInSignUp : UISegmentedControl!
    @IBOutlet weak var account : UITextField!
    @IBOutlet weak var passWord : UITextField!
    @IBOutlet weak var check : UITextField!
    @IBOutlet weak var stackView : UIStackView!
    @IBOutlet weak var checkLabel : UILabel!
  
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      //button.isEnabled = false
        check.isEnabled = false
        account.backgroundColor = UIColor.white
        passWord.backgroundColor = UIColor.white
        check.backgroundColor = UIColor.lightGray
        checkLabel.textColor = UIColor.lightGray
          }
 
    @IBAction func IndexChanged(_ sender: UISegmentedControl)
    {
        switch logInSignUp.selectedSegmentIndex
        {
        case 0:
           print("log in Segment Selected")
           status = "login"
           check.isEnabled = false
           account.backgroundColor = UIColor.white
           passWord.backgroundColor = UIColor.white
           check.backgroundColor = UIColor.lightGray
           checkLabel.textColor = UIColor.lightGray
           
            
        case 1:
            print("sign up Segment Selected")
            check.isEnabled = true
            account.backgroundColor = UIColor.white
            passWord.backgroundColor = UIColor.white
            check.backgroundColor = UIColor.white
            checkLabel.textColor = UIColor.black
            status = "signup"
        default:
            break
        }
    }
    
    
    @IBAction func textFieldEditingDidChange(_ sender: Any) {
       print("chloe")

   }

   @IBAction func buttonPressed(_ sender: Any)  {
    var alert = UIAlertController(title: "title", message: "message", preferredStyle: .alert)
    if account.text == "" {
         alert = UIAlertController(title: "error", message: "Account Should not be empty.", preferredStyle: .alert)
    }
    else if passWord.text == "" {
         alert = UIAlertController(title: "error", message: "Password Should not be empty.", preferredStyle: .alert)
        }
    else if check.text == "" && status == "signup"{
        alert = UIAlertController(title: "error", message: "Check Should not be empty.", preferredStyle: .alert)
        }
    else {
          if (status == "login")
            {
                if(account.text == "appworks_school@gmail.com" && passWord.text == "1234")
                {
                    alert = UIAlertController(title: "OK", message: "Welcome.", preferredStyle: .alert)
                }
                else
                {
                    alert = UIAlertController(title: "error", message: "Signup fail", preferredStyle: .alert)
                    
                }
                
            }
            //log in
            else if (status == "signup"){
            if (passWord.text == check.text)
            {
                alert = UIAlertController(title: "OK", message: "Welcome.", preferredStyle: .alert)
            }
            else
            {
                alert = UIAlertController(title: "error", message: "Signup fail", preferredStyle: .alert)
            }
            }//sign up
    }

   
    
      let action = UIAlertAction(title: "OK", style: .default, handler: nil)
      alert.addAction(action)
    
      present(alert, animated: true, completion: nil)

    }
    
}


