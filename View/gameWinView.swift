//
//  File.swift
//  
//
//  Created by Jpsmor on 19/04/23.
//

import SwiftUI

struct GameWin: View {
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
                Text("Congratulations!\nYou've defended our orbit from menace!\nThe operation D.O.O.M. was completed!")
                    .multilineTextAlignment(.center)
                    .frame(width: UIScreen.main.bounds.width * 0.8, height: UIScreen.main.bounds.height * 0.5)
                    .font(.system(size:60))
                    .foregroundColor(.white)
                    .padding()
                    .minimumScaleFactor(0.01)
                    .background(.black)
                    .cornerRadius(15)
                Spacer()
                Button (action: {
                    gameWin = false
                    NavigationUtil.popToRootView() } ){
                        Text("Restart Game")
                            .font(.system(size:60))
                            .foregroundColor(.white)
                            .padding()
                            .background(.black)
                            .cornerRadius(15)
                            .minimumScaleFactor(0.01)
                    }
                Button (action: {
                    gameWin = false
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

struct GameWinView_Previews: PreviewProvider {
    static var previews: some View {
        GameWin()
            .previewInterfaceOrientation(.landscapeRight
            )
    }
}
