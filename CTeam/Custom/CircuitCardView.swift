//
//  CircuitCardView.swift
//  CTeam
//
//  Created by Andrea Autiero on 11/04/22.
//

import SwiftUI

struct CircuitCardView: View {
    var fileImmagine: String
    var body: some View {
        Image(uiImage: UIImage(named: fileImmagine)!)
            .resizable()
            .aspectRatio(370/280, contentMode: .fill)
    }
}

struct CircuitCardView_Previews: PreviewProvider {
    static var previews: some View {
        CircuitCardView(fileImmagine: "Monza-1")
    }
}
