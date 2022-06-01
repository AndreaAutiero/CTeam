//
//  CircuitsInfo.swift
//  CTeam
//
//  Created by Andrea Autiero on 30/04/22.
//

import SwiftUI

struct CircuitsInfo: View {
    var circuit: Circuit
    var body: some View {
        VStack {
            ScrollView {
                NavigationLink(destination: LiveTrackDemo(photography: Image(uiImage: UIImage(named: circuit.nomeFileImmagineTrack)!), tappableAreas: circuit.tappablePoints, poemString: circuit.storia)) {
                    CircuitCardView(fileImmagine: circuit.nomeFileImmagineTrack).padding(EdgeInsets(top: 8, leading: 8, bottom: 0, trailing: 8))
                }.overlay(
                    Text("ui.circuit.track".localized)
                        .bold()
                        .font(.system(size: 60))
                        .shadow(color: .white, radius: 0.4)
                        .shadow(color: .white, radius: 0.4)
                        .shadow(color: .white, radius: 0.4)
                        .shadow(color: .white, radius: 0.4)
                        .shadow(color: .white, radius: 0.4)
                        .padding(),
                    alignment: .bottomTrailing
                )
                NavigationLink(destination: DummyRentalView(dttm: Date())) {
                    CircuitCardView(fileImmagine: "Render bianco").padding(EdgeInsets(top: 8, leading: 8, bottom: 0, trailing: 8))
                }.overlay(
                    Text("ui.circuit.rental".localized)
                        .bold()
                        .font(.system(size: 60))
                        .shadow(color: .white, radius: 0.4)
                        .shadow(color: .white, radius: 0.4)
                        .shadow(color: .white, radius: 0.4)
                        .shadow(color: .white, radius: 0.4)
                        .shadow(color: .white, radius: 0.4)
                        .padding(),
                    alignment: .bottomTrailing
                )
                CircuitCardView(fileImmagine: "checkerboard").padding(EdgeInsets(top: 8, leading: 8, bottom: 0, trailing: 8)).overlay(
                    Text("ui.circuit.video".localized)
                        .bold()
                        .font(.system(size: 60))
                        .shadow(color: .white, radius: 0.4)
                        .shadow(color: .white, radius: 0.4)
                        .shadow(color: .white, radius: 0.4)
                        .shadow(color: .white, radius: 0.4)
                        .shadow(color: .white, radius: 0.4)
                        .padding(),
                    alignment: .bottomTrailing
                )
            }
            Spacer(minLength: 0)
        }
        .navigationTitle(circuit.nome)
        .navigationBarTitleDisplayMode(.large)
    }
}

struct CircuitsInfo_Previews: PreviewProvider {
    static var previews: some View {
        CircuitsInfo(circuit: circuits[0])
    }
}
