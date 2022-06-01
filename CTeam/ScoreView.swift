//
//  ScoreView.swift
//  CTeam
//
//  Created by Andrea Autiero on 11/04/22.
//

import SwiftUI

struct ScoreView: View {
    @State var selectedIndex: Int = 0
    var body: some View {
        ColoredNavigationView {
            VStack {
                ScrollView {
                    ForEach(circuits, id: \.self) { c in
                        NavigationLink(destination: ScoreInfoView(score: scores.filter({s in s.nome == c.nome}).first!)) {
                            CircuitCardView(fileImmagine: c.nomeFileImmagineCircuito)
                        }
                    }
                    .padding(EdgeInsets(top: 8, leading: 8, bottom: 0, trailing: 8))
                }
                
                Spacer(minLength: 0)
            }
            .navigationTitle("Score")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView()
    }
}
