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

    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }
}

extension ViewController: CCGradientViewConfiguration {
    
    func configurationForGradientView(_ gradientView: CCGradientView) -> CCGradientConfiguration {
        if gradientView == self.gradientView {
            return CCGradientConfiguration(colors: CCGradientColors.ShadesofGrey,
                                           direction: .rightToLeft)
        }
        return CCGradientConfiguration(colors: CCGradientColors.Instagram)
    }
    
}
