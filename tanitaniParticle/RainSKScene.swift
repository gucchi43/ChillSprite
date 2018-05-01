//
//  RainSKScene.swift
//  tanitaniParticle
//
//  Created by Hiroki Taniguchi on 2018/05/01.
//  Copyright © 2018年 Hiroki Taniguchi. All rights reserved.
//

import SpriteKit

class RainSKScene: SKScene {
    
    override func didMove(to view: SKView) {
        self.backgroundColor = SKColor.clear    // これ落とし穴！やらないとモヤがかかったみたいになる
        self.scaleMode = .resizeFill    // これを入れないとiPadで表示した時にパーティクルが小さく表示されてしまう
        emitParticle()
    }
    
    func emitParticle() {
        
        // パーティクルファイルのパスを指定
        guard let testParticlePath = Bundle.main.path(forResource: "RainParticle", ofType: "sks") else {
            return
        }
        
        // パーティクルを作って載せる
        let testParticle = NSKeyedUnarchiver.unarchiveObject(withFile: testParticlePath) as! SKEmitterNode
        
        testParticle.particlePositionRange = CGVector(dx: UIScreen.main.bounds.width, dy: UIScreen.main.bounds.height)
        
        // 画面上の真ん中を始点にする 落ちる系アニメーション用
        testParticle.position = CGPoint(x: self.frame.midX, y: self.frame.maxY)
        
        // 画面下の真ん中を始点にする 浮かぶ系アニメーション用
//         testParticle.position = CGPoint(x: self.frame.midX, y: 0)
        self.addChild(testParticle)
    }
    
    func remove() {
        self.removeFromParent()
    }
}
