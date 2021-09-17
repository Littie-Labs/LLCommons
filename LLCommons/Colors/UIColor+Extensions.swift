//
//  UIColor+Extensions.swift
//  LLCommons
//
//  Created by Igor Custodio on 16/09/21.
//

import UIKit

// MARK: - Extension

extension UIColor {
    public convenience init(r: CGFloat, g: CGFloat, b: CGFloat, a: CGFloat = 1.0) {
        self.init(red: r / 255.0, green: g / 255.0, blue: b / 255.0, alpha: a)
    }
    
    public convenience init(hex: String, alpha: CGFloat = 1.0) {
        let cleanHex = hex.replacingOccurrences(of: "#", with: "")
        
        let scanner = Scanner(string: cleanHex)
        scanner.currentIndex = scanner.string.startIndex
        
        var rgbValue: UInt64 = 0
        
        scanner.scanHexInt64(&rgbValue)
        
        let r = (rgbValue & 0xFF0000) >> 16
        let g = (rgbValue & 0xFF00) >> 8
        let b = rgbValue & 0xFF
        
        self.init(
            red: CGFloat(r) / 0xFF,
            green: CGFloat(g) / 0xFF,
            blue: CGFloat(b) / 0xFF,
            alpha: alpha
        )
    }
    
    static func == (l: UIColor, r: UIColor) -> Bool {
        var r1: CGFloat = 0
        var g1: CGFloat = 0
        var b1: CGFloat = 0
        var a1: CGFloat = 0
        
        l.getRed(&r1, green: &g1, blue: &b1, alpha: &a1)
        var r2: CGFloat = 0
        var g2: CGFloat = 0
        var b2: CGFloat = 0
        var a2: CGFloat = 0
        r.getRed(&r2, green: &g2, blue: &b2, alpha: &a2)
        
        return r1 == r2 && g1 == g2 && b1 == b2 && a1 == a2
    }
}
