//
//  CALayer+Gradient.swift
//  WeatherApp
//
//  Created by Alaattin Bedir on 20.06.2022.
//

import Foundation
import UIKit

public extension CALayer {
    class func horizontalGradienLayer(g1: UIColor, g2: UIColor) -> CAGradientLayer {
        let layer = CAGradientLayer()
        layer.colors = [g1.cgColor, g1.cgColor, g2.cgColor, g2.cgColor]

        layer.startPoint = CGPoint(x: 0.0, y: 0.5)
        layer.endPoint = CGPoint(x: 1.0, y: 0.5)

        let gradTopStart = NSNumber(value: 0.0)
        let gradTopEnd = NSNumber(value: 1.0)
        let gradBottomStart = NSNumber(value: 0.0)
        let gradBottomEnd = NSNumber(value: 1.0)
        layer.locations = [gradTopStart, gradTopEnd, gradBottomStart, gradBottomEnd]
        layer.anchorPoint = CGPoint.zero
        return layer
    }
}
