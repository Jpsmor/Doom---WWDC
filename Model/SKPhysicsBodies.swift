//
//  File.swift
//  
//
//  Created by Jpsmor on 18/04/23.
//

import SpriteKit

extension GameScene {
    func generateEnemyPhysicsBody (size: CGSize) -> SKPhysicsBody {
        let body = SKPhysicsBody(rectangleOf: size)
        body.categoryBitMask = 3
        body.collisionBitMask = 1 | 2
        body.contactTestBitMask = 1 | 2
        body.isDynamic = false
        
        return body
    }
    
    func generatePlayerPhysicsBody() {
        playerNode.physicsBody = SKPhysicsBody(rectangleOf: playerNode.size)
        playerNode.physicsBody?.affectedByGravity = false
        playerNode.physicsBody?.allowsRotation = false
        playerNode.physicsBody?.categoryBitMask = 1
        playerNode.physicsBody?.collisionBitMask = 3 | 4
        playerNode.physicsBody?.contactTestBitMask = 3 | 4
    }
    
    func generateEnemyMissilePhysicsBody() -> SKPhysicsBody {
        let body = SKPhysicsBody(rectangleOf: enemyMissileSize)
        body.categoryBitMask = 3
        body.collisionBitMask = 1 | 2
        body.contactTestBitMask = 1 | 2
        body.affectedByGravity = false
        
        return body
    }
}
