//
//  GameScene+LoadUI.swift
//  watermelon
//
//  Created by 亚飞 on 2021/2/19.
//

import SwiftUI
import SpriteKit


extension GameScene {
    
    override func didMove(to view: SKView) {
        
        view.showsFPS = true
        view.showsNodeCount = true
        
        self.physicsWorld.contactDelegate = self
        self.physicsBody = SKPhysicsBody(edgeLoopFrom: frame)
        
        fruitUtil = FruitUtil()
        
        makeUI()
        makeNowFruit()
        makeScoreNode()
    }
    
    func makeNowFruit() {
        
        nowFruit = fruitUtil.randomFruit()
        addChild(nowFruit)
    }
    
    func makeScoreNode() {
        
        scoreNode = SKSpriteNode(imageNamed: "0")
        scoreNode.position = CGPoint(x: 30, y: screen.height - 30 - statusBarHeight!)
        scoreNode.setScale(0.4)
        addChild(scoreNode)
    }
    
    func makeUI() {
        
        let bacground = SKSpriteNode(color: UIColor(#colorLiteral(red: 0.9843137255, green: 0.9098039216, blue: 0.6509803922, alpha: 1)), size: CGSize(width: screen.width, height: screen.height))
        bacground.anchorPoint = CGPoint.zero
        bacground.position = CGPoint.zero
        addChild(bacground)
        
        let solid = SKSpriteNode(color: UIColor(#colorLiteral(red: 0.3098039329, green: 0.2039215714, blue: 0.03921568766, alpha: 1)), size: CGSize(width: screen.width, height: screen.height / 5))
        solid.anchorPoint = CGPoint.zero
        solid.position = CGPoint.zero
        addChild(solid)
        
        let ground = SKSpriteNode(color: UIColor(#colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 1)), size: CGSize(width: screen.width, height: 10))
        ground.anchorPoint = CGPoint.zero
        ground.position = CGPoint(x: 0, y: screen.height / 5)
        ground.physicsBody = SKPhysicsBody(edgeFrom: CGPoint(x: 0, y: ground.size.height), to: CGPoint(x: screen.width, y: ground.size.height))
        addChild(ground)
    }
    

}
