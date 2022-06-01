//
//  LiveTrackDemo.swift
//  CTeam
//
//  Created by Andrea Autiero on 11/05/22.
//

import SwiftUI

struct LiveTrackDemo: View {
    var photography: Image
    var tappableAreas: [TappablePoint]
    var poemString: String
    @State var text: String = ""
    @State var displayPoem: Bool = false
    var body: some View {
        VStack {
            photography.resizable().scaledToFit().overlay(alignment: .topLeading) {
                ForEach(tappableAreas, id: \.self) { ta in
                    Rectangle().fill(Color.red).frame(width: 12, height: 12, alignment: .center).cornerRadius(6).opacity(0.45).offset(x: ta.point.x, y: ta.point.y).onTapGesture {
                        text = ta.text
                    }
                }
            }
            Spacer()
            Text(text.localized)
            Spacer()
        }.navigationTitle("ui.circuit.track".localized)
            .toolbar {
                Image(systemName: "info.circle")
                    .foregroundColor(.white).popover(isPresented: $displayPoem) {
                        VStack {
                            HStack {
                                Spacer()
                                Image(systemName: "xmark.circle.fill").onTapGesture {
                                    displayPoem = false
                                }.padding()
                            }
                            ScrollView {
                                Text(poemString).padding()
                            }
                        }
                    }.onTapGesture {
                        displayPoem = true
                    }
            }
    }
}

struct LiveTrackDemo_Previews: PreviewProvider {
    static var previews: some View {
        LiveTrackDemo(photography: Image(uiImage: UIImage(named: circuits[0].nomeFileImmagineTrack)!), tappableAreas: circuits[0].tappablePoints, poemString: circuits[0].storia)
    }
}
