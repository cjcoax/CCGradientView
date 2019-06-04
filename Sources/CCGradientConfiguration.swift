//
//  CCGradientViewConfiguration.swift
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

// MARK: - Gradient directions

public enum CCGradientDirection {
    case topToBottom
    case leftToRight
    case rightToLeft
    case bottomToTop
    case growFromCenter
    case shrinkToCenter
}

// MARK: - GradientType enum

public enum CCGradientType {
    case axial
    case radial
    case conic
    
    // MARK: - private
    
    fileprivate func toCAGradientLayerType() -> CAGradientLayerType {
        switch self {
        case .axial:
            return .axial
        case .radial:
            return .radial
        case .conic:
            return .conic
        }
    }
    
}

public struct CCGradientConfiguration {
    
    // MARK: - internal properties
    
    internal let colors: [CGColor]
    internal let points: [CGPoint]
    internal let type: CAGradientLayerType
    internal let locations: [NSNumber]
    
    // MARK: - initializer[s]
    
    public init(colors: [UIColor]) {
        
        self.init(colors: colors, type: .axial)
    }
    
    public init(colors: [UIColor],
                type: CCGradientType) {
        
        self.init(colors: colors,
                  type: type,
                  locations: CCGradientConfiguration.getEvenlyDistributedLocationsForColors(colors.count))
    }
    
    public init(colors: [UIColor],
                type: CCGradientType,
                locations: [CGFloat]) {
        
        var startPoint: CGPoint
        var endPoint: CGPoint
        switch type {
        case .axial:
            startPoint = CGPoint(x: 0.0, y: 0.5)
            endPoint = CGPoint(x: 1, y: 0.5)
        case .radial:
            startPoint = CGPoint(x: 0.5, y: 0.5)
            endPoint = CGPoint(x: 1, y: 1.0)
        case .conic:
            startPoint = CGPoint(x: 0.5, y: 0.5)
            endPoint = CGPoint(x: 1.0, y: 1.0)
        }
        self.init(colors: colors,
                  type: type,
                  locations: locations,
                  points: [startPoint, endPoint])
    }
    
    public init(colors: [UIColor],
                direction: CCGradientDirection) {
        
        self.init(colors: colors,
                  direction: direction,
                  locations: CCGradientConfiguration.getEvenlyDistributedLocationsForColors(colors.count))
    }
    
    public init(colors: [UIColor],
                direction: CCGradientDirection,
                locations: [CGFloat]) {
        
        var startPoint: CGPoint
        var endPoint: CGPoint
        var type: CCGradientType
        switch direction {
        case .topToBottom:
            type = .axial
            startPoint = CGPoint(x: 0.5, y: 0)
            endPoint = CGPoint(x: 0.5, y: 1)
        case .leftToRight:
            type = .axial
            startPoint = CGPoint(x: 0, y: 0.5)
            endPoint = CGPoint(x: 1, y: 0.5)
        case .rightToLeft:
            type = .axial
            startPoint = CGPoint(x: 1.0, y: 0.5)
            endPoint = CGPoint(x: 0.0, y: 0.5)
        case .bottomToTop:
            type = .axial
            startPoint = CGPoint(x: 0.5, y: 1)
            endPoint = CGPoint(x: 0.5, y: 0)
        case .growFromCenter:
            type = .radial
            startPoint = CGPoint(x: 0.5, y: 0.5)
            endPoint = CGPoint(x: 0, y: 0)
        case .shrinkToCenter:
            type = .radial
            startPoint = CGPoint(x: 1, y: 1)
            endPoint = CGPoint(x: 0.5, y: 0.5)
        }
        self.init(colors: colors,
                  type: type,
                  locations: locations,
                  points: [startPoint, endPoint])
    }
    
    public init(colors: [UIColor],
                type: CCGradientType,
                points: [CGPoint]) {
        
        assert(points.count == 2, "points array needs to have exactly 2 items")
        self.init(colors: colors,
                  type: type,
                  locations: CCGradientConfiguration.getEvenlyDistributedLocationsForColors(colors.count),
                  points: points)
    }
    
    public init(colors: [UIColor],
                type: CCGradientType,
                locations: [CGFloat],
                points: [CGPoint]) {
        
        assert(points.count == 2, "points array needs to have exactly 2 items")
        self.colors = colors.map{ $0.cgColor }
        self.type = type.toCAGradientLayerType()
        self.points = points
        self.locations = locations.map{ NSNumber(value: Double($0)) }
    }
    
    // MARK: - private helpers
    
    static func getEvenlyDistributedLocationsForColors(_ colorCount: Int) -> [CGFloat] {
        
        let locations = (0..<colorCount).map { (offset) -> CGFloat in
            return CGFloat(Double(offset) * 1.0/Double(colorCount))
        }
        return locations
    }
    
}
