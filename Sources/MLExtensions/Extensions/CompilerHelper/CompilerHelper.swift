//
//  CompilerHelper.swift
//  WeatherApp
//
//  Created by Alaattin Bedir on 20.06.2022.
//

import Foundation

class CompilerHelper {
    static var isGratherThanXCode13Compiler: Bool {
        #if compiler(>=5.5.1)
            return true
        #else
            return false
        #endif
    }
}
