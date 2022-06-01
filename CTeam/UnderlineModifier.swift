//
//  UnderlineModifier.swift
//  MixMe
//
//  Created by Fabiana Ferrara on 01/02/22.
//
import Foundation
import SwiftUI

/// This modifier provides an animated underscore for the SegmentedControl.
struct UnderlineModifier: ViewModifier
{
    var selectedIndex: Int
    let frames: [CGRect]

    func body(content: Content) -> some View
    {
        content
            .background(
                Rectangle()
                    .fill(Color("NeonPurple"))
                    .frame(width: frames[selectedIndex].width, height: 2)
                    .offset(x: frames[selectedIndex].minX - frames[0].minX), alignment: .bottomLeading
            )
            .background(
                Rectangle()
                    .fill(Color.clear)
                    .frame(height: 1), alignment: .bottomLeading
                    
            )
            .animation(.default, value: selectedIndex)
    }
}

