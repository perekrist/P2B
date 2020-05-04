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
    
    var body: some View {
        TabView {
            HomeView().tabItem {
                Image(systemName: "house.fill")
                Text("Home")
            }
            
            DictionaryView().tabItem {
                Image(systemName: "list.number")
                Text("Dictionary")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
