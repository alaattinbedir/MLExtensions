//
//  Bool+xor.swift
//  WeatherApp
//
//  Created by Alaattin Bedir on 20.06.2022.
//

import Foundation

public extension Bool {
    func toString() -> String {
        return String(self)
    }

    func toRequestParam() -> String {
        return toString()
    }
}
