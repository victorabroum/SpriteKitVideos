//
//  PlayerEntity.swift
//  SandBox
//
//  Created by Victor Vasconcelos on 19/06/24.
//

import Foundation
import GameplayKit
import SpriteKit

class PlayerEntity: GKEntity {
    
    override init() {
        super.init()
        
        let node = SKSpriteNode(color: .red, size: .init(width: 32, height: 32))
        addComponent(GKSKNodeComponent(node: node))
        
        addComponent(PlayerAgent())
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

