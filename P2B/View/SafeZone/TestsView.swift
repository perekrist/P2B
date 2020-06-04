//
//  TestsView.swift
//  P2B
//
//  Created by Кристина Перегудова on 03.06.2020.
//  Copyright © 2020 Кристина Перегудова. All rights reserved.
//

import SwiftUI

struct TestsView: View {
    @State private var tests: [String] = ["test1", "test2", "test3"]
    
    var body: some View {
        NavigationView {
            List(tests, id: \.self) { test in
                
                VStack {
                    Image(test)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: UIScreen.main.bounds.width - 50)
                    
                }
                .padding()
                
            }.navigationBarTitle("Tests")
                .navigationBarItems(trailing:
                    Button(action: {
                        
                    }) {
                        Image(systemName: "person")
                    }.padding()
            )
        }
    }
}

struct TestsView_Previews: PreviewProvider {
    static var previews: some View {
        TestsView()
    }
}
