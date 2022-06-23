//
//  Int+Convert.swift
//  WeatherApp
//
//  Created by Alaattin Bedir on 20.06.2022.
//

import Foundation
import UIKit

public extension Optional where Wrapped == Int {
    func toDouble() -> Double? {
        guard let self = self else { return nil }
        return Double(self)
    }

    func toCGFloat() -> CGFloat? {
        guard let self = self else { return nil }
        return CGFloat(self)
    }
}

public extension Int {
    func toDouble() -> Double {
        return Double(self)
    }

    func toCGFloat() -> CGFloat {
        return CGFloat(self)
    }
}
