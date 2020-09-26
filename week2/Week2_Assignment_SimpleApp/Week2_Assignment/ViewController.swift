//
//  ViewController.swift
//  Week2_Assignment
//
//  Created by hu shun-ling on 2020/9/25.
//  Copyright © 2020 hu shun-ling. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    @IBOutlet weak var button : UIButton!
    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }
    
//    @IBAction func myButton(_ sender: UIButton) {
//        //Some huge functions which take 10 seconds to run
//        self.myLabel.text = "Some text1"
//
//        //Some other huge functions which take 10 seconds to run
//        self.myLabel.text = "Some text2"
//
//        //Some other other huge functions which take 10 seconds to run
//        self.myLabel.text = "Some text3"
//
//        //Some other other other huge functions which take 10 seconds to run
//        self.myLabel.text = "Some text4"
//    }
    
    
    @IBAction func changeBackgroundClicked(_ sender: Any) {
        let value = Int.random(in:1...6)
        switch value {
        case 1:
            self.view.backgroundColor = UIColor.red
            self.myLabel.text = "Lorem ipsum dolor sit amet,consectetur adipiscing eilt.Maecenas tempus."
        case 2:
            self.view.backgroundColor = UIColor.orange
            self.myLabel.text = "Contrary to popular belief,Lorem Ipsum is not simple random text."
        case 3:
            self.view.backgroundColor = UIColor.yellow
            self.myLabel.text = "Richard McClintock, a Latin professor at Hampden-Sydney College in"
        case 4:
            self.view.backgroundColor = UIColor.green
            self.myLabel.text = "from a Lorem Ipsum passage,and going through the cites of the word"
        case 5:
            self.view.backgroundColor = UIColor.blue
            self.myLabel.text = "This book is a treatise on the throey of ethics,very popular during the."
        case 6:
            self.view.backgroundColor = UIColor.purple
            self.myLabel.text = "the first line of Lorem Ipsum,Lorem ipsum dolor sit amet"
        default:
            self.view.backgroundColor = UIColor.black
            self.myLabel.text = "looked up one of the more obscure Latin words,concectetur"
            
        }
//       if self.view.backgroundColor == UIColor.red {
//          UIView.animate(withDuration: 2) {
//             self.view.backgroundColor = UIColor.blue
//                self.myLabel.text = "Some text1"
//          }
//       } else {
//          UIView.animate(withDuration: 2) {
//             self.view.backgroundColor = UIColor.red
//            self.myLabel.text = "Some text2"
//          }
//       }
//    }
    }
//    @IBAction func showMessage(){
//        let alert = UIAlertController(title: "Hello, World!", message: "This is my first app!", preferredStyle: .alert)
//        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
//
//          alert.addAction(action)
//
//          present(alert, animated: true, completion: nil)
//
//        }
}
