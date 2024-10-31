//
//  camera.swift
//  Metal_graphics
//
//  Created by Vincent zhou on 2024/10/16.
//

import Foundation

class Camera {
    
    var position: vector_float3
    var eulers: vector_float3
    
    var forwards: vector_float3
    var right: vector_float3
    var up: vector_float3
    
    init(position: vector_float3, eulers: vector_float3) {
        
        self.position = position
        self.eulers = eulers
        
        self.forwards = [0.0, 0.0, 0.0]
        self.right = [0.0, 0.0, 0.0]
        self.up = [0.0, 0.0, 0.0]
    }
    
    func updateVectors() {
        
        forwards = [
            cos(eulers[2] * .pi / 180.0) * sin(eulers[1] * .pi / 180.0),
            sin(eulers[2] * .pi / 180.0) * sin(eulers[1] * .pi / 180.0),
            cos(eulers[1] * .pi / 180.0)
        ]
        
        let globalUp: vector_float3 = [0.0, 0.0, 1.0]
        
        right = simd.normalize(cross(globalUp, forwards))
        
        up = simd.normalize(cross(forwards, right))
    }
}
