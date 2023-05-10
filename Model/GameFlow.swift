//
//  File.swift
//  
//
//  Created by Jpsmor on 20/04/23.
//

import SpriteKit

extension GameScene {
    
    func enemyGotDefeated() {
        enemiesAlive -= 1
        if enemiesAlive == 0 {
            stage += 1
            goToNextStage()
        }
    }
    
    func goToNextStage() {
        switch stage {
        case 2:
            stage2()
        case 3:
            stage3()
        case 4:
            stage4()
        case 5:
            gameWon()
            self.removeAllActions()
            self.removeAllChildren()
        default:
            stage1()
        }
    }
    
    func gameWon() {
        self.removeAllActions()
        self.removeAllChildren()
        gameWin = true
    }
    
    func playerGotHitted() {
        lives -= 1
        if isInvincible {
            lives += 1
        }
        
        switch lives {
        case 2:
            life3 = 0
        case 1:
            life2 = 0
        case 0:
            gameOver = true
        default:
            life1 = 1
        }
    }
    
}
