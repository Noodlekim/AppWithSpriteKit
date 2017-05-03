//
//  SecondViewController.swift
//  AppWithSpriteKit
//
//  Created by KimGiBong on 2015/11/29.
//  Copyright © 2015年 KimGiBong. All rights reserved.
//

import UIKit
import SpriteKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        if let scene = GameScene2(fileNamed: "GameScene"), let skView = self.view as? SKView {
            skView.showsFPS = true
            skView.showsNodeCount = true
            skView.ignoresSiblingOrder = true
            
            scene.scaleMode = .AspectFill
            skView.frame = skView.bounds
            skView.presentScene(scene)
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

