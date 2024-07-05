//
//  AgentScene.swift
//  SandBox
//
//  Created by Victor Vasconcelos on 19/06/24.
//

import Foundation
import SpriteKit
import GameplayKit


class AgentScene: SKScene {
    var entityManager: [GKEntity] = []
    var lastUpdatedTime: TimeInterval = 0
    
    weak var playerEntity: GKEntity?
    weak var playerNode: SKNode?
    
    override func didMove(to view: SKView) {
        let player = PlayerEntity()
        addEntity(player)
        playerEntity = player
        playerNode = player.component(ofType: GKSKNodeComponent.self)?.node
        
        for _ in 1...500 {
            addEnemy()
        }
        
        let camera = SKCameraNode()
        addChild(camera)
        self.camera = camera
        self.camera?.setScale(3)
    }
    
    private func addEnemy() {
        let enemy = EnemyEntity()
        addEntity(enemy)
    
        if let playerAgent = playerEntity?.component(ofType: PlayerAgent.self),
           let enemyAgent = enemy.component(ofType: EnemyAgent.self) {
            playerAgent.fleeEnemy(enemyAgent)
            enemyAgent.setupBehavior(playerAgent: playerAgent)
        }
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        if lastUpdatedTime == 0 {
            lastUpdatedTime = currentTime
        }
        
        let deltaTime = currentTime - lastUpdatedTime
        
        for entity in entityManager {
            entity.update(deltaTime: deltaTime)
        }
        
//        if let playerNode {
//            self.camera?.run(.move(to: playerNode.position, duration: 0.2))
//        }
    }
    
    private func addEntity(_ entity: GKEntity) {
        if let node = entity.component(ofType: GKSKNodeComponent.self)?.node {
            addChild(node)
        }
        entityManager.append(entity)
    }

}
