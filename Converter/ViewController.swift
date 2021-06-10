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
    
    @IBOutlet weak var slider: UISlider! {
        didSet {
            slider.minimumValue = 0
            slider.maximumValue = 100
            slider.value = 0
            slider.thumbTintColor = #colorLiteral(red: 0.6235294118, green: 0.3725490196, blue: 0.5019607843, alpha: 1)
            slider.minimumTrackTintColor = #colorLiteral(red: 1, green: 0.5176470588, blue: 0.4549019608, alpha: 1)
            
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sliderChanged(_ sender: UISlider) {
        let temperatureCelsious = Int(round(sender.value))
        celsiusLabel.text = "\(temperatureCelsious)ºC"
        let temperatureFahrenheit = Int(round((sender.value * 9 / 5) + 32))
        fahrenheitLabel.text = "\(temperatureFahrenheit)ºF"
        
        
    }
    
}

