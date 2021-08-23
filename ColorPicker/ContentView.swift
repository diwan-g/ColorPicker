//
//  ContentView.swift
//  ColorPicker
//
//  Created by GD on 23.8.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State var SwiftyColor: Color = .red
    @State var swiftyOpacity: Double = 0.7
    
    var body: some View {
        VStack {
            
            ColorPicker("Swifty Color", selection: $SwiftyColor)
            Slider(value: $swiftyOpacity, in: 0...1)
                .accentColor(SwiftyColor)
            
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .padding(25)
                .foregroundColor(.white)
                .opacity(swiftyOpacity)
                .background(SwiftyColor)
                .cornerRadius(50)
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
