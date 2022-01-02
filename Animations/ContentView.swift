//
//  ContentView.swift
//  Animations
//
//  Created by Vahtee Boo on 01.01.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var enabled = false
    
    var body: some View {
        
        Button("Tap Me") {
            enabled.toggle()
            }
       
        .frame(width: 200, height: 200)
//        .frame(width: enabled ? 200 : 300, height: enabled ? 200 : 300)
       
        .background(enabled ? .blue : .purple)
        .animation(nil, value: enabled)
        .foregroundColor(.white)
        .clipShape(RoundedRectangle(cornerRadius: enabled ? 60 : 0))
        .animation(.interpolatingSpring(stiffness: 10, damping: 1), value: enabled)
//        .clipShape(Circle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
