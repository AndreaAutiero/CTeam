//
//  LabelDetail.swift
//  CTeam
//
//  Created by Andrea Autiero on 12/05/22.
//

import SwiftUI

struct LabelDetail: View {
    var label: String
    var detail: String
    var body: some View {
        HStack {
            Text(label)
            Spacer()
            Text(detail).foregroundColor(Color.secondary)
        }.padding()
    }
}

struct LabelDetail_Previews: PreviewProvider {
    static var previews: some View {
        LabelDetail(label: "label", detail: "detail")
    }
}
