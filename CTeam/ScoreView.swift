//
//  ScoreView.swift
//  CTeam
//
//  Created by Andrea Autiero on 11/04/22.
//

import SwiftUI

struct ScoreView: View {
    @State var selectedIndex: Int = 0
    
    @State private var searchText = ""

    var filteredCircuits: [Circuit] {
        if(searchText.isEmpty) {
            return circuits
        } else {
            return circuits.filter { $0.nome.contains(searchText) }
        }
    }

    var body: some View {
        ColoredNavigationView {
            VStack {
                ScrollView {
                    ForEach(filteredCircuits, id: \.self) { c in
                        NavigationLink(destination: ScoreInfoView(score: scores.filter({s in s.nome == c.nome}).first!)) {
                            CircuitCardView(fileImmagine: c.nomeFileImmagineCircuito)
                        }
                    }
                    .padding(EdgeInsets(top: 8, leading: 8, bottom: 0, trailing: 8))
                }
                
                Spacer(minLength: 0)
            }
            .navigationTitle("ui.nav.scores".localized)
            .navigationBarTitleDisplayMode(.large)
            .searchable(text: $searchText).foregroundColor(.white)
        }
    }
}

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView()
    }
}
