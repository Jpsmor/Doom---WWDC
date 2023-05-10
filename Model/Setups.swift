//
//  File.swift
//  
//
//  Created by Jpsmor on 18/04/23.
//

import SpriteKit

extension GameScene {
    
    func setupPlayer() {
        playerNode.name = "player"
        playerNode.position = CGPoint(x: 2000, y: 1500)
        let verticalConstraint = SKConstraint.positionY(SKRange(lowerLimit: 100, upperLimit: 2900))
        let horizontalConstraint = SKConstraint.positionX(SKRange(lowerLimit: 100, upperLimit: 3900))
        playerNode.constraints = [
            verticalConstraint,
            horizontalConstraint
        ]
        generatePlayerPhysicsBody()
        addChild(playerNode)
    }
}
