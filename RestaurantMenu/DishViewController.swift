//
//  DishViewController.swift
//  RestaurantMenu
//
//  Created by Akkriti Patil on 31/10/23.
//

import UIKit

class DishViewController: UIViewController {
    
    @IBOutlet weak var img: UIImageView!
    
    @IBOutlet weak var desc: UITextView!
    
    @IBOutlet weak var price: UILabel!
    
    var dishImage: String = ""
    var dishName: String = ""
    var dishDesc: String = ""
    var dishPrice: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = dishName
        
        desc.isEditable = false
        desc.isSelectable = false
        img.image =  UIImage(named: dishImage + ".jpeg")
        desc.text = dishDesc
        price.text = dishPrice
    }
    
    @IBAction func fontSize(_ sender: UISlider) {
        
        desc.font = UIFont.systemFont(ofSize: CGFloat(sender.value))
        
        price.font = UIFont.systemFont(ofSize: CGFloat(sender.value))
    }
    
}
