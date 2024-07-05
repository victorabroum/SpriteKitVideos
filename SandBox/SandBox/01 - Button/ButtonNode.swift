//
//  ButtonNode.swift
//  SandBox
//
//  Created by Victor Vasconcelos on 19/04/24.
//

import Foundation
import SpriteKit

class ButtonNode: SKNode {
    
    var sprite: SKSpriteNode
    var label: SKLabelNode
    
    var action: () -> Void
    
    init(sprite: SKSpriteNode, label: SKLabelNode, action: @escaping () -> Void) {
        
        self.sprite = sprite
        self.label = label
        self.action = action
        
        super.init()
        
        addChild(sprite)
        addChild(label)
        
        label.zPosition = 10
        
        self.isUserInteractionEnabled = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        // Extamente quando o Node é tocado!!!!
        action()
    }
    
}
