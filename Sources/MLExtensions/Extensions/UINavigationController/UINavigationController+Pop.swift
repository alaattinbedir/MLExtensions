//
//  UINavigationController+Pop.swift
//  WeatherApp
//
//  Created by Alaattin Bedir on 20.06.2022.
//

import Foundation
import UIKit

public extension UINavigationController {
    func popViewController(animated: Bool, completion: @escaping () -> Void) {
        popViewController(animated: animated)
        if let coordinator = transitionCoordinator, animated {
            coordinator.animate(alongsideTransition: nil) { _ in completion() }
        } else {
            completion()
        }
    }
}
