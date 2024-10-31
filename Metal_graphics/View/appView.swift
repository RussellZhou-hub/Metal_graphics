//
//  appView.swift
//  Metal_graphics
//
//  Created by Vincent zhou on 2024/10/16.
//

import Foundation
import SwiftUI

struct appView: View {
    
    @EnvironmentObject var gameScene: GameScene
    var body: some View {
        ContentView().frame(width: 800, height: 600)
            .gesture(
                DragGesture()
                    .onChanged{
                        gesture in
                        gameScene.spinPlayer(offset: gesture.translation)
                    }
            )
    }
}

struct appView_Previews: PreviewProvider {
    static var previews: some View {
        appView().environmentObject(GameScene())
    }
}
