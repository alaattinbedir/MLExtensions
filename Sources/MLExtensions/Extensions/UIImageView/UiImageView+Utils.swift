//
//  UiImageView+Utils.swift
//  WeatherApp
//
//  Created by Alaattin Bedir on 20.06.2022.
//

import Foundation
import UIKit

public extension UIImageView {
    override var intrinsicContentSize: CGSize {
        guard image != nil else { return .zero }
        return super.intrinsicContentSize
    }

    func mask(with image: UIImage) {
        let maskLayer = CALayer()
        maskLayer.contents = image.cgImage
        maskLayer.frame = CGRect(x: 0, y: 0, width: frame.width, height: frame.height)
        layer.mask = maskLayer
        layer.masksToBounds = true
    }
}
