//
//  CoreNFC+Device.swift
//  WeatherApp
//
//  Created by Alaattin Bedir on 20.06.2022.
//

import Foundation
import CoreNFC

class CoreNFCUtil {
    static var hasNfcCapable: Bool {
        #if DEBUG
            return true
        #else
            guard #available(iOS 13.0, *), NFCNDEFReaderSession.readingAvailable else { return false }
            return true
        #endif
    }
}
