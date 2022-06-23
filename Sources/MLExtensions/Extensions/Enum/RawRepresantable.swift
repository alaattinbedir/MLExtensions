//
//  RawRepresantable.swift
//  WeatherApp
//
//  Created by Alaattin Bedir on 20.06.2022.
//

import Foundation

public extension RawRepresentable {
    init?(rawValue optionalRawValue: RawValue?) {
        guard let rawValue = optionalRawValue, let value = Self(rawValue: rawValue) else { return nil }
        self = value
    }
}
