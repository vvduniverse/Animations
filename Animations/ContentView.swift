//
//  ContentView.swift
//  Animations
//
//  Created by Vahtee Boo on 01.01.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var animationAmount = 1.0
    
    var body: some View {
        Button("Tap Me") {
//            animationAmount += 1
        }
        .padding(50)
        .background(.red)
        .foregroundColor(.white)
        .clipShape(Circle())
//        .scaleEffect(animationAmount)
        //            .blur(radius: (animationAmount - 1) * 3)
        .overlay(Circle()
                    .stroke(.red)
                    .scaleEffect(animationAmount)
                    .opacity(2 - animationAmount)
                    .animation(
                        .easeOut(duration: 1)
                        //                    .repeatCount(5, autoreverses: true),
                            .repeatForever(autoreverses: false),
                        value: animationAmount
                    )
        )
        .onAppear {
            animationAmount = 2
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
