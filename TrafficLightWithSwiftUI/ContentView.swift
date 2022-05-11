//
//  ContentView.swift
//  TrafficLightWithSwiftUI
//
//  Created by Aleksandr Rybachev on 11.05.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        let size: CGFloat = 120
        
        ZStack {
            Color(.gray)
                .ignoresSafeArea()
            VStack {
                VStack {
                    ColorCircleView(color: .red, size: size, alpha: 1)
                    ColorCircleView(color: .orange, size: size, alpha: 1)
                    ColorCircleView(color: .green, size: size, alpha: 1)
                }
                .lineSpacing(20)
                Spacer()
                Button(action: {}) {
                    Text("START")
                        .padding(EdgeInsets(top: 5, leading: 15, bottom: 5, trailing: 15))
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        }
                .clipShape(RoundedRectangle(cornerRadius: 16))
                .overlay(RoundedRectangle(cornerRadius: 16).stroke(lineWidth: 2))
            }
            .padding(EdgeInsets(top: 40, leading: 0, bottom: 20, trailing: 0))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
