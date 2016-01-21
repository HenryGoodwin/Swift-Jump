//
//  GameScene.swift
//  Swift Jump
//
//  Created by Henry Goodwin on 19/01/2016.
//  Copyright (c) 2016 Henry Goodwin. All rights reserved.
//

import SpriteKit
import CoreMotion

class GameScene: SKScene {
    
    var background : SKNode!
    var midBackground : SKNode!
    var foreground : SKNode!
    
    var hud : SKNode!
    
    var player : SKNode!
    
    var scaleFactor :CGFloat!
    
    var startButton = SKSpriteNode(imageNamed: "TapToStart")
    
    var endOfGamePosition = 0
    
    var motionManager = CMMotionManager()
    
    var xAcceleration : CGFloat = 0.0
    
    var scoreLabel: SKLabelNode!
    var flowerLabel: SKLabelNode!
    
    var playersMaxY: Int!
    
    var gameOver = false
    
    
    
    
    
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(size : CGSize) {
        super.init(size: size)
        
        backgroundColor = SKColor.whiteColor()
        
        scaleFactor = self.size.width / 320
        
        background = createBackground()
        addChild(background)
        
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
           }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
