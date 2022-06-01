//
//  LocalizationUtility.swift
//  CTeam
//
//  Created by Andrea Autiero on 19/04/22.
//

import Foundation

extension String {
  var localized: String {
        NSLocalizedString(self, comment: " ")
    }
}
