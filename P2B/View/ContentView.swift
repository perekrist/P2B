//
//  ContentView.swift
//  P2B
//
//  Created by Кристина Перегудова on 30.04.2020.
//  Copyright © 2020 Кристина Перегудова. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var status = UserDefaults.standard.value(forKey: "status") as? Bool ?? false
    
    var body: some View {
        VStack {
            if status {
                MainView()
            } else {
                LoginView()
            }
        }
        .onAppear {
            NotificationCenter.default.addObserver(forName: NSNotification.Name("status"), object: nil, queue: .main) { (_) in
                self.status = UserDefaults.standard.value(forKey: "status") as? Bool ?? false
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
