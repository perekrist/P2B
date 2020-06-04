//
//  MemoContainer.swift
//  P2B
//
//  Created by Кристина Перегудова on 07.05.2020.
//  Copyright © 2020 Кристина Перегудова. All rights reserved.
//
import Foundation
import SwiftUI

struct MemoContainer: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> UIViewController {
        let storyboard = UIStoryboard(name: "Memo", bundle: Bundle.main)
        let controller = storyboard.instantiateViewController(identifier: "Memo")
        return controller
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
        
    }
    
}
