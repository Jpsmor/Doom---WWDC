//
//  File.swift
//  
//
//  Created by Jpsmor on 15/04/23.
//

import SpriteKit
import CoreMotion
import SwiftUI

class GameScene: SKScene, SKPhysicsContactDelegate, ObservableObject {
    
    @AppStorage("gameWin") var gameWin: Bool = false
    @AppStorage("gameOver") var gameOver: Bool = false
    @AppStorage("life1") var life1: Int = 1
    @AppStorage("life2") var life2: Int = 1
    @AppStorage("life3") var life3: Int = 1
    @AppStorage("stage") var stage: Int = 1
    @AppStorage("textIsShowing") var textIsShowing: Int = 0
    @AppStorage("textContent") var textContent: String = ""
    @AppStorage("invincibleMode") var invincibleModeActivated: Bool = false
    
    var motionManager : CMMotionManager?
    let playerNode = SKSpriteNode(color: UIColor(red: 1, green: 0.75, blue: 0, alpha: 1), size: CGSize(width: 50, height: 100))
    let shootNode = SKShapeNode(circleOfRadius: 100)
    var enemiesAlive = 1
    let enemyShootSpeed : CGFloat = 10
    let enemyTimeBetweenShoots : TimeInterval = 3
    let enemyMissileSize = CGSize(width: 20, height: 20)
    let playerMissileSize = CGSize(width: 20, height: 20)
    let enemySize = CGSize(width: 150, height: 150)
    let playerColor = UIColor(red: 1, green: 0.75, blue: 0, alpha: 1)
    var lives : Int = 3
    var playerIsntImmune = true
    var playerMovementAllowed = false
    var xOffset : Double = 0
    var yOffset : Double = 0
    var isInvincible : Bool = false
    var movementNotCalibrated = true
    
    override func didMove(to view: SKView) {
        self.removeAllActions()
        self.removeAllChildren()
        if invincibleModeActivated == true {
            isInvincible = true
            invincibleModeActivated = false
        }
        textIsShowing = 0
        textContent = ""
        stage = 1
        lives = 3
        life1 = 1
        life2 = 1
        life3 = 1
        playerMovementAllowed = false
        gameWin = false
        gameOver = false
        setupPlayer()
        motionManager = CMMotionManager()
        motionManager?.startAccelerometerUpdates()
        self.view?.isMultipleTouchEnabled = true
        self.physicsWorld.contactDelegate = self
        self.backgroundColor = .clear
        stage1()
    }
    override func update(_ currentTime: TimeInterval) {
        if let movement = motionManager?.accelerometerData {
            if movementNotCalibrated {
                if let movement = motionManager?.accelerometerData {
                    yOffset = movement.acceleration.y
                    xOffset = movement.acceleration.x
                    movementNotCalibrated = false
                }
            } else if playerMovementAllowed == true {
                playerNode.position.x += (movement.acceleration.y - yOffset) * 100
                playerNode.position.y += (movement.acceleration.x - xOffset) * -200
            }
        }
    }
}
