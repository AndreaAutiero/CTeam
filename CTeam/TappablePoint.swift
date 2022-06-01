//
//  TappablePoint.swift
//  CTeam
//
//  Created by Andrea Autiero on 11/05/22.
//

import Foundation
import SwiftUI

struct TappablePoint: Hashable {
    var point: CGPoint
    var text: String
}

extension CGPoint : Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(x)
        hasher.combine(y)
    }
}
