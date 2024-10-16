//
//  renderScene.swift
//  Metal_graphics
//
//  Created by Vincent zhou on 2024/10/16.
//

import Foundation

class RenderScene {
    
    var player: Camera
    var triangles: [SimpleComponent]
    
    init() {
        player = Camera(
            position: [0, 0, 0],
            eulers: [0.0, 90.0, 0.0]
        )
        
        triangles = [
            SimpleComponent(
                position: [5, 0.0, 0.0],
                eulers: [0.0, 0.0, 0.0]
            )
        ]
    }
    
    func update() {
        
        player.updateVectors()
        
        for triangle in triangles {
            
            triangle.eulers.z += 01
            if triangle.eulers.z > 360 {
                triangle.eulers.z -= 360
            }
            
        }
        
    }
}
