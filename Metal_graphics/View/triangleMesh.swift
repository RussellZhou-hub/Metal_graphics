//
//  triangleMesh.swift
//  Metal_graphics
//
//  Created by Vincent zhou on 2024/10/16.
//

import MetalKit

class TriangleMesh{
    
    let vertexBuffer: MTLBuffer
    
    init(metalDevice: MTLDevice) {
        
        let vertices: [Vertex] = [
            Vertex(position: [-1, 0, -1], color: [1, 0, 0, 1]),
            Vertex(position: [1, 0, -1], color: [0, 1, 0, 1]),
            Vertex(position: [0, 0, 1], color: [0, 0, 1, 1])
        ]
        vertexBuffer = metalDevice.makeBuffer(bytes: vertices, length: vertices.count * MemoryLayout<Vertex>.stride, options: [])!
    }
}
