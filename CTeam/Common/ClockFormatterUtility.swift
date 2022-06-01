//
//  ClockFormatterUtility.swift
//  CTeam
//
//  Created by Andrea Autiero on 30/04/22.
//

import Foundation

let formatter = NumberFormatter()

extension Float {
    var asWallclockTime: String {
        // String(Int(self / 60)) + ":" + String(format: "%02.3f", self.truncatingRemainder(dividingBy: 60))
        formatter.minimumFractionDigits = 3
        formatter.maximumFractionDigits = 3
        formatter.minimumIntegerDigits = 2

        return String(Int(self / 60)) + ":" + formatter.string(from: NSNumber(value: self.truncatingRemainder(dividingBy: 60)))!
    }
}
