//
//  ColoredNavigationView.swift
//  CTeam
//
//  Created by Andrea Autiero on 16/04/22.
//

import SwiftUI

struct ColoredNavigationView<Content: View>: View {
    @ViewBuilder var content: Content
    init(@ViewBuilder builder: @escaping () -> Content) {
        let coloredAppearance = UINavigationBarAppearance()
        coloredAppearance.configureWithTransparentBackground()
        coloredAppearance.backgroundColor = .clear
        coloredAppearance.backgroundColor = .celesteScuro
        coloredAppearance.backgroundEffect = nil
        coloredAppearance.backgroundImage = UIImage()
        coloredAppearance.shadowImage = UIImage()
        coloredAppearance.shadowColor = .clear
        coloredAppearance.titleTextAttributes = [
            .foregroundColor: UIColor.white
        ]
        coloredAppearance.largeTitleTextAttributes = [
            .foregroundColor: UIColor.white
        ]

        UINavigationBar.appearance().standardAppearance = coloredAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = coloredAppearance
        UINavigationBar.appearance().compactAppearance = coloredAppearance

        content = builder()
    }
    var body: some View {
        NavigationView {
            content
        }
        .accentColor(.white)
    }
}

struct ColoredNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        ColoredNavigationView {
            EmptyView()
        }
    }
}
