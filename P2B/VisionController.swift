//
//  VisionController.swift
//  P2B
//
//  Created by Кристина Перегудова on 30.04.2020.
//  Copyright © 2020 Кристина Перегудова. All rights reserved.
//

import SwiftUI

struct VisionController: UIViewControllerRepresentable {
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<VisionController>) -> VisionController.UIViewControllerType {
        
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let controller = storyboard.instantiateViewController(identifier: "Vision")
        return controller
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<VisionController>) {
        
    }
    
    
    
}
