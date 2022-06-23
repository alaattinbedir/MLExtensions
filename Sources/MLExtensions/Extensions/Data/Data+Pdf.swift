//
//  Data+Pdf.swift
//  WeatherApp
//
//  Created by Alaattin Bedir on 20.06.2022.
//

import Foundation


public extension Data {
    func savePdfFile(with fileName: String?) -> String? {
        guard let fileName = fileName else {
            return nil
        }

        let filePath = "\(NSTemporaryDirectory())" + fileName + ".pdf"

        do {
            try FileManager.default.setAttributes([FileAttributeKey.protectionKey: FileProtectionType.complete], ofItemAtPath: filePath)
            try write(to: URL(fileURLWithPath: filePath), options: [.atomic, .completeFileProtection])
        } catch {
            return nil
        }

        return filePath
    }

    func isAcceptablePdf() -> Bool {
        let nsData = self as NSData
        guard nsData.length >= 1024 else {
            return false
        }

        var pdfBytes = [UInt8]()
        pdfBytes = [0x25, 0x50, 0x44, 0x46]

        let pdfHeader = NSData(bytes: pdfBytes, length: 4)
        let range = nsData.range(of: pdfHeader as Data, options: .anchored, in: NSRange(location: 0, length: 1024))

        return range.length > 0
    }
}
