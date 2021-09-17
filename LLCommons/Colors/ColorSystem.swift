//
//  ColorSystem.swift
//  LLCommons
//
//  Created by Igor Custodio on 16/09/21.
//

import UIKit

// MARK: - Extension

public extension UIColor {
    struct ColorSystem {
        public struct Base {
            public static let pureBlack = UIColor(hex: "#000000")
            public static let black = UIColor(hex: "272727")
            public static let white = UIColor(hex: "#FFFFFF")
        }
        
        public struct Complementary {
            
        }
        
        public struct Transparent {
            public static let black10 = UIColor(hex: "272727", alpha: 0.1)
            public static let black20 = UIColor(hex: "272727", alpha: 0.2)
            public static let black30 = UIColor(hex: "272727", alpha: 0.3)
            public static let black40 = UIColor(hex: "272727", alpha: 0.4)
            public static let black50 = UIColor(hex: "272727", alpha: 0.5)
            public static let black60 = UIColor(hex: "272727", alpha: 0.6)
            public static let black70 = UIColor(hex: "272727", alpha: 0.7)
            public static let black80 = UIColor(hex: "272727", alpha: 0.8)
            public static let black90 = UIColor(hex: "272727", alpha: 0.9)
            
            public static let white10 = UIColor(hex: "FFFFFF", alpha: 0.1)
            public static let white20 = UIColor(hex: "FFFFFF", alpha: 0.2)
            public static let white30 = UIColor(hex: "FFFFFF", alpha: 0.3)
            public static let white40 = UIColor(hex: "FFFFFF", alpha: 0.4)
            public static let white50 = UIColor(hex: "FFFFFF", alpha: 0.5)
            public static let white60 = UIColor(hex: "FFFFFF", alpha: 0.6)
            public static let white70 = UIColor(hex: "FFFFFF", alpha: 0.7)
            public static let white80 = UIColor(hex: "FFFFFF", alpha: 0.8)
            public static let white90 = UIColor(hex: "FFFFFF", alpha: 0.9)
        }
        
        public struct Alert {
            
        }
    }
}

// MARK: - Typealias

public typealias DSColor = UIColor.ColorSystem
