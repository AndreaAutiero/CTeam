//
//  ListRow.swift
//  CTeam
//
//  Created by Andrea Autiero on 16/04/22.
//

import SwiftUI

struct ListRow: View {
    var image: UIImage
    var link: Bool
    var text: String
    var body: some View {
        HStack {
            Image(uiImage: image).resizable().scaledToFit().frame(width: 16, alignment: .center)
            Text(text)
            Spacer()
            if link {
//                Image(systemName: "chevron.right")
            }
        }
    }
}

struct ListRow_Previews: PreviewProvider {
    static var previews: some View {
        ListRow(image: UIImage.checkmark, link: true, text: "Item")
    }
}
