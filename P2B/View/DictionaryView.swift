//
//  DictionaryView.swift
//  P2B
//
//  Created by Кристина Перегудова on 04.05.2020.
//  Copyright © 2020 Кристина Перегудова. All rights reserved.
//

import SwiftUI

struct DictionaryView: View {
    var body: some View {
        List {
            ForEach(dict, id: \.self) { i in
                Text(i)
            }
        }
    }
}

struct DictionaryView_Previews: PreviewProvider {
    static var previews: some View {
        DictionaryView()
    }
}
