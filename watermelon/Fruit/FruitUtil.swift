//
//  FruitFactory.swift
//  watermelon
//
//  Created by 张亚飞 on 2021/2/18.
//

import SwiftUI
import SpriteKit

class FruitUtil {
    
    private let randomList = [
        FruitTexture.grape,
        FruitTexture.cherry,
        FruitTexture.orange,
        FruitTexture.lemon,
        FruitTexture.kiwi
    ]
    
    private var randomCount = 0
    
    func randomFruit() -> SKSpriteNode{
        
        randomCount += 1
        var fruit: SKSpriteNode
        var name: String
        
        switch randomCount {
        case 1...3:
            name = FruitTexture.grape.name
        case 4:
            name = FruitTexture.cherry.name
        case 5:
            name = FruitTexture.orange.name
        default:
            name = randomList.randomElement()!.name
        }
        
        fruit = SKSpriteNode(imageNamed: name)
        fruit.position = CGPoint(x: screen.width / 2 - 10, y: screen.height - 30 - statusBarHeight!)
        fruit.setScale(0.5)
        fruit.name = "kiwi"
        return fruit
    }
    
    
    func getFruitTextureByName(fruitName: String) ->  FruitTexture{
        FruitTexture.allCases.first {$0.name == fruitName}!
    }
}
