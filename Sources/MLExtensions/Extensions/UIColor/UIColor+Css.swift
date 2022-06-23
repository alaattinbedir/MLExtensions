//
//  UIColor+Css.swift
//  WeatherApp
//
//  Created by Alaattin Bedir on 20.06.2022.
//

import Foundation
import UIKit

public extension UIColor {
    var redValue: CGFloat { return CIColor(color: self).red }
    var greenValue: CGFloat { return CIColor(color: self).green }
    var blueValue: CGFloat { return CIColor(color: self).blue }
    var alphaValue: CGFloat { return CIColor(color: self).alpha }

    func toCssRgbColor() -> String {
        let red = Int(redValue * 255)
        let green = Int(greenValue * 255)
        let blue = Int(blueValue * 255)
        return "rgb(\(red), \(green), \(blue))"
    }
}
