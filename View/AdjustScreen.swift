//
//  File.swift
//  
//
//  Created by Jpsmor on 18/04/23.
//

import SwiftUI

struct AdjustScreen: View {
    @AppStorage("gameWin") var gameWin: Bool = false
    @AppStorage("gameOver") var gameOver: Bool = false
    
    var body: some View {
        ZStack {
            Color.gray
                .ignoresSafeArea()
            VStack {
                Spacer()
                    .frame(height: UIScreen.main.bounds.height * 0.03)
                Text("In this game we will use the movement of your iPad to control your spaceship.\nPlease, lock it in landscape right mode with fullscreen, hold it in a comfortable position and then touch on \"I'm ready!\" to proceed.\nHave fun! ")
                    .multilineTextAlignment(.center)
                    .frame(width: UIScreen.main.bounds.width * 0.8)
                    .font(.system(size:60))
                    .foregroundColor(.white)
                    .padding()
                    .minimumScaleFactor(0.01)
                    .background(.black)
                    .cornerRadius(15)
                Spacer()
                HStack {
                    Spacer()
                    NavigationLink(destination: ContentView().navigationBarBackButtonHidden(true), label: {
                        ZStack {
                            Image(systemName: "circle.fill")
                                .resizable()
                                .frame(width: 100, height: 100)
                            Text("I'm ready!")
                                .foregroundColor(.red)
                        }
                    })
                    Spacer()
                        .frame(width: UIScreen.main.bounds.width * 0.03)
                }
                Spacer()
                    .frame(height: UIScreen.main.bounds.height * 0.03)
            }
        }
    }
}

struct AdjustScreenView_Previews: PreviewProvider {
    static var previews: some View {
        AdjustScreen()
            .previewInterfaceOrientation(.landscapeRight
            )
    }
}
