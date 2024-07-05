//
//  EnemyAgent.swift
//  SandBox
//
//  Created by Victor Vasconcelos on 19/06/24.
//

import Foundation
import GameplayKit
import SpriteKit

class EnemyAgent: GKAgent2D {
    
    override init() {
        super.init()
        
        radius = 16
        maxSpeed = 1
        mass = 400
        
        behavior = GKBehavior()
    }
    
    override func didAddToEntity() {
        delegate =  entity?.component(ofType: GKSKNodeComponent.self)
    }
    
    public func setupBehavior(playerAgent: GKAgent2D) {
        behavior?.setWeight(1, for: .init(toSeekAgent: playerAgent))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
