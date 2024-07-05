//
//  DraggableNode.swift
//  SandBox
//
//  Created by Victor Vasconcelos on 04/07/24.
//

import Foundation
import SpriteKit

class DraggableNode: SKNode {
    
    var sprite: SKSpriteNode
    
    public init(sprite: SKSpriteNode) {
        self.sprite = sprite
        super.init()
        
        isUserInteractionEnabled = true
        addChild(sprite)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.run(.scale(to: 1.1, duration: 0.1))
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.run(.scale(to: 1, duration: 0.1))
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let scene = self.scene, let location = touches.first?.location(in: scene) {
            self.run(.move(to: location, duration: 0.15))
        }
    }
    
}
