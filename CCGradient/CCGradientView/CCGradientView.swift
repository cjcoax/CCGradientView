//
//  CCGradientView.swift
//  CCGradient
//
//  Created by Amir REZVANI on 5/30/19.
//  Copyright © 2019 Amir REZVANI. All rights reserved.
//
//MIT License
//
//Copyright (c) 2019 Amir Rezvani

//Permission is hereby granted, free of charge, to any person obtaining a copy
//of this software and associated documentation files (the "Software"), to deal
//in the Software without restriction, including without limitation the rights
//to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//copies of the Software, and to permit persons to whom the Software is
//furnished to do so, subject to the following conditions:

//The above copyright notice and this permission notice shall be included in all
//copies or substantial portions of the Software.

//THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//SOFTWARE.

import UIKit

// MARK: - CCGradient configuration

public protocol CCGradientViewConfiguration: class {
    func configurationForGradientView(_ gradientView: CCGradientView) -> CCGradientConfiguration
}

extension CCGradientViewConfiguration {
    func configurationForGradientView(_ gradientView: CCGradientView) -> CCGradientConfiguration {
        return CCGradientViewConfigurationBuilder.defaultConfiguration
    }
}

// MARK: - CCGradientView

public class CCGradientView: UIView {
    
    // MARK: - private properties
    
    private var gradientLayer: CAGradientLayer!
    
    // MARK: - public properties
    
    public weak var configuration: CCGradientViewConfiguration?
    
    // MARK: - [initializer]s
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        
        addGradientLayer()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        addGradientLayer()
    }
    
    // MARK: - lifecycle
    
    public override func layoutSubviews() {
        super.layoutSubviews()
        
        gradientLayer.frame = bounds
    }
    
    public override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        let configuration = self.configuration?.configurationForGradientView(self) ?? CCGradientViewConfigurationBuilder.defaultConfiguration
        
        gradientLayer.colors = configuration.colors
        gradientLayer.type = configuration.type
        gradientLayer.startPoint = configuration.points[0]
        gradientLayer.endPoint = configuration.points[1]
        gradientLayer.locations = configuration.locations
    }
    
    // MARK: - public functions for animating gradient
    
    /// Animates start point of the gradient
    public func animateStartPoint() {
        let startPointAnimation = CABasicAnimation(keyPath: "startPoint")
        startPointAnimation.fromValue = gradientLayer.startPoint
        let randomXDelta = CGFloat.random(in: 1...100)/100
        let randomYDelta = CGFloat.random(in: 1...100)/100
        startPointAnimation.toValue = CGPoint(x: gradientLayer.startPoint.x + randomXDelta,
                                              y: gradientLayer.startPoint.y - randomYDelta)
        startPointAnimation.duration = 20.0
        gradientLayer.add(startPointAnimation, forKey: nil)
    }
    
    // MARK: - private functions
    
    private func addGradientLayer() {
        gradientLayer = CAGradientLayer()
        layer.addSublayer(gradientLayer)
    }
}
