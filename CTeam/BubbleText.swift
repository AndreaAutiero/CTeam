//
//  BubbleText.swift
//  CTeam
//
//  Created by Andrea Autiero on 23/04/22.
//

import SwiftUI

struct BubbleText: View {
    var text: String
    var recipient: Bool
    var profilePicture: UIImage?
    var body: some View {
        HStack {
            if(!recipient) {
                Spacer()
                VStack {
                    Spacer()
                    Text("00:34").font(.footnote)
                }
            } else {
                Image(uiImage: profilePicture ?? UIImage.remove).resizable().aspectRatio(1, contentMode: .fit ).frame(width: 48, height: 48, alignment: .center).cornerRadius(24).padding([.leading])
            }
            HStack(alignment: .top) {
                if(recipient) {
                    Text(text).padding().background(.white)
                } else {
                    Text(text).padding().background(.green)
                }
            }
            .cornerRadius(12)
            .shadow(radius: 4)
            .padding(recipient ? [.top, .leading] : [.top, .trailing])
            if(recipient) {
                VStack {
                    Spacer()
                    Text("00:34").font(.footnote)
                }
                Spacer()
            } else {
                Image(uiImage: profilePicture ?? UIImage.remove).resizable().aspectRatio(1, contentMode: .fit ).frame(width: 48, height: 48, alignment: .center).cornerRadius(24).padding([.trailing])
            }
        }
    }
}

struct BubbleText_Previews: PreviewProvider {
    static var previews: some View {
        BubbleText(text: "Hello", recipient: true)
    }
}
