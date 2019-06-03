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
    private var shouldStopAnimation: Bool = false
    
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
    
    // basic start/end point animations
    
    public func startAnimating() {
        beginStartPointAnimation()
        beginEndPointAnimation()
    }
    
    public func endAnimating() {
        shouldStopAnimation = true
    }
    
    // MARK: - private functions
    
    private func addGradientLayer() {
        gradientLayer = CAGradientLayer()
        layer.addSublayer(gradientLayer)
    }
    
    private func beginStartPointAnimation() {
        let startPointAnimation = CABasicAnimation(keyPath: "startPoint")
        startPointAnimation.fromValue = gradientLayer.startPoint
        let startSignX: CGFloat = Int.random(in: 0...1)%2 == 0 ? -1 : 1
        let startSignY: CGFloat = Int.random(in: 0...1)%2 == 0 ? -1 : 1
        let startRandomXDelta = CGFloat.random(in: 1...100)/1000
        let startRandomYDelta = CGFloat.random(in: 1...100)/1000
        let startNewX = max(min(gradientLayer.startPoint.x + startRandomXDelta * startSignX, 1),0)
        let startNewY = max(min(gradientLayer.startPoint.y + startRandomYDelta * startSignY, 1),0)
        startPointAnimation.toValue = CGPoint(x: startNewX,
                                              y: startNewY)
        startPointAnimation.setValue(beginStartPointAnimation, forKey: "callback")
        startPointAnimation.duration = 10.0
        startPointAnimation.delegate = self
        
        gradientLayer.add(startPointAnimation, forKey: nil)
    }
    
    private func beginEndPointAnimation() {
        let endPointAnimation = CABasicAnimation(keyPath: "endPoint")
        endPointAnimation.fromValue = gradientLayer.endPoint
        let endSignX: CGFloat = Int.random(in: 0...1)%2 == 0 ? -1 : 1
        let endSignY: CGFloat = Int.random(in: 0...1)%2 == 0 ? -1 : 1
        let endRandomXDelta = CGFloat.random(in: 1...100)/1000
        let endRandomYDelta = CGFloat.random(in: 1...100)/1000
        let endNewX = max(min(gradientLayer.endPoint.x + endRandomXDelta * endSignX, 1),0)
        let endNewY = max(min(gradientLayer.endPoint.y + endRandomYDelta * endSignY, 1),0)
        endPointAnimation.toValue = CGPoint(x: endNewX,
                                            y: endNewY)
        endPointAnimation.setValue(beginEndPointAnimation, forKey: "callback")
        endPointAnimation.duration = 10.0
        endPointAnimation.delegate = self
        
        gradientLayer.add(endPointAnimation, forKey: nil)
    }
}

// MARK: - CAAnimationDelegate

extension CCGradientView: CAAnimationDelegate {
    public func animationDidStop(_ anim: CAAnimation,
                          finished flag: Bool) {
        guard let anim = anim as? CABasicAnimation else {
            return
        }
        guard let callback = anim.value(forKey: "callback") as? (() -> Void),
            let keyPath = anim.keyPath else {
            return
        }
        CATransaction.begin()
        CATransaction.setDisableActions(true)
        gradientLayer.setValue(anim.toValue, forKey: keyPath)
        CATransaction.commit()
        
        guard !shouldStopAnimation else {
            return
        }
        callback()
    }
}
