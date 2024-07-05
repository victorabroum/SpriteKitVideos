//
//  MyActionNode.swift
//  SandBox
//
//  Created by Victor Vasconcelos on 09/05/24.
//

import Foundation
import SpriteKit

class MyActionNode: SKNode {
    
    override init() {
        super.init()
        
        let sprite = SKSpriteNode(imageNamed: "chiko_run1")
        sprite.setScale(5)
        sprite.texture?.filteringMode = .nearest
        self.addChild(sprite)
        
        let textures = [
            SKTexture(imageNamed: "chiko_run1"),
            SKTexture(imageNamed: "chiko_run2"),
            SKTexture(imageNamed: "chiko_run3"),
            SKTexture(imageNamed: "chiko_run4"),
            SKTexture(imageNamed: "chiko_run5"),
            SKTexture(imageNamed: "chiko_run6"),
            SKTexture(imageNamed: "chiko_run7"),
            SKTexture(imageNamed: "chiko_run8"),
            SKTexture(imageNamed: "chiko_run9"),
            SKTexture(imageNamed: "chiko_run10"),
        ]
        
        sprite.run(.repeatForever(.animate(with: textures, timePerFrame: 0.1)))
        
        self.run(.move(to: .init(x: 1000, y: 0), duration: 10))

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
