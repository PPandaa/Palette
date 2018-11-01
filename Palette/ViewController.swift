//
//  ViewController.swift
//  Palette
//
//  Created by PeterHu on 2018/11/1.
//  Copyright © 2018 PeterHu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var alphaLabel: UILabel!
    @IBOutlet weak var PandaImageView: UIImageView!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var alphaSlider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func changeColor(_ sender: UISlider!) {
        var number = redSlider.value
        var numberString = ""
        PandaImageView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(alphaSlider.value))
        if sender == redSlider {
            number = redSlider.value
            numberString = String(format: "%.2f", number)
            redLabel.text = numberString
        }
        if sender == greenSlider {
            number = greenSlider.value
            numberString = String(format: "%.2f", number)
            greenLabel.text = numberString
        }
        if sender == blueSlider {
            number = blueSlider.value
            numberString = String(format: "%.2f", number)
            blueLabel.text = numberString
        }
        if sender == alphaSlider {
            number = alphaSlider.value
            numberString = String(format: "%.2f", number)
            alphaLabel.text = numberString
        }
    }
    
}

