//
//  ContentView.swift
//  Animations
//
//  Created by Vahtee Boo on 01.01.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var animationAmount = 0.7
    
    var body: some View {
            Button("Tap Me") {
                animationAmount += 0.3
            }
            .padding(50)
            .background(.red)
            .foregroundColor(.white)
            .clipShape(Circle())
            .scaleEffect(animationAmount)
            .blur(radius: (animationAmount - 1) * 3)
            .animation(.default, value: animationAmount)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
