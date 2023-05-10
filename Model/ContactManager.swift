//
//  File.swift
//
//
//  Created by Jpsmor on 18/04/23.
//

import SpriteKit

extension GameScene {
    
    func didBegin(_ contact: SKPhysicsContact) {
        if contact.bodyA.node?.name == "player" && contact.bodyB.node?.name == "missile" {
            if playerIsntImmune {
                playerGotHitted()
                playerNode.run(SKAction.sequence([
                    SKAction.run {
                        self.playerIsntImmune = false
                        self.playerNode.color = .clear
                    },
                    SKAction.wait(forDuration: 0.2),
                    SKAction.run {
                        self.playerNode.color = self.playerColor
                    },
                    SKAction.wait(forDuration: 0.2),
                    SKAction.run {
                        self.playerNode.color = .clear
                    },
                    SKAction.wait(forDuration: 0.2),
                    SKAction.run {
                        self.playerNode.color = self.playerColor
                        self.playerIsntImmune = true
                    }
                ]))
            }
            contact.bodyB.node?.removeFromParent()
        } else if contact.bodyA.node?.name == "missile" && contact.bodyB.node?.name == "player" {
            if playerIsntImmune {
                playerGotHitted()
                playerNode.run(SKAction.sequence([
                    SKAction.run {
                        self.playerIsntImmune = false
                        self.playerNode.color = .clear
                    },
                    SKAction.wait(forDuration: 0.2),
                    SKAction.run {
                        self.playerNode.color = self.playerColor
                    },
                    SKAction.wait(forDuration: 0.2),
                    SKAction.run {
                        self.playerNode.color = .clear
                    },
                    SKAction.wait(forDuration: 0.2),
                    SKAction.run {
                        self.playerNode.color = self.playerColor
                    },
                    SKAction.wait(forDuration: 1),
                    SKAction.run {
                        self.playerIsntImmune = true
                    }
                ]))
            }
            contact.bodyA.node?.removeFromParent()
        }
        if contact.bodyA.node?.name == "player" && contact.bodyB.node?.name == "enemy" {
            if playerIsntImmune {
                playerGotHitted()
                let vector = CGVector(dx: playerNode.position.x - contact.bodyB.node!.position.x, dy: playerNode.position.y - contact.bodyB.node!.position.y)
                let angle = atan2(vector.dy, vector.dx)
                playerNode.run(SKAction.sequence([
                    SKAction.run {
                        self.playerIsntImmune = false
                        self.playerNode.color = .clear
                    },
                    SKAction.applyImpulse(CGVector(dx: cos(angle) * 30, dy: sin(angle) * 30), duration: 0.2),
                    SKAction.run {
                        self.playerNode.color = self.playerColor
                    },
                    SKAction.wait(forDuration: 0.2),
                    SKAction.run {
                        self.playerNode.color = .clear
                    },
                    SKAction.wait(forDuration: 0.2),
                    SKAction.run {
                        self.playerNode.color = self.playerColor
                    },
                    SKAction.wait(forDuration: 1),
                    SKAction.run {
                        self.playerIsntImmune = true
                    }
                ]))
            }
        } else if contact.bodyA.node?.name == "enemy" && contact.bodyB.node?.name == "player" {
            if playerIsntImmune {
                playerGotHitted()
                let vector = CGVector(dx: playerNode.position.x - contact.bodyB.node!.position.x, dy: playerNode.position.y - contact.bodyB.node!.position.y)
                let angle = atan2(vector.dy, vector.dx)
                playerNode.run(SKAction.sequence([
                    SKAction.run {
                        self.playerIsntImmune = false
                        self.playerNode.color = .clear
                    },
                    SKAction.applyImpulse(CGVector(dx: cos(angle) * 30, dy: sin(angle) * 30), duration: 0.2),
                    SKAction.run {
                        self.playerNode.color = self.playerColor
                    },
                    SKAction.wait(forDuration: 0.2),
                    SKAction.run {
                        self.playerNode.color = .clear
                    },
                    SKAction.wait(forDuration: 0.2),
                    SKAction.run {
                        self.playerNode.color = self.playerColor
                    },
                    SKAction.wait(forDuration: 1),
                    SKAction.run {
                        self.playerIsntImmune = true
                    }
                ]))
            }
        }
        if contact.bodyA.node?.name == "enemy" && contact.bodyB.node?.name == "playerMissile" {
            enemyGotDefeated()
            contact.bodyA.node!.run(SKAction.sequence([
                    SKAction.run {
                        contact.bodyA.node?.name = "dead"
                        contact.bodyA.node!.alpha = 0
                    },
                    SKAction.wait(forDuration: 0.2),
                    SKAction.run {
                        contact.bodyA.node!.alpha = 1
                    },
                    SKAction.wait(forDuration: 0.2),
                    SKAction.run {
                        contact.bodyA.node!.alpha = 0
                    },
                    SKAction.wait(forDuration: 0.2),
                    SKAction.run {
                        contact.bodyA.node!.alpha = 1
                    },
                    SKAction.wait(forDuration: 0.2),
                    SKAction.run {
                        contact.bodyA.node?.removeFromParent()
                    }
                ]))
            contact.bodyB.node?.removeFromParent()
        } else if contact.bodyA.node?.name == "playerMissile" && contact.bodyB.node?.name == "enemy" {
            enemyGotDefeated()
            print("2")
            contact.bodyB.node!.run(SKAction.sequence([
                    SKAction.run {
                        contact.bodyB.node?.name = "dead"
                        contact.bodyB.node!.alpha = 0
                    },
                    SKAction.wait(forDuration: 0.2),
                    SKAction.run {
                        contact.bodyB.node!.alpha = 1
                    },
                    SKAction.wait(forDuration: 0.2),
                    SKAction.run {
                        contact.bodyB.node!.alpha = 0
                    },
                    SKAction.wait(forDuration: 0.2),
                    SKAction.run {
                        contact.bodyB.node!.alpha = 1
                    },
                    SKAction.wait(forDuration: 0.2),
                    SKAction.run {
                        contact.bodyB.node?.removeFromParent()
                    }
                ]))
            contact.bodyA.node?.removeFromParent()
        }
        if contact.bodyA.node?.name == "dead" && contact.bodyB.node?.name == "playerMissile" {
            contact.bodyB.node?.removeFromParent()
        } else if contact.bodyA.node?.name == "playerMissile" && contact.bodyB.node?.name == "dead" {
            contact.bodyA.node?.removeFromParent()
        }
        if contact.bodyA.node?.name == "playerMissile" && contact.bodyB.node?.name == "missile" {
            contact.bodyA.node?.removeFromParent()
            contact.bodyB.node?.removeFromParent()
        } else if contact.bodyA.node?.name == "missile" && contact.bodyB.node?.name == "playerMissile" {
            contact.bodyA.node?.removeFromParent()
            contact.bodyB.node?.removeFromParent()
        }
        if contact.bodyA.node?.name == "dead" && contact.bodyB.node?.name == "missile" {
            contact.bodyB.node?.removeFromParent()
        } else if contact.bodyA.node?.name == "missile" && contact.bodyB.node?.name == "dead" {
            contact.bodyA.node?.removeFromParent()
        }
    }
    
    func didEnd(_ contact: SKPhysicsContact) {
//        print("terminou")
    }
    
}
