//
//  Double+Convert.swift
//  WeatherApp
//
//  Created by Alaattin Bedir on 20.06.2022.
//

import Foundation


public extension Optional where Wrapped == Double {
    func toInt() -> Int? {
        guard let self = self else { return nil }
        return Int(self)
    }

    func toString() -> String? {
        return self?.toString()
    }
}

public extension Double {
    func toString() -> String {
        return String(self)
    }
}
