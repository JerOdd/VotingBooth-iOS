//
//  Color+Extension.swift
//  VotingBooth
//
//  Created by Jérémy Oddos on 22/10/2026.
//

import SwiftUI

extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet(charactersIn: "#"))
        let value = UInt64(hex, radix: 16) ?? 0
        self.init(
            red:   Double((value >> 16) & 0xFF) / 255,
            green: Double((value >> 8)  & 0xFF) / 255,
            blue:  Double(value         & 0xFF) / 255
        )
    }
    
    var contrastingTextColor: Color {
        var r: CGFloat = 0, g: CGFloat = 0, b: CGFloat = 0, a: CGFloat = 0
        UIColor(self).getRed(&r, green: &g, blue: &b, alpha: &a)

        // Perceived brightness: the eye is most sensitive to green, least to blue
        let brightness = 0.299 * r + 0.587 * g + 0.114 * b
        return brightness > 0.6 ? .black : .white
    }
}
