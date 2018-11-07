//
//  GameScene.swift
//  Game-Starter-Empty
//
//  Created by mitchell hudson on 9/13/18.
//  Copyright © 2018 Make School. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {



    override func didMove(to view: SKView) {
        // Called when the scene has been displayed

        // set the size
        let size = CGSize(width: 50, height: 50)
        let spaceMargin = 60
        
        for col in -1...1 {
            for row in -1...1 {
                let square = SKSpriteNode(texture: nil, color: UIColor.purple, size: size)
                // center x + space + col
                square.position.x = self.size.width/2 + CGFloat(spaceMargin * col)
                // center y + space + row
                square.position.y = self.size.height/2 + CGFloat(spaceMargin * row)
                addChild(square)
            }
        }

    }


    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
        //whatever this is
    }
}
