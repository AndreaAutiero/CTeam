//
//  InformationView.swift
//  CTeam
//
//  Created by Andrea Autiero on 16/04/22.
//

import SwiftUI

struct InformationView: View {
    var body: some View {
        List {
            Link(destination: URL(string: "mailto:businessdivision@uninacorse.com")!) {
                ListRow(image: UIImage.init(systemName: "message")!, link: false, text: "ui.sendmail".localized)
            }
            NavigationLink(destination: WallOfTextView()) {
                ListRow(image: UIImage.init(systemName: "person.3.fill")!, link: false, text: "ui.about".localized)
            }
        }
        .listStyle(.plain)
        .navigationTitle("Info")
    }
}

struct WallOfTextView: View {
    var body: some View {
        Text("unina.cteam.poem".localized)
    }
}

struct InformationView_Previews: PreviewProvider {
    static var previews: some View {
        InformationView()
    }
}
