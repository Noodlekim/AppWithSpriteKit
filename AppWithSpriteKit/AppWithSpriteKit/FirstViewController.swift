//
//  FirstViewController.swift
//  AppWithSpriteKit
//
//  Created by KimGiBong on 2015/11/29.
//  Copyright © 2015年 KimGiBong. All rights reserved.
//

import UIKit
import SpriteKit

class FirstViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let scene = GameScene(fileNamed: "GameScene"), let skView = self.view as? SKView {
            scene.backgroundColor = UIColor.blackColor()
            skView.showsFPS = true
            skView.showsNodeCount = true
            
            skView.ignoresSiblingOrder = true
            scene.scaleMode = .AspectFill
            skView.frame = skView.bounds
            
            skView.presentScene(scene)
        }
    }
    
    override func viewDidAppear(animated: Bool) {
        
        // 複数のSceneを載せるかつUIViewの前に載せる
        /*
        let subView: SKView = SKView(frame: (self.view?.bounds)!)
        subView.backgroundColor = UIColor.clearColor()
        self.view.addSubview(subView)

        if let scene = GameScene(fileNamed:"GameScene") {
            // Configure the view.
            let skView = subView
            skView.showsFPS = true
            skView.showsNodeCount = true
            
            /* Sprite Kit applies additional optimizations to improve rendering performance */
            skView.ignoresSiblingOrder = true
            
            /* Set the scale mode to scale to fit the window */
            scene.scaleMode = .AspectFill
            scene.backgroundColor = UIColor.clearColor()
            skView.frame = skView.bounds
            
            scene.title = "title test"
            skView.presentScene(scene)
        }
        */

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

