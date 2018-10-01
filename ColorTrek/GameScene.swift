//
//  GameScene.swift
//  ColorTrek
//
//  Created by Tiange Wang on 9/30/18.
//  Copyright © 2018 Tiange Wang. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    var tracksArr: [SKSpriteNode]? = [SKSpriteNode]()
    var player: SKSpriteNode?
    
    func setUpTracks() {
        for i in 0...8 {
            if let track = self.childNode(withName: "\(i)") as? SKSpriteNode {
                tracksArr?.append(track)
            }
        }
        tracksArr?.first?.color = UIColor.green
        tracksArr?.last?.color = UIColor.orange
    }
    
    func createPlayer() {
        player = SKSpriteNode(imageNamed: "player")
        guard let playerPosition = tracksArr?.first?.position.x else {return}
        player?.position = CGPoint(x: playerPosition, y: self.size.height / 2)
        self.addChild(player!)
    }
    
    override func didMove(to view: SKView) {
        setUpTracks()
        createPlayer()
    }
    
    func moveVertically(up: Bool) {
        if up {
            
        } else {
            
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first{
            let location = touch.previousLocation(in: self)
            let node = self.nodes(at: location).first
            if node?.name == "right" {
                print("MOVE RIGHT")
            } else if node?.name == "up" {
                print("MOVE UP")
            } else if node?.name == "down" {
                print("MOVE DOWN")
            }
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
    
}
