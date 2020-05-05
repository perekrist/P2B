//
//  DictionaryView.swift
//  P2B
//
//  Created by Кристина Перегудова on 04.05.2020.
//  Copyright © 2020 Кристина Перегудова. All rights reserved.
//

import SwiftUI
import RealmSwift

struct DictionaryView: View {
    
    let realm = RealmObserver()
    @State var dict: [String] = []
        
    var body: some View {
        NavigationView {
            List {
                ForEach(dict, id: \.self) { i in
                    Text(i)
                }
            }.onAppear() {
                self.dict = self.realm.loadDictionary()
            }.navigationBarTitle("Dictionary")
        }
    }
}

struct DictionaryView_Previews: PreviewProvider {
    static var previews: some View {
        DictionaryView()
    }
}
