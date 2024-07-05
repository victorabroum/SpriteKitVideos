//
//  EnemyEntity.swift
//  SandBox
//
//  Created by Victor Vasconcelos on 19/06/24.
//

import Foundation
import GameplayKit
import SpriteKit

class EnemyEntity: GKEntity {
    
    override init() {
        super.init()
        
        let node = SKSpriteNode(color: .yellow, size: .init(width: 32, height: 32))
        node.position = .init(x: .random(in: -2000...2000),
                              y: .random(in: 200...2000))
        node.physicsBody = SKPhysicsBody(rectangleOf: node.size)
        node.physicsBody?.affectedByGravity = false
        addComponent(GKSKNodeComponent(node: node))
        
        addComponent(EnemyAgent())
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

