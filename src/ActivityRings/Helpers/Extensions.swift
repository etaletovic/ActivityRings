//
//  Extensions.swift
//  ActivityRings
//
//  Created by Emir Taletovic on 2/16/20.
//  Copyright © 2020 Emir Taletovic. All rights reserved.
//

import SwiftUI
import Foundation

extension Color {
    
    public static var outlineRed: Color {
        return Color(decimalRed: 49, green: 4, blue: 16)
    }
    
    public static var darkRed: Color {
        return Color(decimalRed: 247, green: 27, blue: 83)
    }
    
    public static var lightRed: Color {
        return Color(decimalRed: 246, green: 61, blue: 134)
    }
    
    public static var outlineBlue: Color {
        return Color(decimalRed: 7, green: 58, blue: 54)
    }
    
    public static var darkBlue: Color {
        return Color(decimalRed: 37, green: 216, blue: 253)
    }
    
    public static var lightBlue: Color {
        return Color(decimalRed: 42, green: 252, blue: 169)
    }
    
    public static var outlineGreen: Color {
        return Color(decimalRed: 34, green: 50, blue: 4)
    }
    
    public static var darkGreen: Color {
        return Color(decimalRed: 156, green: 253, blue: 50)
    }
    
    public static var lightGreen: Color {
        return Color(decimalRed: 215, green: 252, blue: 53)
    }
    
    public init(decimalRed red: Double, green: Double, blue: Double) {
        self.init(red: red / 255, green: green / 255, blue: blue / 255)
    }
}
