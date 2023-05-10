//
//  File.swift
//  
//
//  Created by Jpsmor on 19/04/23.
//

import SwiftUI

struct GameOver: View {
    @Environment(\.presentationMode) var presentation
    
    @AppStorage("gameWin") var gameWin: Bool = false
    @AppStorage("gameOver") var gameOver: Bool = false
    @AppStorage("invincibleMode") var invincibleModeActivated: Bool = false
    
    
    var body: some View {
        ZStack {
            Color.gray
                .ignoresSafeArea()
            VStack {
                Spacer()
                    .frame(height: UIScreen.main.bounds.height * 0.03)
                Text("Game Over!\nIf you're having a hard time beating the game and want to see the entire game, consider activating the invincible mode.")
                    .multilineTextAlignment(.center)
                    .frame(width: UIScreen.main.bounds.width * 0.8, height: UIScreen.main.bounds.height * 0.3)
                    .font(.system(size:60))
                    .foregroundColor(.white)
                    .padding()
                    .minimumScaleFactor(0.01)
                    .background(.black)
                    .cornerRadius(15)
                Spacer()
                Button (action: {
                    gameOver = false
                    NavigationUtil.popToRootView()
                    
                } ){
                        Text("Restart Game")
                            .font(.system(size:60))
                            .foregroundColor(.white)
                            .padding()
                            .background(.black)
                            .cornerRadius(15)
                            .minimumScaleFactor(0.01)
                    }
                Button (action: {
                    gameOver = false
                    invincibleModeActivated = true
                    NavigationUtil.popToRootView()
                } ){
                    Text("Activate invincible mode")
                        .font(.system(size:60))
                        .foregroundColor(.white)
                        .padding()
                        .background(.black)
                        .cornerRadius(15)
                        .minimumScaleFactor(0.01)
                    }
                Spacer()
                    .frame(height: UIScreen.main.bounds.height * 0.03)
            }
        }
    }
}

struct GameOverView_Previews: PreviewProvider {
    static var previews: some View {
        GameOver()
            .previewInterfaceOrientation(.landscapeRight
            )
    }
}
