#ifndef Common_h
#define Common_h

#import <simd/simd.h>

typedef uint32_t uint;

typedef struct {
  matrix_float4x4 modelMatrix;
  matrix_float4x4 viewMatrix;
  matrix_float4x4 projectionMatrix;
} Uniforms;

typedef struct {
  uint width;
  uint height;
} Params;


#endif /* Common_h */