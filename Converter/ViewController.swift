//
//  ViewController.swift
//  Converter
//
//  Created by  Mr.Ki on 10.06.2021.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var celsiusLabel: UILabel!
    
    @IBOutlet weak var fahrenheitLabel: UILabel!
    
    @IBOutlet weak var slider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sliderChanged(_ sender: UISlider) {
    }
    
}

