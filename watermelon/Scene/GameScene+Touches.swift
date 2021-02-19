//
//  GameScene+Touches.swift
//  watermelon
//
//  Created by 亚飞 on 2021/2/19.
//

import SwiftUI
import SpriteKit


// MARK: - Touches
extension GameScene {
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        guard let touch = touches.first else {return}
        let  location = touch.location(in: self)
        nowFruit.run(.sequence([
            .moveTo(x: location.x, duration: 0.1),
            .run {
                self.nowFruit.physicsBody = SKPhysicsBody(circleOfRadius: self.nowFruit.size.width / 2)
                let bitmask = self.fruitUtil.getFruitTextureByName(fruitName: self.nowFruit.name!).bitmask
                self.nowFruit.physicsBody?.categoryBitMask = bitmask
                self.nowFruit.physicsBody?.contactTestBitMask = bitmask
            },
            .wait(forDuration: 0.5),
            .run({
                self.groundFruits.append(self.nowFruit)
                self.nowFruit = self.fruitUtil.randomFruit()
                self.addChild(self.nowFruit)
                self.nowFruit.run(.scale(to: 0.5, duration: 0.2))
            })
        ]))
        
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
}


