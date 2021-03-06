//
//  GameElements.swift
//  Swift Jump
//
//  Created by Henry Goodwin on 19/01/2016.
//  Copyright © 2016 Henry Goodwin. All rights reserved.
//

import SpriteKit

extension GameScene {
    
    func createBackground () -> SKNode {
        let backgroundNode = SKNode()
        let spacing =  64 * scaleFactor
        
        for index in 0 ... 19 {
            let node = SKSpriteNode(imageNamed: String(format: "Background%02d", index + 1))
            node.setScale(scaleFactor)
            node.anchorPoint = CGPoint(x: 0.5, y: 0)
            node.position = CGPoint(x: self.size.width / 2, y: spacing * CGFloat(index))
            
            backgroundNode.addChild(node)
        }
        
        return backgroundNode
}
}