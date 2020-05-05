//
//  Realm.swift
//  P2B
//
//  Created by Кристина Перегудова on 05.05.2020.
//  Copyright © 2020 Кристина Перегудова. All rights reserved.
//

import Foundation
import RealmSwift

class RealmObserver {
    
    let config = Realm.Configuration(schemaVersion: 3)
    var dictionary: [String] = []
    
    init() {
        initTable()
    }
    
    func saveWord(word: Word) {
        if hasYet(word: word.word) {
            do {
                let realm = try Realm(configuration: config)
                let newWord = word
                try realm.write({
                    realm.add(newWord)
                })
                print("word saved")
            } catch {
                print(error.localizedDescription)
            }
        }
    }
    
    func hasYet(word: String) -> Bool {
        do {
            let realm = try Realm(configuration: config)
            let result = realm.objects(Word.self)
            for i in result {
                if i.word == word {
                    return true
                }
            }
            return false
        } catch {
            print(error.localizedDescription)
        }
        return true
    }
    
    func loadDictionary() -> [String] {
        do {
            let realm = try Realm(configuration: self.config)
            let result = realm.objects(Word.self)
            self.dictionary.removeAll()
            for i in result {
                self.dictionary.append(i.word)
            }
            print("dict loaded")
        } catch {
            print(error.localizedDescription)
        }
        return dictionary
    }
    
    func initTable() {
        do {
            let realm = try Realm(configuration: config)
            let newWord = Word()
            newWord.word = ""
            try realm.write({
                realm.add(newWord)
            })
            print("dict init")
        } catch {
            print(error.localizedDescription)
        }
    }
    
}
