//
//  definitions.h
//  Metal_graphics
//
//  Created by Vincent zhou on 2024/10/15.
//

#ifndef definitions_h
#define definitions_h

#include <simd/simd.h>

typedef uint32_t uint;

struct Vertex {
    vector_float3 position;
    vector_float3 color;
};

struct CameraParameters {
    matrix_float4x4 view;
    matrix_float4x4 projection;
    vector_float3 position;
};

struct DirectionalLight {
    vector_float3 forwards;
    vector_float3 color;
};

struct Spotlight {
    vector_float3 position;
    vector_float3 forwards;
    vector_float3 color;
};

struct Pointlight {
    vector_float3 position;
    vector_float3 color;
};

enum lightType {
    UNDEFINED,
    DIRECTIONAL,
    SPOTLIGHT,
    POINTLIGHT
};

struct FragmentData {
    uint lightCount;
};

#endif /* definitions_h */


