//
//  ContentView.swift
//  TrafficLightWithSwiftUI
//
//  Created by Aleksandr Rybachev on 11.05.2022.
//

import SwiftUI

enum CurrentLight {
    case red, yellow, green
}

struct ContentView: View {
    
    @State private var currentLight = CurrentLight.red
    @State private var buttonTitle = "START"
    
    private let size: CGFloat = 120
    private let lightOn: Double = 1
    private let lightOff: Double = 0.5
    
    var body: some View {
        ZStack {
            Color(.gray)
                .ignoresSafeArea()
            VStack {
                VStack {
                    ColorCircleView(color: .red, size: size, opacity: currentLight == .red ? lightOn : lightOff)
                    ColorCircleView(color: .yellow, size: size, opacity: currentLight == .yellow ? lightOn : lightOff)
                    ColorCircleView(color: .green, size: size, opacity: currentLight == .green ? lightOn : lightOff)
                }
                Spacer()
                ChangeLightButtonView(title: buttonTitle) {
                    if buttonTitle == "START" {
                        buttonTitle = "NEXT"
                    }
                    changeLight()
                }
            }
            .padding(EdgeInsets(top: 60, leading: 0, bottom: 60, trailing: 0))
        }
    }
}

// MARK: - Methods
extension ContentView {
    
    private func changeLight() {
        switch currentLight {
        case .red:
            currentLight = .yellow
        case .yellow:
            currentLight = .green
        case .green:
            currentLight = .red
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
