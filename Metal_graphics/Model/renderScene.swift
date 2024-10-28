//
//  renderScene.swift
//  Metal_graphics
//
//  Created by Vincent zhou on 2024/10/16.
//

import Foundation

class RenderScene {
    
    var player: Camera
    var cubes: [SimpleComponent]
    
    init() {
        player = Camera(
            position: [-5, 0, 2.0],
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
}
