//
//  DictionaryView.swift
//  AR-English
//
//  Created by Дарья Перевертайло on 13.06.2020.
//  Copyright © 2020 Дарья Перевертайло. All rights reserved.
//

import SwiftUI

struct DictionaryView: View {
    
    @State private var words: [Word] = [Word(id: 0, name: "Banana", translate: "Банан", image: "banana"),
                                        Word(id: 1, name: "Coffee", translate: "Кофе", image: "coffee"),
                                        Word(id: 2, name: "Green", translate: "Зеленый", image: "green"),
                                        Word(id: 3, name: "Blue", translate: "Синий", image: "blue"),
                                        Word(id: 4, name: "Cat", translate: "Кот", image: "cat"),
                                        Word(id: 5, name: "Dog", translate: "Собака", image: "dog")
    ]
    
    var body: some View {
        VStack {
            
            List(words) { word in
                HStack {
                    Image(word.image)
                        .resizable()
                        .frame(width: 50, height: 50)
                        .scaledToFit()
                        .clipShape(Circle())
                    
                    VStack {
                        Text(word.name)
                            .font(.largeTitle)
                            .foregroundColor(.black)
                        
                        Text(word.translate)
                            .font(.title)
                            .foregroundColor(.gray)
                    }
                    
                    Spacer()
                    
                    Image(systemName: "chevron.right")
                }
            }
        }
        
    }
}

struct DictionaryView_Previews: PreviewProvider {
    static var previews: some View {
        DictionaryView()
    }
}
