//
//  PlayerAgent.swift
//  SandBox
//
//  Created by Victor Vasconcelos on 19/06/24.
//

import Foundation
import GameplayKit
import SpriteKit

class PlayerAgent: GKAgent2D {
    
    override init() {
        super.init()
        
//        radius = 16
        maxSpeed = 1
//        maxAcceleration = 0.07
        mass = 400
        
        behavior = GKBehavior()
    }
    
    override func didAddToEntity() {
        delegate =  entity?.component(ofType: GKSKNodeComponent.self)
        
        setupBehavior()
    }
    
    private func setupBehavior() {
        
//        let path = GKPath(graphNodes: [
//            GKGraphNode2D(point: .zero),
//            GKGraphNode2D(point: .zero),
//        ], radius: 16)
//        
//        behavior?.setWeight(15, for: .init(toStayOn: path, maxPredictionTime: 1))
        behavior?.setWeight(1, for: .init(toWander: 1))
    }
    
    public func fleeEnemy(_ enemyAgent: GKAgent2D) {
        behavior?.setWeight(3, for: .init(toFleeAgent: enemyAgent))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
