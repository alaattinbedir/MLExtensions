//
//  File.swift
//  
//
//  Created by Alaattin Bedir on 22.06.2022.
//

import Foundation

public extension NSNotification.Name {
    static let mdPushAnimationEnded: NSNotification.Name = NSNotification.Name("mdPushAnimationEnded")
    static let mdPushAnimationWillStart: NSNotification.Name = NSNotification.Name("mdPushAnimationWillStart")
    static let mdScreenActivityIndicatorEnded: NSNotification.Name = NSNotification.Name("mdScreenActivityIndicatorEnded")

    func post() {
        NotificationCenter.default.post(name: self, object: nil)
    }
}
