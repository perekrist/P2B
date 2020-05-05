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
    
    let config = Realm.Configuration(schemaVersion: 2)
    
    @State var dictionary: [String] = []
    
    var body: some View {
        List {
            ForEach(dictionary, id: \.self) { i in
                Text(i)
            }
        }.onAppear() {
            do {
                let realm = try Realm(configuration: self.config)
                let result = realm.objects(Word.self)
                self.dictionary.removeAll()
                for i in result {
                    self.dictionary.append(i.word)
                }
            } catch {
                print(error.localizedDescription)
            }
        }
    }
}

struct DictionaryView_Previews: PreviewProvider {
    static var previews: some View {
        DictionaryView()
    }
}
