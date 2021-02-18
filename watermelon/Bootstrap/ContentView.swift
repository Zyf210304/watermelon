//
//  ContentView.swift
//  watermelon
//
//  Created by 亚飞 on 2021/2/18.
//

import SwiftUI
import SpriteKit

let screen = UIScreen.main.bounds
let statusBarHeight = UIApplication.shared.windows.first?.windowScene?.statusBarManager?.statusBarFrame.size.height

struct ContentView: View {
    
    var scene: SKScene {
        
        let scene = GameScene()
        
        scene.size = CGSize(width: screen.width, height: screen.height)
        
        return scene
    }
    
    var body: some View {
        
        SpriteView(scene: scene)
            .frame(width: screen.width, height: screen.height, alignment: .center)
            .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
