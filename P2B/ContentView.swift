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
    
    var body: some View {
        VStack {
            Button(action: {
                self.isVisionPresented.toggle()
            }) {
                Text("Go Discover!")
            }.sheet(isPresented: self.$isVisionPresented) {
                VisionViewController()
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
