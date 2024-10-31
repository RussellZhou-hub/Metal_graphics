//
//  Shader.metal
//  Metal_graphics
//
//  Created by Vincent zhou on 2024/10/15.
//

#include <metal_stdlib>
using namespace metal;

#include "definitions.h"

struct VertexIn {
    float4 position [[ attribute(0) ]];
    float2 texcoord [[ attribute(1) ]];
};

struct Fragment {
    float4 position [[position]];
    float2 texcoord;
};

vertex Fragment vertexShader(const VertexIn vertex_in [[ stage_in ]],
                             constant matrix_float4x4 &model [[ buffer(1) ]],
                                     constant CameraParameters &camera [[ buffer(2) ]]
                             ){
    
    Fragment output;
    output.position = camera.projection * camera.view * model * float4(vertex_in.position.x, vertex_in.position.y, vertex_in.position.z, 1);
    output.texcoord = vertex_in.texcoord;
    
    return output;
}

fragment float4 fragmentShader(
    Fragment input [[stage_in]],
    texture2d<float> objectTexture [[texture(0)]],
    sampler samplerObject [[sampler(0)]]
) {
    
    return objectTexture.sample(samplerObject, input.texcoord);
}
