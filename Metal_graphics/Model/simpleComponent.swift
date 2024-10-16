//
//  simpleComponent.swift
//  Metal_graphics
//
//  Created by Vincent zhou on 2024/10/16.
//

import Foundation

class SimpleComponent {
    
    var position: simd_float3
    var eulers: simd_float3
    
    init(position: simd_float3, eulers: simd_float3) {
        
        self.position = position
        self.eulers = eulers
        
    }
}
