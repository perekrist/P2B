//
//  MainView.swift
//  P2B
//
//  Created by Кристина Перегудова on 19.05.2020.
//  Copyright © 2020 Кристина Перегудова. All rights reserved.
//

import SwiftUI
import Firebase

struct MainView: View {
    var body: some View {
        VStack {
            
            HStack {
                Spacer()
                
                Button(action: {
                    
                }) {
                    Image(systemName: "person")
                    
                }.padding()
            }
            
            TabView {
                DictionaryView()
                    .tabItem {
                        Image(systemName: "list.dash")
                        Text("Dictionary")
                }
                LocationsView()
                    .tabItem {
                        Image(systemName: "location")
                        Text("Locations")
                }
                GamesView()
                    .tabItem {
                        Image(systemName: "gamecontroller")
                        Text("Games")
                }
                TestsView()
                    .tabItem {
                        Image(systemName: "square.and.pencil")
                        Text("Tests")
                }
            }
        }
    }
    
    func LogOut() {
        try! Auth.auth().signOut()
        UserDefaults.standard.set(false, forKey: "status")
        NotificationCenter.default.post(name: NSNotification.Name("status"), object: nil)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
