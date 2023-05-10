//
//  File.swift
//  
//
//  Created by Jpsmor on 15/04/23.
//

import SwiftUI

struct StartScreenView: View {
    
    @AppStorage("gameWin") var gameWin: Bool = false
    @AppStorage("gameOver") var gameOver: Bool = false
    @AppStorage("life1") var life1: Int = 1
    @AppStorage("life2") var life2: Int = 1
    @AppStorage("life3") var life3: Int = 1
    
    var body : some View {
        NavigationView {
            ZStack {
                Color.gray
                    .ignoresSafeArea()
                VStack {
                    Spacer()
                        .frame(height: UIScreen.main.bounds.height * 0.1)
                    VStack {
                        Text("D.o.o.m.")
                            .foregroundColor(.white)
                            .font(.system(size: 1000))
                            .frame(width: UIScreen.main.bounds.width * 0.7, height: UIScreen.main.bounds.height * 0.25)
                            .minimumScaleFactor(0.01)
                            .lineLimit(1)
                        Text("Defending Our Orbit from Menace")
                            .foregroundColor(.white)
                            .font(.system(size: 1000))
                            .frame(width: UIScreen.main.bounds.width * 0.7, height: UIScreen.main.bounds.height * 0.05)
                            .minimumScaleFactor(0.01)
                            .lineLimit(1)
                    }
                    .frame(width: UIScreen.main.bounds.width * 0.8)
                    .padding()
                    .background(.black)
                    .cornerRadius(15)
                    Spacer()
                    NavigationLink (destination: AdjustScreen().navigationBarBackButtonHidden(false)) {
                        Text("Start Game")
                            .font(.system(size:60))
                            .foregroundColor(.white)
                            .padding()
                            .background(.black)
                            .cornerRadius(15)
                    }
                    Spacer()
                        .frame(height: UIScreen.main.bounds.height * 0.1)
                }
            }
        }
        .navigationViewStyle(.stack)
    }
}

struct StartScreenView_Previews: PreviewProvider {
    static var previews: some View {
        StartScreenView()
            .previewInterfaceOrientation(.landscapeRight
            )
    }
}
