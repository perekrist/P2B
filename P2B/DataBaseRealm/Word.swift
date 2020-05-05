//
//  Word.swift
//  P2B
//
//  Created by Кристина Перегудова on 05.05.2020.
//  Copyright © 2020 Кристина Перегудова. All rights reserved.
//

import Foundation
import RealmSwift

class Word: Object {
    @objc dynamic var word = ""
    @objc dynamic var wDescription = ""
    @objc dynamic var created = NSDate()
}

//class WordCategory: Object {
//    @objc dynamic var name = ""
//}
//
//class WordType: Object {
//    @objc dynamic var name = ""
//}
