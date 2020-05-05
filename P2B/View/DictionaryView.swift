//
//  DictionaryView.swift
//  P2B
//
//  Created by Кристина Перегудова on 04.05.2020.
//  Copyright © 2020 Кристина Перегудова. All rights reserved.
//

import SwiftUI
import RealmSwift
import Combine

struct DictionaryView: View {
    
    let realm = RealmObserver()
    @State var dict: [String] = []
        
    var body: some View {
        NavigationView {
            List {
                ForEach(dict, id: \.self) { i in
                    Text(i)
                }.onMove(perform: self.move)
                .onDelete(perform: self.delete)
            }.onAppear() {
                self.dict = self.realm.loadDictionary()
            }.navigationBarTitle("Dictionary")
            .navigationBarItems(trailing: EditButton())
        }
    }
    
    func move(from source: IndexSet, to destination: Int) {
        self.dict.move(fromOffsets: source, toOffset: destination)
        self.realm.dictionary.move(fromOffsets: source, toOffset: destination)
    }
            
    func delete(at offsets: IndexSet) {
        self.realm.deleteWord(word: self.dict[offsets.first!])
        self.dict.remove(atOffsets: offsets)
    }
}

struct DictionaryView_Previews: PreviewProvider {
    static var previews: some View {
        DictionaryView()
    }
}
