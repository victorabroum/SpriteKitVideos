//
//  DragNDropScene.swift
//  SandBox
//
//  Created by Victor Vasconcelos on 04/07/24.
//

import Foundation
import SpriteKit

class DragNDropScene: SKScene {
    
    override func sceneDidLoad() {
        let drag = DraggableNode(sprite: .init(color: .orange, size: .init(width: 64, height: 64)))
        addChild(drag)
        
        let circle = SKShapeNode(circleOfRadius: 32)
        circle.fillColor = .green
        circle.position.y = 32
        drag.addChild(circle)
    }
    
}
