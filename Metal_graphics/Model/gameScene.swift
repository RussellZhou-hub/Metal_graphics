//
//  renderScene.swift
//  Metal_graphics
//
//  Created by Vincent zhou on 2024/10/16.
//

import Foundation
import SwiftUI

class GameScene : ObservableObject {
    
    @Published var player: Camera
    @Published var cubes: [SimpleComponent]
    
    init() {
        player = Camera(
            position: [-3, 0, 2.0],
            eulers: [0.0, 110.0, 0.0]
        )
        
        cubes = [
            SimpleComponent(
                position: [3, 0.0, 0.0],
                eulers: [0.0, 0.0, 0.0]
            )
        ]
    }
    
    func update() {
        
        player.updateVectors()
        
        for cube in cubes {
            
            cube.eulers.z += 1
            if cube.eulers.z > 360 {
                cube.eulers.z -= 360
            }
            
        }
        
    }
    
    func spinPlayer(offset: CGSize) {
        let dTheta: Float = Float(offset.width);
        let dPhi: Float = Float(offset.height);
        
        player.eulers.z += 0.001*dTheta
        player.eulers.y += 0.001*dPhi
        
        if player.eulers.z<0 {
            player.eulers.z -= 360
        } else if player.eulers.z>360{
            player.eulers.z -= 360
        }
        
        if player.eulers.y<1 {
            player.eulers.y = 1
        } else if player.eulers.y>179{
            player.eulers.y = 179
        }
        
        player.updateVectors()
    }
}
