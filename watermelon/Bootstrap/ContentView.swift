//
//  ContentView.swift
//  watermelon
//
//  Created by 亚飞 on 2021/2/18.
//

import SwiftUI
import SpriteKit

let screen = UIScreen.main.bounds

struct ContentView: View {
    
    var scene: SKScene {
        
        let scene = SKScene()
        
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
