//
//  CCGradientViewConfigurationBuilder.swift
//  CCGradient
//
//  Created by Amir REZVANI on 5/31/19.
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

struct CCGradientViewConfigurationBuilder {
    
    static func configurationWithGradientColors(_ gradientColors: [UIColor]) -> CCGradientConfiguration {
        return CCGradientConfiguration(
            colors: gradientColors,
            direction: .leftToRight)
    }
    
    static let defaultConfiguration = CCGradientConfiguration(
        colors: CCGradientColors.KokoCaramel,
        direction: .leftToRight)
    
    static var colorWheelConfiguration: CCGradientConfiguration {
        return CCGradientConfiguration(
            colors: CCGradientColors.ColorWheel,
            type: CCGradientType.conic,
            points: [CGPoint(x: 0.5, y: 0.5), CGPoint(x: 1, y: 1)])
    }
}
