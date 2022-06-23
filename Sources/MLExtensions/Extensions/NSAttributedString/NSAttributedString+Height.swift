//
//  NSAttributedString+Height.swift
//  WeatherApp
//
//  Created by Alaattin Bedir on 20.06.2022.
//

import Foundation
import UIKit

public extension NSAttributedString {
    func height(containerWidth: CGFloat) -> CGFloat {
        let rect = boundingRect(with: CGSize(width: containerWidth, height: CGFloat.greatestFiniteMagnitude),
                                options: [.usesLineFragmentOrigin, .usesFontLeading],
                                context: nil)
        return ceil(rect.size.height)
    }

    func width(containerHeight: CGFloat) -> CGFloat {
        let rect = boundingRect(with: CGSize(width: CGFloat.greatestFiniteMagnitude, height: containerHeight),
                                options: [.usesLineFragmentOrigin, .usesFontLeading],
                                context: nil)
        return ceil(rect.size.width)
    }
}
