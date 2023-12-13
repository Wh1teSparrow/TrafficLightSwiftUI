//
//  LightView.swift
//  TrafficLight
//
//  Created by Kirill Syrtsev on 13.12.2023.
//

import SwiftUI

struct LightView: View {
    let color: Color
    var lightOn: Bool
    
    var body: some View {
        Circle()
            .frame(width: 100, height: 100, alignment: .center)
            .foregroundStyle(color)
            .opacity(lightOn ? 1 : 0.5)
            .overlay(
                Circle()
                    .stroke(Color.white, lineWidth: 5)
            )
    }
}
