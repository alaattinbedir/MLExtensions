//
//  Double+AlmostEqual.swift
//  WeatherApp
//
//  Created by Alaattin Bedir on 20.06.2022.
//

import Foundation

public extension Double {
    func almostEqual(_ right: Double) -> Bool {
        return fabs(distance(to: right)) <= Double.ulpOfOne
    }
}
