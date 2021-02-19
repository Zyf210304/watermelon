//
//  GameScene+Collisions.swift
//  watermelon
//
//  Created by 亚飞 on 2021/2/19.
//

import SwiftUI
import SpriteKit


// MARK: collisions
extension GameScene {
    
    func didBegin(_ contact: SKPhysicsContact) {
        
        let collision = contact.bodyA.categoryBitMask | contact.bodyB.categoryBitMask
        
        for fruit in FruitTexture.allCases {
            
            let fruitBit = fruit.bitmask | fruit.bitmask
            if fruitBit == collision {
                
                let nodeA = contact.bodyA.node!
                let nodeB = contact.bodyB.node!
                
                let nodex = (nodeA.position.x + nodeB.position.x) / 2
                let nodey = (nodeA.position.y + nodeB.position.y) / 2
                let newFruitPosition = CGPoint(x: nodex, y: nodey)
                
                run(.sequence([
                    .run {
                        nodeA.run(.fadeOut(withDuration: 0.1))
                        nodeB.run(.fadeOut(withDuration: 0.1))
                    },
                    .run {
                        nodeA.removeFromParent()
                        nodeB.removeFromParent()
                    },
                    .run {
                        
                        self.generateNewFruitFromPosition(newFruitPosition: newFruitPosition)
                    }
                ]))
                
                
            }
        }
    }
    
    func generateNewFruitFromPosition(newFruitPosition : CGPoint) {
        
        // add new fruit
        let fruit = fruitUtil.randomFruit()
        fruit.position = newFruitPosition
        fruit.physicsBody = SKPhysicsBody(circleOfRadius: fruit.size.width / 2)
        let bitmask = fruitUtil.getFruitTextureByName(fruitName: fruit.name!).bitmask
        fruit.physicsBody?.categoryBitMask = bitmask
        fruit.physicsBody?.contactTestBitMask = bitmask
        
        addChild(fruit)
        
        //animation
        fruit.setScale(0)
        fruit.run(.scale(to: 0.5, duration: 0.3))
    }
    
    func didEnd(_ contact: SKPhysicsContact) {
        
    }
}
