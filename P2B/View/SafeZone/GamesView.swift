//
//  GamesView.swift
//  P2B
//
//  Created by Кристина Перегудова on 03.06.2020.
//  Copyright © 2020 Кристина Перегудова. All rights reserved.
//

import SwiftUI

struct GamesView: View {
    @State private var games: [String] = ["Memo", "Memo", "Memo", "Memo"]
    
    var body: some View {
        NavigationView {
            List(games, id: \.self) { game in
                
                VStack {
                    Text(game)
                        .font(.title)
                }
                .padding()
                .frame(width: UIScreen.main.bounds.width - 30, height: UIScreen.main.bounds.width / 2 + 50)
                .background(Color.init(self.generateRandomColor()).opacity(0.5))
                .cornerRadius(20)
                
                
                
            }.navigationBarTitle("Games")
        }
    }
    
    func generateRandomColor() -> UIColor {
        let hue : CGFloat = CGFloat(arc4random() % 256) / 256
        let saturation : CGFloat = CGFloat(arc4random() % 128) / 256 + 0.5
        let brightness : CGFloat = CGFloat(arc4random() % 128) / 256 + 0.5
        
        return UIColor(hue: hue, saturation: saturation, brightness: brightness, alpha: 1)
    }
}

struct GamesView_Previews: PreviewProvider {
    static var previews: some View {
        GamesView()
    }
}
