//
//  ViewController.swift
//  SimpleStarRatingView
//
//  Created by Rohit Kumar on 12/28/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var containerView: UIView!
   
    @IBOutlet var buttons: [UIButton]!
    
    @IBOutlet weak var starLbl: UILabel!
    
    // This variable will help you to send data to Server.
    var rating = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        containerView.layer.cornerRadius = 10
    }
    
    @IBAction func didTapOnStarButtons(_ sender: UIButton) {
        starLbl.text = "Star Rating is \(sender.tag)"
        
        for button in buttons {
            if button.tag <= sender.tag {
                button.setImage(UIImage(named: "star-filled-icon"), for: .normal)
            } else {
                button.setImage(UIImage(named: "star-empty-icon"), for: .normal)
            }
        }
    }


//MARK:  - Don't Forgot to tag your all buttons if you don't do that then all button tag will be 0.
    
    



}

