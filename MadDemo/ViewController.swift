//
//  ViewController.swift
//  MadDemo
//
//  Created by Hamed Polo on 12/12/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var TextLabel: UILabel!
    
    @IBOutlet weak var backgroundView: UIImageView!
    
    @IBOutlet weak var swapBackground: UIImageView!
    
    var defaultBackground : UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        defaultBackground = backgroundView.image
    }
    
    @IBAction func textColorOnTap(_ sender: Any) {
        TextLabel.textColor = .init(hue: .random(in: 0...1), saturation: 1, brightness: 1, alpha: 1)
    }
    
    @IBAction func textOnTap(_ sender: Any) {
        TextLabel.text = textField.text
        textField.text = ""
        view.endEditing(true)
    }
    
    @IBAction func onResetGesture(_ sender: Any) {
        TextLabel.text = "Hello From Hamed!"
        TextLabel.textColor = UIColor.white
        backgroundView.image = defaultBackground
    }
    
    @IBAction func swapBackgroundOnTap(_ sender: Any) {
        backgroundView.image = swapBackground.image
    }
}
