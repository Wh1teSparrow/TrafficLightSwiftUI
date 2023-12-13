//
//  ContentView.swift
//  TrafficLight
//
//  Created by Kirill Syrtsev on 13.12.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var lightColors: [Color] = [.red, .yellow, .green]
    @State private var currentLightIndex = -1
    
    var body: some View {
        
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            VStack {
                LightView(color: lightColors[0], lightOn: currentLightIndex == 0)
                LightView(color: lightColors[1], lightOn: currentLightIndex == 1)
                LightView(color: lightColors[2], lightOn: currentLightIndex == 2)
                
                Spacer()
                
                Button(action: {
                    if currentLightIndex < lightColors.count - 1 {
                        currentLightIndex = currentLightIndex + 1
                    } else {
                        currentLightIndex = -1
                    }
                }
                        
                ) {
                    Text("NEXT")
                        .bold()
                        .font(.largeTitle)
                        .frame(width: 150, height: 50, alignment: .center)
                        .foregroundStyle(.white)
                        .background(Color.green)
                        .clipShape(.rect(cornerRadius: 10))
                        .overlay {
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.white, lineWidth: 5)
                        }
                }
            }
            .padding(50)
        }
    }
}


#Preview {
    ContentView()
}
