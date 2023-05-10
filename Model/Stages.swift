//
//  File.swift
//  
//
//  Created by Jpsmor on 18/04/23.
//

import SpriteKit

extension GameScene {
    
    func stage1() {
        playerIsntImmune = false
        playerMovementAllowed = false
        enemiesAlive = 8
        playerNode.position = CGPoint(x: 2000, y: 1500)
        
        let enemy1 = SKSpriteNode(color: .cyan, size: enemySize)
        let enemy2 = SKSpriteNode(color: .cyan, size: enemySize)
        let enemy3 = SKSpriteNode(color: .cyan, size: enemySize)
        let enemy4 = SKSpriteNode(color: .cyan, size: enemySize)
        let enemy5 = SKSpriteNode(color: .cyan, size: enemySize)
        let enemy6 = SKSpriteNode(color: .cyan, size: enemySize)
        let enemy7 = SKSpriteNode(color: .cyan, size: enemySize)
        let enemy8 = SKSpriteNode(color: .cyan, size: enemySize)
        
        enemy1.name = "enemy"
        enemy2.name = "enemy"
        enemy3.name = "enemy"
        enemy4.name = "enemy"
        enemy5.name = "enemy"
        enemy6.name = "enemy"
        enemy7.name = "enemy"
        enemy8.name = "enemy"
        
        enemy1.physicsBody = generateEnemyPhysicsBody(size: enemySize)
        enemy2.physicsBody = generateEnemyPhysicsBody(size: enemySize)
        enemy3.physicsBody = generateEnemyPhysicsBody(size: enemySize)
        enemy4.physicsBody = generateEnemyPhysicsBody(size: enemySize)
        enemy5.physicsBody = generateEnemyPhysicsBody(size: enemySize)
        enemy6.physicsBody = generateEnemyPhysicsBody(size: enemySize)
        enemy7.physicsBody = generateEnemyPhysicsBody(size: enemySize)
        enemy8.physicsBody = generateEnemyPhysicsBody(size: enemySize)
        
        enemy1.position = CGPoint(x: 200, y: 3550)
        enemy2.position = CGPoint(x: 600, y: 2950)
        enemy3.position = CGPoint(x: 1000, y: 3250)
        enemy4.position = CGPoint(x: 1400, y: 2950)
        enemy5.position = CGPoint(x: 2600, y: 2950)
        enemy6.position = CGPoint(x: 3000, y: 3250)
        enemy7.position = CGPoint(x: 3400, y: 2950)
        enemy8.position = CGPoint(x: 3800, y: 3550)
        
        playerNode.run(SKAction.sequence([
            SKAction.run {
                self.textIsShowing = 1
            },
            SKAction.run {
                self.textContent = "Our scouts received the information that four waves of enemies are coming to attack the Earth"
            },
            SKAction.wait(forDuration: 5),
            SKAction.run {
                self.textContent = "It's your job to face and defeat these enemies and save our planet"
            },
            SKAction.wait(forDuration: 5),
            SKAction.run {
                self.textContent = "It seems that the first wave is coming right now!\nGet Ready!"
            },
            SKAction.wait(forDuration: 4),
            SKAction.run {
                self.textContent = "3"
            },
            SKAction.wait(forDuration: 1),
            SKAction.run {
                self.textContent = "2"
            },
            SKAction.wait(forDuration: 1),
            SKAction.run {
                self.textContent = "1"
            },
            SKAction.wait(forDuration: 1),
            SKAction.run {
                self.textContent = "GO!"
            },
            SKAction.wait(forDuration: 1),
            SKAction.run {
                self.playerIsntImmune = true
                self.textIsShowing = 0
                self.addChild(enemy1)
                self.addChild(enemy2)
                self.addChild(enemy3)
                self.addChild(enemy4)
                self.addChild(enemy5)
                self.addChild(enemy6)
                self.addChild(enemy7)
                self.addChild(enemy8)
                enemy1.run(self.getInPositionAndStartShootingVertical(node: enemy1, movementX: 0, movementY: -1000))
                enemy2.run(self.getInPositionAndStartShootingVertical(node: enemy2, movementX: 0, movementY: -1000))
                enemy3.run(self.getInPositionAndStartShootingVertical(node: enemy3, movementX: 0, movementY: -1000))
                enemy4.run(self.getInPositionAndStartShootingVertical(node: enemy4, movementX: 0, movementY: -1000))
                enemy5.run(self.getInPositionAndStartShootingVertical(node: enemy5, movementX: 0, movementY: -1000))
                enemy6.run(self.getInPositionAndStartShootingVertical(node: enemy6, movementX: 0, movementY: -1000))
                enemy7.run(self.getInPositionAndStartShootingVertical(node: enemy7, movementX: 0, movementY: -1000))
                enemy8.run(self.getInPositionAndStartShootingVertical(node: enemy8, movementX: 0, movementY: -1000))
                self.playerMovementAllowed = true
            }
        ]))
    }
    
    func stage2() {
        playerIsntImmune = false
        playerMovementAllowed = false
        playerNode.position = CGPoint(x: 2000, y: 1500)
        enemiesAlive = 9
        
        let enemy1 = SKSpriteNode(color: .cyan, size: enemySize)
        let enemy2 = SKSpriteNode(color: .cyan, size: enemySize)
        let enemy3 = SKSpriteNode(color: .cyan, size: enemySize)
        let enemy4 = SKSpriteNode(color: .cyan, size: enemySize)
        let enemy5 = SKSpriteNode(color: .cyan, size: enemySize)
        let enemy6 = SKSpriteNode(color: .yellow, size: enemySize)
        let enemy7 = SKSpriteNode(color: .yellow, size: enemySize)
        let enemy8 = SKSpriteNode(color: .yellow, size: enemySize)
        let enemy9 = SKSpriteNode(color: .yellow, size: enemySize)
        
        enemy1.name = "enemy"
        enemy2.name = "enemy"
        enemy3.name = "enemy"
        enemy4.name = "enemy"
        enemy5.name = "enemy"
        enemy6.name = "enemy"
        enemy7.name = "enemy"
        enemy8.name = "enemy"
        enemy9.name = "enemy"
        
        enemy1.physicsBody = generateEnemyPhysicsBody(size: enemySize)
        enemy2.physicsBody = generateEnemyPhysicsBody(size: enemySize)
        enemy3.physicsBody = generateEnemyPhysicsBody(size: enemySize)
        enemy4.physicsBody = generateEnemyPhysicsBody(size: enemySize)
        enemy5.physicsBody = generateEnemyPhysicsBody(size: enemySize)
        enemy6.physicsBody = generateEnemyPhysicsBody(size: enemySize)
        enemy7.physicsBody = generateEnemyPhysicsBody(size: enemySize)
        enemy8.physicsBody = generateEnemyPhysicsBody(size: enemySize)
        enemy9.physicsBody = generateEnemyPhysicsBody(size: enemySize)
        
        enemy1.position = CGPoint(x: 600, y: 3250)
        enemy2.position = CGPoint(x: 1400, y: 3550)
        enemy3.position = CGPoint(x: 1800, y: 3250)
        enemy4.position = CGPoint(x: 2200, y: 3550)
        enemy5.position = CGPoint(x: 3000, y: 3250)
        enemy6.position = CGPoint(x: -800, y: 1050)
        enemy7.position = CGPoint(x: -600, y: 1650)
        enemy8.position = CGPoint(x: 4200, y: 1350)
        enemy9.position = CGPoint(x: 4400, y: 750)
        
        playerNode.run(SKAction.sequence([
            SKAction.run {
                self.textIsShowing = 1
            },
            SKAction.run {
                self.textContent = "Congratulations!\nYou have defeated the first wave!\nBut be careful now, the second wave have some more sofisticated alien spaceships!"
            },
            SKAction.wait(forDuration: 5),
            SKAction.run {
                self.textContent = "Get Ready!"
            },
            SKAction.wait(forDuration: 4),
            SKAction.run {
                self.textContent = "3"
            },
            SKAction.wait(forDuration: 1),
            SKAction.run {
                self.textContent = "2"
            },
            SKAction.wait(forDuration: 1),
            SKAction.run {
                self.textContent = "1"
            },
            SKAction.wait(forDuration: 1),
            SKAction.run {
                self.textContent = "GO!"
            },
            SKAction.wait(forDuration: 1),
            SKAction.run {
                self.playerIsntImmune = true
                self.textIsShowing = 0
                self.addChild(enemy1)
                self.addChild(enemy2)
                self.addChild(enemy3)
                self.addChild(enemy4)
                self.addChild(enemy5)
                self.addChild(enemy6)
                self.addChild(enemy7)
                self.addChild(enemy8)
                self.addChild(enemy9)
                
                enemy1.run(self.getInPositionAndStartShootingVertical(node: enemy1, movementX: 0, movementY: -1000))
                enemy2.run(self.getInPositionAndStartShootingVertical(node: enemy2, movementX: 0, movementY: -1000))
                enemy3.run(self.getInPositionAndStartShootingVertical(node: enemy3, movementX: 0, movementY: -1000))
                enemy4.run(self.getInPositionAndStartShootingVertical(node: enemy4, movementX: 0, movementY: -1000))
                enemy5.run(self.getInPositionAndStartShootingVertical(node: enemy5, movementX: 0, movementY: -1000))
                enemy6.run(self.getInPositionAndStartShooting2D(node: enemy6, movementX: 1000, movementY: 0))
                enemy7.run(self.getInPositionAndStartShooting2D(node: enemy7, movementX: 1600, movementY: 0))
                enemy8.run(self.getInPositionAndStartShooting2D(node: enemy8, movementX: -1600, movementY: 0))
                enemy9.run(self.getInPositionAndStartShooting2D(node: enemy9, movementX: -1000, movementY: 0))
                self.playerMovementAllowed = true
            }
        ]))
        
    }
    
    func stage3() {
        playerIsntImmune = false
        enemiesAlive = 6
        playerNode.position = CGPoint(x: 2000, y: 1500)
        playerMovementAllowed = false
        
        let enemy1 = SKSpriteNode(color: .green, size: enemySize)
        let enemy2 = SKSpriteNode(color: .green, size: enemySize)
        let enemy3 = SKSpriteNode(color: .green, size: enemySize)
        let enemy4 = SKSpriteNode(color: .green, size: enemySize)
        let enemy5 = SKSpriteNode(color: .green, size: enemySize)
        let enemy6 = SKSpriteNode(color: .green, size: enemySize)
        
        enemy1.name = "enemy"
        enemy2.name = "enemy"
        enemy3.name = "enemy"
        enemy4.name = "enemy"
        enemy5.name = "enemy"
        enemy6.name = "enemy"
        
        enemy1.physicsBody = generateEnemyPhysicsBody(size: enemySize)
        enemy2.physicsBody = generateEnemyPhysicsBody(size: enemySize)
        enemy3.physicsBody = generateEnemyPhysicsBody(size: enemySize)
        enemy4.physicsBody = generateEnemyPhysicsBody(size: enemySize)
        enemy5.physicsBody = generateEnemyPhysicsBody(size: enemySize)
        enemy6.physicsBody = generateEnemyPhysicsBody(size: enemySize)
        
        enemy1.position = CGPoint(x: -800, y: 1150)
        enemy2.position = CGPoint(x: -400, y: 2250)
        enemy3.position = CGPoint(x: 1400, y: 3150)
        enemy4.position = CGPoint(x: 2200, y: 3550)
        enemy5.position = CGPoint(x: 4200, y: 1650)
        enemy6.position = CGPoint(x: 4400, y: 750)
        
        playerNode.run(SKAction.sequence([
            SKAction.run {
                self.textIsShowing = 1
            },
            SKAction.run {
                self.textContent = "You're our best!\nThe second wave has been defeated!\nLooks like that are coming aliens with more advanced spaceships, don't drop your guard!"
            },
            SKAction.wait(forDuration: 5),
            SKAction.run {
                self.textContent = "Get Ready!"
            },
            SKAction.wait(forDuration: 4),
            SKAction.run {
                self.textContent = "3"
            },
            SKAction.wait(forDuration: 1),
            SKAction.run {
                self.textContent = "2"
            },
            SKAction.wait(forDuration: 1),
            SKAction.run {
                self.textContent = "1"
            },
            SKAction.wait(forDuration: 1),
            SKAction.run {
                self.textContent = "GO!"
            },
            SKAction.wait(forDuration: 1),
            SKAction.run {
                self.playerIsntImmune = true
                self.textIsShowing = 0
                self.addChild(enemy1)
                self.addChild(enemy2)
                self.addChild(enemy3)
                self.addChild(enemy4)
                self.addChild(enemy5)
                self.addChild(enemy6)
                
                enemy1.run(self.getInPositionAndStartShooting4D(node: enemy1, movementX: 1000, movementY: 0))
                enemy2.run(self.getInPositionAndStartShooting4D(node: enemy2, movementX: 1000, movementY: 0))
                enemy3.run(self.getInPositionAndStartShooting4D(node: enemy3, movementX: 0, movementY: -1200))
                enemy4.run(self.getInPositionAndStartShooting4D(node: enemy4, movementX: 0, movementY: -1000))
                enemy5.run(self.getInPositionAndStartShooting4D(node: enemy5, movementX: -1200, movementY: 0))
                enemy6.run(self.getInPositionAndStartShooting4D(node: enemy6, movementX: -1000, movementY: 0))
                self.playerMovementAllowed = true
            }
        ]))
    }
    
    func stage4() {
        playerIsntImmune = false
        enemiesAlive = 9
        playerNode.position = CGPoint(x: 2000, y: 1500)
        playerMovementAllowed = false
        
        let enemy1 = SKSpriteNode(color: .purple, size: enemySize)
        let enemy2 = SKSpriteNode(color: .purple, size: enemySize)
        let enemy3 = SKSpriteNode(color: .purple, size: enemySize)
        let enemy4 = SKSpriteNode(color: .purple, size: enemySize)
        let enemy5 = SKSpriteNode(color: .purple, size: enemySize)
        let enemy6 = SKSpriteNode(color: .purple, size: enemySize)
        let enemy7 = SKSpriteNode(color: .purple, size: enemySize)
        let enemy8 = SKSpriteNode(color: .purple, size: enemySize)
        let enemy9 = SKSpriteNode(color: .purple, size: enemySize)
        
        enemy1.name = "enemy"
        enemy2.name = "enemy"
        enemy3.name = "enemy"
        enemy4.name = "enemy"
        enemy5.name = "enemy"
        enemy6.name = "enemy"
        enemy7.name = "enemy"
        enemy8.name = "enemy"
        enemy9.name = "enemy"
        
        enemy1.physicsBody = generateEnemyPhysicsBody(size: enemySize)
        enemy2.physicsBody = generateEnemyPhysicsBody(size: enemySize)
        enemy3.physicsBody = generateEnemyPhysicsBody(size: enemySize)
        enemy4.physicsBody = generateEnemyPhysicsBody(size: enemySize)
        enemy5.physicsBody = generateEnemyPhysicsBody(size: enemySize)
        enemy6.physicsBody = generateEnemyPhysicsBody(size: enemySize)
        enemy7.physicsBody = generateEnemyPhysicsBody(size: enemySize)
        enemy8.physicsBody = generateEnemyPhysicsBody(size: enemySize)
        enemy9.physicsBody = generateEnemyPhysicsBody(size: enemySize)
        
        enemy1.position = CGPoint(x: -800, y: 1650)
        enemy2.position = CGPoint(x: -400, y: 1950)
        enemy3.position = CGPoint(x: 1000, y: 3250)
        enemy4.position = CGPoint(x: 1400, y: 3550)
        enemy5.position = CGPoint(x: 2000, y: 3850)
        enemy6.position = CGPoint(x: 2600, y: 3550)
        enemy7.position = CGPoint(x: 3000, y: 3250)
        enemy8.position = CGPoint(x: 4400, y: 1950)
        enemy9.position = CGPoint(x: 4800, y: 1650)
        
        playerNode.run(SKAction.sequence([
            SKAction.run {
                self.textIsShowing = 1
            },
            SKAction.run {
                self.textContent = "You're really amazing!\nBut don't let your confidence be your downfall!\nThe last wave is nothing like the previous, that enemies are aiming exactly to you!"
            },
            SKAction.wait(forDuration: 5),
            SKAction.run {
                self.textContent = "Get Ready!"
            },
            SKAction.wait(forDuration: 4),
            SKAction.run {
                self.textContent = "3"
            },
            SKAction.wait(forDuration: 1),
            SKAction.run {
                self.textContent = "2"
            },
            SKAction.wait(forDuration: 1),
            SKAction.run {
                self.textContent = "1"
            },
            SKAction.wait(forDuration: 1),
            SKAction.run {
                self.textContent = "GO!"
            },
            SKAction.wait(forDuration: 1),
            SKAction.run {
                self.playerIsntImmune = true
                self.textIsShowing = 0
                self.addChild(enemy1)
                self.addChild(enemy2)
                self.addChild(enemy3)
                self.addChild(enemy4)
                self.addChild(enemy5)
                self.addChild(enemy6)
                self.addChild(enemy7)
                self.addChild(enemy8)
                self.addChild(enemy9)
                
                enemy1.run(self.getInPositionAndStartShootingAimed(node: enemy1, movementX: 1000, movementY: 0))
                enemy2.run(self.getInPositionAndStartShootingAimed(node: enemy2, movementX: 1000, movementY: 0))
                enemy3.run(self.getInPositionAndStartShootingAimed(node: enemy3, movementX: 0, movementY: -1000))
                enemy4.run(self.getInPositionAndStartShootingAimed(node: enemy4, movementX: 0, movementY: -1000))
                enemy5.run(self.getInPositionAndStartShootingAimed(node: enemy5, movementX: 0, movementY: -1000))
                enemy6.run(self.getInPositionAndStartShootingAimed(node: enemy6, movementX: 0, movementY: -1000))
                enemy7.run(self.getInPositionAndStartShootingAimed(node: enemy7, movementX: 0, movementY: -1000))
                enemy8.run(self.getInPositionAndStartShootingAimed(node: enemy8, movementX: -1000, movementY: 0))
                enemy9.run(self.getInPositionAndStartShootingAimed(node: enemy9, movementX: -1000, movementY: 0))
                self.playerMovementAllowed = true
            }
        ]))
    }
    
}
