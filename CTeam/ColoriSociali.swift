//
//  ColoriSociali.swift
//  CTeam
//
//  Created by Andrea Autiero on 16/04/22.
//

import Foundation
import SwiftUI

extension Color {
    static var celesteChiaro: Color {
        return Color.init(red: 28/255, green: 129/255, blue: 217/255)
    }

    static var celesteScuro: Color {
        return Color.init(red: 0, green: 46/255, blue: 81/255)
    }

    static var azzurroCielo: Color {
        return Color.init(red: 105/255, green: 188/255, blue: 237/255)
    }

    static var rossoFuoco: Color {
        get {
            return Color.init(red: 236/255, green: 29/255, blue: 36/255)
        }
    }
}

extension UIColor {
    static var celesteChiaro: UIColor {
        return UIColor(Color.celesteChiaro)
    }

    static var celesteScuro: UIColor {
        return UIColor(Color.celesteScuro)
    }

    static var azzurroCielo: UIColor {
        return UIColor(Color.azzurroCielo)
    }

    static var rossoFuoco: UIColor {
        return UIColor(Color.rossoFuoco)
    }
}
