//
//  ContentView.swift
//  CTeam
//
//  Created by Andrea Autiero on 10/04/22.
//

import SwiftUI

struct ContentView: View {
    init() {
        UITabBar.appearance().backgroundColor = .systemBackground
    }
    var body: some View {
        TabView {
            CircuitsView()
                .tabItem {
                    Label("ui.nav.circuits".localized, systemImage: "car.fill")
                }

            ScoreView()
                .tabItem {
                    Label("ui.nav.scores".localized, systemImage: "cursorarrow.motionlines.click")
                }
    
            GroupView()
                .tabItem {
                    Label("ui.nav.groups".localized, systemImage:
                    "person.3.fill")
                }
        }.accentColor(.celesteScuro)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
