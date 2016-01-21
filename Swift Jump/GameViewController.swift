//
//  GameViewController.swift
//  Swift Jump
//
//  Created by Henry Goodwin on 19/01/2016.
//  Copyright (c) 2016 Henry Goodwin. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let skView = self.view as! SKView
        
        let scene = GameScene(size: skView.bounds.size)
        scene.scaleMode = .AspectFit
        
        skView.presentScene(scene)
        
        }
    

    override func shouldAutorotate() -> Bool {
        return true
    }

    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        if UIDevice.currentDevice().userInterfaceIdiom == .Phone {
            return .AllButUpsideDown
        } else {
            return .All
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }

    override func prefersStatusBarHidden() -> Bool {
        return true
    }
}
