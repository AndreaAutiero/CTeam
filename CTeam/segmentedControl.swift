//
//  segmentedControl.swift
//  MixMe
//
//  Created by Fabiana Ferrara on 01/02/22.
//

import Foundation
import SwiftUI

struct SegmentedControlView: View {
    @Binding private var selectedIndex: Int

    @State private var frames: Array<CGRect>
    @State private var backgroundFrame = CGRect.zero

    private let titles: [String]

    init(selectedIndex: Binding<Int>, titles: [String]) {
        self._selectedIndex = selectedIndex
        self.titles = titles
        frames = Array<CGRect>(repeating: .zero, count: titles.count)
    }

    var body: some View {
        VStack {
                SegmentedControlButtonView(selectedIndex: $selectedIndex, frames: $frames, backgroundFrame: $backgroundFrame, titles: titles)
            }
        .background(
            GeometryReader { geoReader in
                Color.clear.preference(key: RectPreferenceKey.self, value: geoReader.frame(in: .global))
                    .onPreferenceChange(RectPreferenceKey.self) {
                    self.setBackgroundFrame(frame: $0)
                }
            }
        )
    }

    private func setBackgroundFrame(frame: CGRect)
    {
        backgroundFrame = frame
    }
}

private struct SegmentedControlButtonView: View {
    @Binding private var selectedIndex: Int
    @Binding private var frames: [CGRect]
    @Binding private var backgroundFrame: CGRect

    private let titles: [String]

    init(selectedIndex: Binding<Int>, frames: Binding<[CGRect]>, backgroundFrame: Binding<CGRect>, titles: [String])
    {
        _selectedIndex = selectedIndex
        _frames = frames
        _backgroundFrame = backgroundFrame
        self.titles = titles
    }

    var body: some View {
        HStack(spacing: 0) {
            ForEach(titles.indices, id: \.self) { index in
                Button(action:{ selectedIndex = index })
                {
                    HStack {
                        Text(titles[index])
                            .frame(height: 12)
                            .font(.system(size: 14))
                    }
                }
                .buttonStyle(CustomSegmentButtonStyle())
                .background(
                    GeometryReader { geoReader in
                        Color.clear.preference(key: RectPreferenceKey.self, value: geoReader.frame(in: .global))
                            .onPreferenceChange(RectPreferenceKey.self) {
                                self.setFrame(index: index, frame: $0)
                            }
                    }
                )
            }
        }
        .modifier(UnderlineModifier(selectedIndex: selectedIndex, frames: frames))
    }

    private func setFrame(index: Int, frame: CGRect) {
        self.frames[index] = frame
    }
}

private struct CustomSegmentButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(EdgeInsets(top: 14, leading: 20, bottom: 14, trailing: 20))
    }
}

