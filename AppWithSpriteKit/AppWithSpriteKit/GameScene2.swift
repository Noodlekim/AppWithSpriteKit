//
//  GameScene.swift
//  Sprite Kit
//
//  Created by KimGiBong on 2017/5/3.
//  Copyright (c) 2017年 KimGiBong. All rights reserved.
//

import SpriteKit

class GameScene2: SKScene {
    
    var title: String?
    
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        let rainPath = NSBundle.mainBundle().pathForResource("Rain", ofType: "sks")
        let rainNode: SKEmitterNode = NSKeyedUnarchiver.unarchiveObjectWithFile(rainPath!) as! SKEmitterNode
        rainNode.xScale = 1
        rainNode.yScale = 1
        
        rainNode.position = CGPointMake(0, 0)
        
        self.addChild(rainNode)
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {

        // タップ時処理
        /*
        for touch in touches {
            let location = touch.locationInNode(self)
            
            let sprite = SKSpriteNode(imageNamed:"Spaceship")
            
            sprite.xScale = 0.5
            sprite.yScale = 0.5
            sprite.position = location
            
            let action = SKAction.rotateByAngle(CGFloat(M_PI), duration:1)
            
            sprite.runAction(SKAction.repeatActionForever(action))
            
            self.addChild(sprite)
        }
        */
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
