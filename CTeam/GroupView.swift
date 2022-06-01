//
//  GroupsView.swift
//  CTeam
//
//  Created by Andrea Autiero on 11/04/22.
//

import SwiftUI

struct GroupView: View {
    var body: some View {
        ColoredNavigationView {
            VStack {
                VStack {
                    ScrollView {
                        BubbleText(text: "ui.chat.faketext.1".localized, recipient: true, profilePicture: UIImage(named: "vicecapo"))
                        BubbleText(text: "ui.chat.faketext.2".localized, recipient: false, profilePicture: UIImage(named: "capo"))
                        BubbleText(text: "ui.chat.faketext.3".localized, recipient: true, profilePicture: UIImage(named: "vicecapo"))
                        BubbleText(text: "ui.chat.faketext.4".localized, recipient: true, profilePicture: UIImage(named: "vicecapo"))
                        Spacer()
                    }
                }
                .background(alignment: .bottomTrailing) {
                   Image(uiImage: UIImage(named: "uc2")!)
                }
                Spacer()
                HStack {
                    Spacer()
                    Text("ui.chat.template".localized)
                    Spacer()
                }
                .padding()
                .border(.black, width: 1.0)
                .background(.gray)
            }
            .navigationTitle("ui.nav.groups".localized)
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

struct GroupView_Previews: PreviewProvider {
    static var previews: some View {
        GroupView()
    }
}
