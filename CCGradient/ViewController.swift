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
        
        gradientView.configuration = self
        //        gradientView.animateStartPoint()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        gradientView.layer.cornerRadius = min(gradientView.frame.width, gradientView.frame.height)/2.0
        gradientView.layer.masksToBounds = true
    }
}

extension ViewController: CCGradientViewConfiguration {
    func configurationForGradientView(_ gradientView: CCGradientView) -> CCGradientConfiguration {
        
        let colors = [CCColor.red,
                      CCColor.yellow,
                      CCColor.lime,
                      CCColor.aqua,
                      CCColor.blue,
                      CCColor.magenta,
                      CCColor.red]
        let mult = 1.0/Double(colors.count)
        var locations = [NSNumber]()
        for i in 0..<(colors.count-1) {
            locations.append(NSNumber(value: Double(i) * mult))
        }

        return CCGradientConfiguration(
            colors: colors,
            type: CCGradientType.conic,
            locations: locations,
            points: [CGPoint(x: 0.5, y: 0.5), CGPoint(x: 1, y: 1)])
    }
}
