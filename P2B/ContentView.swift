//
//  ContentView.swift
//  P2B
//
//  Created by Кристина Перегудова on 30.04.2020.
//  Copyright © 2020 Кристина Перегудова. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var isVisionPresented = false
    
    var body: some View {
        Button(action: {
            self.isVisionPresented.toggle()
        }) {
            Text("Go Descover!")
        }.sheet(isPresented: self.$isVisionPresented) {
            VisionController()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
