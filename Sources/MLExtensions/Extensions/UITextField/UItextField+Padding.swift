//
//  UItextField+Padding.swift
//  WeatherApp
//
//  Created by Alaattin Bedir on 20.06.2022.
//

import Foundation
import UIKit

public extension UITextField {
    func setLeftPadding(leftPadding: CGFloat) {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: leftPadding, height: frame.height))
        leftView = paddingView
        leftViewMode = .always
    }

    func setRightPadding(rightPadding: CGFloat) {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: rightPadding, height: frame.height))
        rightView = paddingView
        rightViewMode = .always
    }

    func setLeftImage(_ image: UIImage?, width: CGFloat, height: CGFloat, padding: CGFloat) {
        let imageView = UIImageView(image: image)
        imageView.frame = CGRect(x: padding, y: 0, width: width, height: height)
        imageView.contentMode = .center

        let containerView = UIView(frame: CGRect(x: 0, y: 0, width: width + 2 * padding, height: height))
        containerView.addSubview(imageView)
        leftView = containerView
        leftViewMode = .always
    }
}
