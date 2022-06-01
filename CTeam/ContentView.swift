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
                    Label("Circuits", systemImage: "car.fill")
                }

            ScoreView()
                .tabItem {
                    Label("Score", systemImage: "cursorarrow.motionlines.click")
                }
    
            GroupView()
                .tabItem {
                    Label("Group", systemImage:
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
