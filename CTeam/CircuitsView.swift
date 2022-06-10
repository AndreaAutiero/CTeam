//
//  CircuitsView.swift
//  CTeam
//
//  Created by Andrea Autiero on 11/04/22.
//

import SwiftUI

struct CircuitsView: View {
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
                        NavigationLink(destination: CircuitsInfo(circuit: c)) {
                            CircuitCardView(fileImmagine: c.nomeFileImmagineCircuito)
                        }
                    }
                    .padding(EdgeInsets(top: 8, leading: 8, bottom: 0, trailing: 8))
                }
                Spacer(minLength: 0)
            }
            .navigationTitle("ui.nav.circuits".localized)
            .navigationBarTitleDisplayMode(.large)
            .searchable(text: $searchText).foregroundColor(.white)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: InformationView()) {
                        Image(systemName: "info.circle")
                            .foregroundColor(.white)
                    }
                }
            }
        }
    }
}

struct CircuitsView_Previews: PreviewProvider {
    static var previews: some View {
        CircuitsView()
    }
}
