//
//  VideoThumbnail.swift
//  CTeam
//
//  Created by Andrea Autiero on 09/06/22.
//

import SwiftUI

struct VideoThumbnail: View {
    var image: UIImage?
    var body: some View {
        Image(uiImage: image!).resizable().aspectRatio(1, contentMode: .fit).border(.black, width: 1)
    }
}

struct VideoThumbnail_Previews: PreviewProvider {
    static var previews: some View {
        VideoThumbnail(image: nil)
    }
}
