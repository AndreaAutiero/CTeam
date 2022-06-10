//
//  VideoSelectorView.swift
//  CTeam
//
//  Created by Andrea Autiero on 07/06/22.
//

import SwiftUI
import AVKit

let videoURL = URL(fileURLWithPath: Bundle.main.path(forResource: "video5823576874252504124", ofType: "mp4")!)
let avPlayer = AVPlayer(url: videoURL)

struct VideoSelectorView: View {
    @State var dispAlert: Bool = false;
    var videoList: [String];
    var body: some View {
        ScrollView {
            LazyVGrid(columns: [ GridItem(.flexible()), GridItem(.flexible()) ], alignment: .center) {
                NavigationLink(destination: VideoPlayer(player: avPlayer).onDisappear(perform: {
                    avPlayer.pause();
                    avPlayer.seek(to: .zero)
                }).onAppear(perform: {
                    avPlayer.play()
                })) {
                    VideoThumbnail(image: getThumbnailFrom(path: videoURL))
                }
                ForEach((1...7).sorted(), id: \.self) {_ in
                    Button(role: .none, action: {
                        dispAlert = true
                    }) {
                        VideoThumbnail(image: UIImage(named: "technology-digital-cyber-security-lock-background-vector-15927480"))
                    }.alert("fakelock.label".localized, isPresented: $dispAlert) {
                        Button("dismiss.label".localized, role: .cancel) {
                            dispAlert = false
                        }
                    }
                }
            }.padding()
        }.navigationTitle("ui.nav.title.dvdvideo".localized).navigationBarTitleDisplayMode(.inline)
    }
}

struct VideoSelectorView_Previews: PreviewProvider {
    static var previews: some View {
        VideoSelectorView(videoList: [])
    }
}
