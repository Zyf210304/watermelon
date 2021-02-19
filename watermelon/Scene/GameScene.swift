//
//  GameScene.swift
//  watermelon
//
//  Created by 亚飞 on 2021/2/18.
//

import SwiftUI
import SpriteKit

class GameScene: SKScene, SKPhysicsContactDelegate {
    
    var nowFruit: SKSpriteNode!
    var scoreNode: SKSpriteNode!
    
    var groundFruits: [SKSpriteNode] = []
    
    var fruitUtil: FruitUtil!
}





struct GameScene_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
