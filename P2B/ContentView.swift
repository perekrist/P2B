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
            .padding()
            .sheet(isPresented: self.$isVisionPresented) {
                VisionViewController()
            }
            
            Button(action: {
                self.isARViewPresented.toggle()
            }) {
                Text("Go AR!")
            }
            .padding()
            .sheet(isPresented: self.$isARViewPresented) {
                ARViewContainer()
            }
            
            List {
                ForEach(dict, id: \.self) { i in
                    Text(i)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
