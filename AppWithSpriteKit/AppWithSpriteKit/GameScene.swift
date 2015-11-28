//
//  GameScene.swift
//  Sprite Kit
//
//  Created by KimGiBong on 2015/11/29.
//  Copyright (c) 2015年 KimGiBong. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    var title: String?
    
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        let snowPath = NSBundle.mainBundle().pathForResource("Snow", ofType: "sks")
        let snowNode: SKEmitterNode = NSKeyedUnarchiver.unarchiveObjectWithFile(snowPath!) as! SKEmitterNode
        //        let vector: CGVector = CGVectorMake(100, 0)
        //        snowNode.position = CGPointMake(100, 100)
        snowNode.xScale = 1
        snowNode.yScale = 1
        
        snowNode.position = CGPointMake(0, 0)
        
        self.addChild(snowNode)
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
       /* Called when a touch begins */
        
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
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
