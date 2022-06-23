//
//  UiTableViewCell+ReuseIdentifier.swift
//  WeatherApp
//
//  Created by Alaattin Bedir on 20.06.2022.
//

import Foundation
import UIKit

public extension UITableViewCell {
    static func nibFile() -> UINib {
        return UINib(nibName: String(describing: self), bundle: nil)
    }
}
