//
//  FruitFactory.swift
//  watermelon
//
//  Created by 张亚飞 on 2021/2/18.
//

import SwiftUI
import SpriteKit

class FruitUtil {
    
    static func randomFruit() -> SKSpriteNode{
        
        let newFruit = SKSpriteNode(imageNamed: "kiwi")
        newFruit.position = CGPoint(x: screen.width / 2 - 10, y: screen.height - 30 - statusBarHeight!)
        newFruit.setScale(0.5)
        return newFruit
    }
}
