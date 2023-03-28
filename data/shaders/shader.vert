#version 450

layout(binding = 0) uniform UniformBufferObject {
    mat4 proj;
    mat4 proj_ui;
    vec2 texturesize;
} ubo;

layout(location = 0) in vec3 inPosition;
layout(location = 1) in uvec3 inColor;
layout(location = 2) in vec2 inTexCoord;

// layout(location = 0) in uvec3 inPosition;
// layout(location = 1) in uvec3 inColor;
// layout(location = 2) in uvec2 inTexCoord;

layout(location = 0) out vec3 fragColor;

void main() {
    gl_Position = ubo.proj * vec4(inPosition, 1.0);
    //gl_Position = vec4(inPosition, 1.0);
    fragColor = vec3(inColor)/255.0;
}
