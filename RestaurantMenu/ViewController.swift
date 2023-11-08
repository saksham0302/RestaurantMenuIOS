//
//  ViewController.swift
//  RestaurantMenu
//
//  Created by Akkriti Patil on 30/10/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var todaysSpecial: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let images = [UIImage(named: "todaysspecial1.jpeg")!, UIImage(named: "todaysspecial2.jpeg")!, UIImage(named: "todaysspecial3.jpeg")!, UIImage(named: "todaysspecial4.jpeg")!, UIImage(named: "todaysspecial5.jpeg")!]
        
        todaysSpecial.animationImages = images
        todaysSpecial.animationDuration = 15
        todaysSpecial.animationRepeatCount = 0
        todaysSpecial.startAnimating()
    }

    @IBAction func adminUser(_ sender: UISwitch) {
        
        if sender.isOn {
            
            username.text = "saksham"
            password.text = "S@k$ham"
            
        } else {
            
            username.text = ""
            password.text = ""
        }
    }
    
    @IBAction func loginBtn(_ sender: UIButton) {
        
        if username.text == "saksham" && password.text == "S@k$ham" {
            
            performSegue(withIdentifier: "loginToHome", sender: self)
            
        } else {
            
            let alert = UIAlertController(title: "Wrong Password!!", message: "To enter password think of yourself", preferredStyle: .actionSheet)
                
            alert.addAction(UIAlertAction(title: "OK", style: .default))

            self.present(alert, animated: true, completion: {
                    print("completion block")
                })
        }
    }
}

