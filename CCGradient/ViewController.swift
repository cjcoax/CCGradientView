//
//  ViewController.swift
//  CCGradient
//
//  Created by Amir REZVANI on 5/30/19.
//  Copyright © 2019 Amir REZVANI. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var gradientView: CCGradientView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gradientView.basicConfiguration = self
        gradientView.advancedConfigurations = self
    }

}

extension ViewController: CCGradientBasicConfiguration, CCGradientAdvancedConfiguration {
    func colors() -> [UIColor] {
        return [
            UIColor(red: 247.0/255.0, green: 151.0/255.0, blue: 30.0/255.0, alpha: 1.0),
            UIColor(red: 255.0/255.0, green: 210.0/255.0, blue: 0/255.0, alpha: 1.0)
        ]
    }
    
    func points() -> [CGPoint] {
        return [CGPoint(x: 0, y: 0.5), CGPoint(x: 1, y: 0.5)]
    }
}
