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
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        gradientView.mask = label
        gradientView.configuration = self
//        gradientView.startAnimating()
//
//        Timer.scheduledTimer(withTimeInterval: 5.0, repeats: false) { [weak self] (timer) in
//            self?.gradientView?.endAnimating()
//        }
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
//        gradientView.layer.cornerRadius = min(gradientView.frame.width, gradientView.frame.height)/2.0
//        gradientView.layer.masksToBounds = true
    }
}

extension ViewController: CCGradientViewConfiguration {
    
    func configurationForGradientView(_ gradientView: CCGradientView) -> CCGradientConfiguration {
//        return CCGradientViewConfigurationBuilder.configurationWithGradientColors(CCGradientColors.DanceToForget)
        
        let mult = 1.0/Double(CCGradientColors.ColorWheel.count)
        var locations = [NSNumber]()
        for i in 0..<(CCGradientColors.ColorWheel.count-1) {
            locations.append(NSNumber(value: Double(i) * mult))
        }
        
        return CCGradientConfiguration(colors: CCGradientColors.LGBT, direction: .topToBottom)
    }
    
}
