//
//  ChangeLightButtonView.swift
//  TrafficLightWithSwiftUI
//
//  Created by Aleksandr Rybachev on 11.05.2022.
//

import SwiftUI

struct ChangeLightButtonView: View {
    
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .padding(EdgeInsets(top: 5, leading: 15, bottom: 5, trailing: 15))
                .background(Color.blue)
                .foregroundColor(.white)
                .font(.largeTitle)
                }
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .overlay(RoundedRectangle(cornerRadius: 16).stroke(lineWidth: 2))
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ChangeLightButtonView(title: "START", action: {})
    }
}
