import SwiftUI
import SpriteKit

struct ContentView: View {
    
    @Environment(\.presentationMode) var presentation
    
    @AppStorage("gameWin") var gameWin: Bool = false
    @AppStorage("gameOver") var gameOver: Bool = false
    @AppStorage("life1") var life1: Int = 1
    @AppStorage("life2") var life2: Int = 1
    @AppStorage("life3") var life3: Int = 1
    @AppStorage("stage") var stage: Int = 1
    @AppStorage("textIsShowing") var textIsShowing: Int = 0
    @AppStorage("textContent") var textContent: String = ""
    
    
    
    @ObservedObject var scene: GameScene = {
        let scene = GameScene()
        scene.size = CGSize(width: 4000, height: 3000)
        scene.scaleMode = .aspectFit
        return scene
    }()
    
    
    var body: some View {
        
        ZStack {
            NavigationLink("", destination: GameOver().navigationBarBackButtonHidden(true),isActive: $gameOver)
            NavigationLink("", destination: GameWin().navigationBarBackButtonHidden(true),isActive: $gameWin)
            Color.gray
                .ignoresSafeArea()
            SpriteView(scene: scene)
                .ignoresSafeArea()
            VStack {
                Spacer()
                    .frame(height: UIScreen.main.bounds.height * 0.03)
                VStack{
                    HStack {
                        Spacer()
                        Image(systemName: "heart.fill")
                            .resizable()
                            .frame(width: UIScreen.main.bounds.width * 0.02, height: UIScreen.main.bounds.width * 0.02)
                            .foregroundColor({
                                if life1 == 1 {
                                    return .red
                                } else {
                                    return .clear
                                }
                            }())
                            .opacity({ if textIsShowing == 0 {
                                return 1
                            } else {
                                return 0
                            }
                            }())
                        Image(systemName: "heart.fill")
                            .resizable()
                            .frame(width: UIScreen.main.bounds.width * 0.02, height: UIScreen.main.bounds.width * 0.02)
                            .foregroundColor({
                                if life2 == 1 {
                                    return .red
                                } else {
                                    return .clear
                                }
                            }())
                            .opacity({ if textIsShowing == 0 {
                                return 1
                            } else {
                                return 0
                            }
                            }())
                        Image(systemName: "heart.fill")
                            .resizable()
                            .frame(width: UIScreen.main.bounds.width * 0.02, height: UIScreen.main.bounds.width * 0.02)
                            .foregroundColor({
                                if life3 == 1 {
                                    return .red
                                } else {
                                    return .clear
                                }
                            }())
                            .opacity({ if textIsShowing == 0 {
                                return 1
                            } else {
                                return 0
                            }
                            }())
                        Spacer()
                    }
                    Text("Stage: \(stage)")
                        .foregroundColor(.white)
                        .opacity({ if textIsShowing == 0 {
                            return 1
                        } else {
                            return 0
                        }
                        }())
                    }
                Spacer()
                HStack {
                    Spacer()
                    Button(action: {
                        scene.playerDidShoot()
                    }, label: {
                        ZStack {
                            Image(systemName: "circle.fill")
                                .resizable()
                                .frame(width: 100, height: 100)
                            Text("SHOOT")
                                .foregroundColor(.red)
                        }
                    })
                    .opacity({ if textIsShowing == 0 {
                        return 1
                    } else {
                        return 0
                    }
                    }())
                    Spacer()
                        .frame(width: UIScreen.main.bounds.width * 0.03)
                }
                Spacer()
                    .frame(height: UIScreen.main.bounds.height * 0.03)
            }
            Text("\(textContent)")
                .multilineTextAlignment(.center)
                .frame(width: UIScreen.main.bounds.width * 0.8)
                .font(.system(size:60))
                .foregroundColor(.white)
                .padding()
                .minimumScaleFactor(0.01)
                .background(.black)
                .cornerRadius(15)
                .opacity(Double(textIsShowing))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
