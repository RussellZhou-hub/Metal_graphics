//
//  Metal_graphicsApp.swift
//  Metal_graphics
//
//  Created by Vincent zhou on 2024/10/14.
//

import SwiftUI

@main
struct Metal_graphicsApp: App {
    
    @StateObject private var gameScene = GameScene() // state object is instantiation
    
    var body: some Scene {
        WindowGroup {
            appView().environmentObject(gameScene)
            // environmentObject is abstract class
        }
    }
}
