//
//  ContentView.swift
//  P2B
//
//  Created by Кристина Перегудова on 30.04.2020.
//  Copyright © 2020 Кристина Перегудова. All rights reserved.
//

import SwiftUI

var dict: [String] = []

struct ContentView: View {
    
    @State var isVisionPresented = false
    @State var isARViewPresented = false
    
    var body: some View {
        VStack {
            Button(action: {
                self.isVisionPresented.toggle()
            }) {
                Text("Go Discover!")
            }
            Button(action: {
                self.isARViewPresented.toggle()
            }) {
                Text("Go AR!")
            }
            List {
                ForEach(dict, id: \.self) { i in
                    Text(i)
                }
            }
        }
        .sheet(isPresented: self.$isVisionPresented) {
            VisionViewController()
        }
        .sheet(isPresented: self.$isARViewPresented) {
            ARViewContainer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
