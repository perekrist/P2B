//
//  ARMemoViewController.swift
//  P2B
//
//  Created by Кристина Перегудова on 07.05.2020.
//  Copyright © 2020 Кристина Перегудова. All rights reserved.
//

import UIKit
import RealityKit

class ARMemoViewController: UIViewController {

    @IBOutlet var arView: ARView!
    
    var cardTemplates: [Entity] = []
    var cards: [Entity] = []
    var anchor: AnchorEntity = AnchorEntity()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        anchor = AnchorEntity(plane: .horizontal, minimumBounds: [0.2, 0.2])
        arView.scene.addAnchor(anchor)
        
        loadCards()
        initCards()
    }
    
    func loadCards() {
//        for index in 1...8 {
//            let assetName = "memory_card_\(index)"
//            let cardTemplate = try! Entity.loadModel(named: assetName)
//
//            cardTemplate.generateCollisionShapes(recursive: true)
//            cardTemplate.name = assetName
//
//            cardTemplates.append(cardTemplate)
//        }
        
        for _ in 1...8 {
            let box = MeshResource.generateBox(width: 0.04, height: 0.002, depth: 0.04)
            let metalMaterial = SimpleMaterial(color: .gray, isMetallic: true)
            let model = ModelEntity(mesh: box, materials: [metalMaterial])
            
            model.generateCollisionShapes(recursive: true)
            cardTemplates.append(model)
        }
        
        for cardTemplate in cardTemplates {
            for _ in 1...2 {
                cards.append(cardTemplate.clone(recursive: true))
                //add word models here
            }
        }
    }
    
    func initCards() {
        cards.shuffle()
        
        for (index, card) in cards.enumerated() {
            let x = Float(index % 4) - 1.5
            let z = Float(index / 4) - 1.5
            
            card.position = [x * 0.1, 0, z * 0.1]
            
            anchor.addChild(card)
        }
    }
    
    @IBAction func onTap(_ sender: UITapGestureRecognizer) {
        print("tap")
        let tapLocation = sender.location(in: arView)
        if let card = arView.entity(at: tapLocation) {
            if card.transform.rotation.angle == .pi {
                var flipDownTransform = card.transform
                flipDownTransform.rotation = simd_quatf(angle: 0, axis: [1, 0, 0])
                card.move(to: flipDownTransform, relativeTo: card.parent, duration: 0.25, timingFunction: .easeInOut)
            } else {
                var flipUpTransform = card.transform
                flipUpTransform.rotation = simd_quatf(angle: .pi, axis: [1, 0, 0])
                card.move(to: flipUpTransform, relativeTo: card.parent, duration: 0.25, timingFunction: .easeInOut)
            }
        }
    }
    
}
