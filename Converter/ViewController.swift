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
            slider.thumbTintColor = UIColor.darkGray
            slider.minimumTrackTintColor = UIColor.purple            //slider.maximumTrackTintColor = UIColor.orange
            
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

