//
//  ContentView.swift
//  ColorPicker
//
//  Created by GD on 23.8.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State var SwiftyColor: Color = .red
    var body: some View {
        VStack {
            
            ColorPicker("Swifty Color", selection: $SwiftyColor)
            
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .padding(25)
                .foregroundColor(.white)
                .opacity(0.7)
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
