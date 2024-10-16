//
//  ContentView.swift
//  Metal_graphics
//
//  Created by Vincent zhou on 2024/10/14.
//

import SwiftUI
import MetalKit

struct ContentView: UIViewRepresentable {
    
    func makeCoordinator() -> Renderer {
        Renderer(self)
    }
    
    func makeUIView(context: UIViewRepresentableContext<ContentView>)->MTKView {
        
        let mtkView = MTKView()
        mtkView.delegate = context.coordinator
        mtkView.preferredFramesPerSecond=60
        mtkView.enableSetNeedsDisplay=true
        
        if let metalDevice=MTLCreateSystemDefaultDevice(){
            mtkView.device = metalDevice
        }
        
        mtkView.framebufferOnly = false
        mtkView.drawableSize=mtkView.frame.size
        mtkView.isPaused=false
        
        return mtkView
    }
    
    func updateUIView(_ uiView: MTKView, context: UIViewRepresentableContext<ContentView>){
            
    }
}

#Preview {
    ContentView()
}
