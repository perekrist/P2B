//
//  DictionaryView.swift
//  P2B
//
//  Created by Кристина Перегудова on 03.06.2020.
//  Copyright © 2020 Кристина Перегудова. All rights reserved.
//

import SwiftUI

struct DictionaryView: View {
    
    @State private var words: [String] = ["Banana", "Coffee", "Green", "Blue", "Cat", "Dog", "Banana", "Coffee", "Green", "Blue", "Cat", "Dog"]
    
    var body: some View {
        NavigationView {
            List(words, id: \.self) { word in
                Text(word)
            }.navigationBarTitle("Dictionary")
        }
    }
}

struct DictionaryView_Previews: PreviewProvider {
    static var previews: some View {
        DictionaryView()
    }
}
