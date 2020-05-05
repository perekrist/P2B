//
//  HomeView.swift
//  P2B
//
//  Created by Кристина Перегудова on 04.05.2020.
//  Copyright © 2020 Кристина Перегудова. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    
    @State var isVisionPresented = false
    @State var isARViewPresented = false
    let voiceObserver = VoiceObserver()
    
    var body: some View {
        VStack {
            Button(action: {
                self.voiceObserver.voiceGenerator(word: "perekrist")
            }) {
                Text("play")
            }
            .padding()
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
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
