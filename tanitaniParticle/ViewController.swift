//
//  ViewController.swift
//  tanitaniParticle
//
//  Created by Hiroki Taniguchi on 2018/05/01.
//  Copyright © 2018年 Hiroki Taniguchi. All rights reserved.
//

import UIKit
import SpriteKit

class ViewController: UIViewController {

    @IBOutlet weak var skView: SKView!
    @IBOutlet weak var bgImageView: UIImageView!
    
    let imageArray = [UIImage(named: "01"),UIImage(named: "02"),UIImage(named: "03")]
    var currentNum = 0
    var scene = SKScene()
    var sceneFlag = true
    
    var task: DispatchWorkItem?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        skView.allowsTransparency = true
        skView.isUserInteractionEnabled = false
        scene = RainSKScene(size: skView.bounds.size)
        currentNum = 0
        skView.presentScene(scene)
        scene.removeAllChildren()
    }
    
    override func viewWillAppear(_ animated: Bool) {
//        setupParticle()
        
    }
    
    func setupParticle() {
//        let scene = RainSKScene(size: skView.bounds.size)
//        skView.presentScene(scene)
    }
    
    func sceneOn() {
        sceneFlag = true
        skView.presentScene(scene)
    }
    
    // 主導でsceneを消す時に使う
//    func sceneOff() {
//        sceneFlag = false
//        scene.removeAllChildren()
//    }
    
    @IBAction func tapChangeButton(_ sender: Any) {
        
        print("tapChangeButton")
        
        if currentNum == 2 {
            currentNum = 0
        } else {
            currentNum += 1
        }
        bgImageView.image = imageArray[currentNum]
    }
    
    @IBAction func tapOneButton(_ sender: Any) {
        
        print("tapOneButton")
        sceneOn()
    }
    
    @IBAction func tapTwoButton(_ sender: Any) {
    }
    
    @IBAction func tapThreeButton(_ sender: Any) {
    }
    
    @IBAction func tapFourButton(_ sender: Any) {
    }
    
    
}

