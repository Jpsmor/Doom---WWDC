//
//  File.swift
//  
//
//  Created by Jpsmor on 19/04/23.
//

import SpriteKit

extension GameScene {
    func playerDidShoot() {
        let missile = SKSpriteNode(color: .orange, size: playerMissileSize)
        missile.name = "playerMissile"
        missile.position = CGPoint(x: playerNode.position.x, y: playerNode.position.y + playerNode.frame.height/2 + 10)
        missile.physicsBody = SKPhysicsBody(rectangleOf: missile.size)
        missile.physicsBody?.affectedByGravity = false
        missile.physicsBody?.categoryBitMask = 2
        missile.physicsBody?.collisionBitMask = 3 | 4
        missile.physicsBody?.contactTestBitMask = 3 | 4
        addChild(missile)
        missile.run(SKAction.sequence([
            SKAction.run {
                missile.physicsBody?.applyImpulse(CGVector(dx: 0, dy: 50))
            },
            SKAction.wait(forDuration: enemyTimeBetweenShoots)
        ]))
    }
    
    func enemiesVerticalShoot(from enemy: SKSpriteNode) {
        let missile = SKSpriteNode(color: .red, size: CGSize(width: 20, height: 20))
        missile.name = "missile"
        missile.position = CGPoint(x: enemy.position.x, y: enemy.position.y - enemy.frame.height/2 - 10)
        missile.physicsBody = SKPhysicsBody(rectangleOf: missile.size)
        missile.physicsBody?.affectedByGravity = false
        missile.physicsBody?.categoryBitMask = 4
        missile.physicsBody?.collisionBitMask = 1 | 2
        missile.physicsBody?.contactTestBitMask = 1 | 2
        addChild(missile)
        enemy.run(SKAction.sequence([
            SKAction.run {
                missile.physicsBody?.applyImpulse(CGVector(dx: 0, dy: -self.enemyShootSpeed))
            },
            SKAction.wait(forDuration: enemyTimeBetweenShoots),
            SKAction.run {
                missile.removeFromParent()
            }
        ]))
    }
    
    func enemies2DShoot(from enemy: SKSpriteNode) {
        let missileLeft = SKSpriteNode(color: .red, size: CGSize(width: 20, height: 20))
        missileLeft.position = CGPoint(x: enemy.position.x - enemy.frame.width/2 - 10, y: enemy.position.y)
        missileLeft.physicsBody = SKPhysicsBody(rectangleOf: missileLeft.size)
        missileLeft.name = "missile"
        missileLeft.physicsBody?.affectedByGravity = false
        missileLeft.physicsBody?.categoryBitMask = 4
        missileLeft.physicsBody?.collisionBitMask = 1 | 2
        missileLeft.physicsBody?.contactTestBitMask = 1 | 2
        addChild(missileLeft)
        let missileRight = SKSpriteNode(color: .red, size: CGSize(width: 20, height: 20))
        missileRight.position = CGPoint(x: enemy.position.x + enemy.frame.width/2 + 10, y: enemy.position.y)
        missileRight.physicsBody = SKPhysicsBody(rectangleOf: missileRight.size)
        missileRight.physicsBody?.affectedByGravity = false
        missileRight.name = "missile"
        missileRight.physicsBody?.categoryBitMask = 4
        missileRight.physicsBody?.collisionBitMask = 1 | 2
        missileRight.physicsBody?.contactTestBitMask = 1 | 2
        addChild(missileRight)
        enemy.run(SKAction.sequence([
            SKAction.run {
                missileLeft.physicsBody?.applyImpulse(CGVector(dx: -self.enemyShootSpeed, dy: 0))
                missileRight.physicsBody?.applyImpulse(CGVector(dx: self.enemyShootSpeed, dy: 0))
            },
            SKAction.wait(forDuration: enemyTimeBetweenShoots),
            SKAction.run {
                missileLeft.removeFromParent()
                missileRight.removeFromParent()
            }
        ]))
    }
    
    func enemies4DShoot(from enemy: SKSpriteNode) {
        let missileUp = SKSpriteNode(color: .red, size: CGSize(width: 20, height: 20))
        missileUp.position = CGPoint(x: enemy.position.x, y: enemy.position.y + enemy.frame.height/2 + 10)
        missileUp.physicsBody = SKPhysicsBody(rectangleOf: missileUp.size)
        missileUp.physicsBody?.affectedByGravity = false
        missileUp.name = "missile"
        missileUp.physicsBody?.categoryBitMask = 4
        missileUp.physicsBody?.collisionBitMask = 1 | 2
        missileUp.physicsBody?.contactTestBitMask = 1 | 2
        addChild(missileUp)
        let missileDown = SKSpriteNode(color: .red, size: CGSize(width: 20, height: 20))
        missileDown.position = CGPoint(x: enemy.position.x, y: enemy.position.y - enemy.frame.height/2 - 10)
        missileDown.physicsBody = SKPhysicsBody(rectangleOf: missileDown.size)
        missileDown.physicsBody?.affectedByGravity = false
        missileDown.name = "missile"
        missileDown.physicsBody?.categoryBitMask = 4
        missileDown.physicsBody?.collisionBitMask = 1 | 2
        missileDown.physicsBody?.contactTestBitMask = 1 | 2
        addChild(missileDown)
        let missileLeft = SKSpriteNode(color: .red, size: CGSize(width: 20, height: 20))
        missileLeft.position = CGPoint(x: enemy.position.x - enemy.frame.width/2 - 10, y: enemy.position.y)
        missileLeft.physicsBody = SKPhysicsBody(rectangleOf: missileLeft.size)
        missileLeft.physicsBody?.affectedByGravity = false
        missileLeft.name = "missile"
        missileLeft.physicsBody?.categoryBitMask = 4
        missileLeft.physicsBody?.collisionBitMask = 1 | 2
        missileLeft.physicsBody?.contactTestBitMask = 1 | 2
        addChild(missileLeft)
        let missileRight = SKSpriteNode(color: .red, size: CGSize(width: 20, height: 20))
        missileRight.position = CGPoint(x: enemy.position.x + enemy.frame.width/2 + 10, y: enemy.position.y)
        missileRight.physicsBody = SKPhysicsBody(rectangleOf: missileRight.size)
        missileRight.physicsBody?.affectedByGravity = false
        missileRight.name = "missile"
        missileRight.physicsBody?.categoryBitMask = 4
        missileRight.physicsBody?.collisionBitMask = 1 | 2
        missileRight.physicsBody?.contactTestBitMask = 1 | 2
        addChild(missileRight)
        enemy.run(SKAction.sequence([
            SKAction.run {
                missileUp.physicsBody?.applyImpulse(CGVector(dx: 0, dy: self.enemyShootSpeed))
                missileDown.physicsBody?.applyImpulse(CGVector(dx: 0, dy: -self.enemyShootSpeed))
                missileLeft.physicsBody?.applyImpulse(CGVector(dx: -self.enemyShootSpeed, dy: 0))
                missileRight.physicsBody?.applyImpulse(CGVector(dx: self.enemyShootSpeed, dy: 0))
            },
            SKAction.wait(forDuration: enemyTimeBetweenShoots),
            SKAction.run {
                missileUp.removeFromParent()
                missileDown.removeFromParent()
                missileLeft.removeFromParent()
                missileRight.removeFromParent()
            }
        ]))
    }
    
    func enemiesAimedShoot(from enemy: SKSpriteNode) {
        let vector = CGVector(dx: playerNode.position.x - enemy.position.x, dy: playerNode.position.y - enemy.position.y)
        let angle = atan2(vector.dy, vector.dx)
        
        let missile = SKSpriteNode(color: .red, size: CGSize(width: 20, height: 20))
        missile.position = CGPoint(x: enemy.position.x + ((enemy.frame.width/2 + 10) * cos(angle)), y: enemy.position.y + ((enemy.frame.height/2 + 10) * sin(angle)))
        missile.physicsBody = SKPhysicsBody(rectangleOf: missile.size)
        missile.physicsBody?.affectedByGravity = false
        missile.name = "missile"
        missile.physicsBody?.categoryBitMask = 4
        missile.physicsBody?.collisionBitMask = 1 | 2
        missile.physicsBody?.contactTestBitMask = 1 | 2
        addChild(missile)
        enemy.run(SKAction.sequence([
            SKAction.run {
                missile.physicsBody?.applyImpulse(CGVector(dx: self.enemyShootSpeed * cos(angle), dy: self.enemyShootSpeed * sin(angle)))
            },
            SKAction.wait(forDuration: 10),
            SKAction.run {
                missile.removeFromParent()
            }
        ]))
    }
    
    func getInPositionAndStartShootingVertical(node: SKSpriteNode, movementX: CGFloat, movementY: CGFloat) -> SKAction {
        
        return SKAction.sequence([
            SKAction.moveBy(x: movementX, y: movementY, duration: 1),
            SKAction.repeatForever(SKAction.sequence([
                SKAction.run {
                    self.enemiesVerticalShoot(from: node)
                },
                SKAction.wait(forDuration: enemyTimeBetweenShoots)
            ]))
        ])
    }
    
    func getInPositionAndStartShooting2D(node: SKSpriteNode, movementX: CGFloat, movementY: CGFloat) -> SKAction {
        return SKAction.sequence([
            SKAction.moveBy(x: movementX, y: movementY, duration: 1),
            SKAction.repeatForever(SKAction.sequence([
                SKAction.run {
                    self.enemies2DShoot(from: node)
                },
                SKAction.wait(forDuration: enemyTimeBetweenShoots)
            ]))
        ])
    }
    
    func getInPositionAndStartShooting4D(node: SKSpriteNode, movementX: CGFloat, movementY: CGFloat) -> SKAction {
        
        return SKAction.sequence([
            SKAction.moveBy(x: movementX, y: movementY, duration: 1),
            SKAction.repeatForever(SKAction.sequence([
                SKAction.run {
                    self.enemies4DShoot(from: node)
                },
                SKAction.wait(forDuration: enemyTimeBetweenShoots)
            ]))
        ])
    }
    
    func getInPositionAndStartShootingAimed(node: SKSpriteNode, movementX: CGFloat, movementY: CGFloat) -> SKAction {
        
        return SKAction.sequence([
            SKAction.moveBy(x: movementX, y: movementY, duration: 1),
            SKAction.repeatForever(SKAction.sequence([
                SKAction.run {
                    self.enemiesAimedShoot(from: node)
                },
                SKAction.wait(forDuration: enemyTimeBetweenShoots)
            ]))
        ])
    }
}
