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
    @IBOutlet weak var backgroundView: CCGradientView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gradientView.mask = label
        gradientView.configuration = self
        backgroundView.configuration = self
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
        if gradientView == self.gradientView {
            return CCGradientConfiguration(colors: CCGradientColors.ShadesofGrey,
            direction: .rightToLeft)
        }
        return CCGradientViewConfigurationBuilder.configurationWithGradientColors(CCGradientColors.Instagram)
    }
    
}
