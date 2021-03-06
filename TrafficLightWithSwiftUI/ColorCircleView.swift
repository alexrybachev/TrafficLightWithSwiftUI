//
//  ColorCircleView.swift
//  TrafficLightWithSwiftUI
//
//  Created by Aleksandr Rybachev on 11.05.2022.
//

import SwiftUI

struct ColorCircleView: View {
    
    let color: Color
    let size: CGFloat
    let opacity: Double
    
    var body: some View {
        Circle()
            .foregroundColor(color.opacity(opacity))
            .frame(width: size, height: size)
            .overlay(Circle().stroke(Color.black, lineWidth: 2 ))
    }
}

struct ColorCircle_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircleView(color: .red, size: 250, opacity: 0.5)
    }
}
