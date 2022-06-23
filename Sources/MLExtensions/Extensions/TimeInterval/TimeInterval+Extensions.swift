//
//  TimeInterval+Extensions.swift
//  WeatherApp
//
//  Created by Alaattin Bedir on 20.06.2022.
//

import Foundation

public extension TimeInterval {
    var seconds: Int { Int(self) }
    var days: Int { Int(ceil(Double(seconds) / 86400)) }
}
