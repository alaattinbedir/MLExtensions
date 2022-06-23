//
//  Data+Extensions.swift
//  WeatherToday
//
//  Created by Alaattin Bedir on 10.06.2022.
//

import Foundation

public extension Data {
    func toPrettyPrintedJsonText() -> String {
        return toJsonText(options: [.prettyPrinted])
    }

    func toJsonText(options: JSONSerialization.WritingOptions = []) -> String {
        guard let object = toJsonObject(),
              let data = try? JSONSerialization.data(withJSONObject: object, options: options),
              let text = NSString(data: data, encoding: String.Encoding.utf8.rawValue) else { return "" }

        return text as String
    }

    func toJsonObject() -> Any? {
        return try? JSONSerialization.jsonObject(with: self, options: [])
    }

    struct HexEncodingOptions: OptionSet {
        public let rawValue: Int
        public static let upperCase = HexEncodingOptions(rawValue: 1 << 0)

        public init(rawValue: Int) {
            self.rawValue = rawValue
        }
    }

    func hexEncodedString(options: HexEncodingOptions = []) -> String {
        let format = options.contains(.upperCase) ? "%02hhX" : "%02hhx"
        return map { String(format: format, $0) }.joined()
    }
}
