/****************************************************************************************************************
/__/\\\\\\\\\\\\\\\_____/\\\\\\\\\________/\\\\\\\\\____________/                                               |
/__\///////\\\/////____/\\\\\\\\\\\\\____/\\\\\\\\\\\\\_________/   Callum James Glover                         |
/_________\/\\\________/\\\/////////\\\__/\\\/////////\\\_______/   NCCA, Bournemouth University                |
/__________\/\\\_______\/\\\_______\/\\\_\/\\\_______\/\\\______/   s4907224@bournemouth.ac.uk                  |
/___________\/\\\_______\/\\\\\\\\\\\\\\\_\/\\\\\\\\\\\\\\\_____/   callum@glovefx.com                          |
/____________\/\\\_______\/\\\/////////\\\_\/\\\/////////\\\____/   07946 750075                                |
/_____________\/\\\_______\/\\\_______\/\\\_\/\\\_______\/\\\___/   Level 6 Computing for Animation Project     |
/______________\/\\\_______\/\\\_______\/\\\_\/\\\_______\/\\\__/   https://github.com/NCCA/CA1-2018-s4907224   |
/_______________\///________\///________\///__\///________\///__/                                               |
****************************************************************************************************************/
/// @file taa_v.glsl
/// @brief A simple passthrough vertex shader for essentially blitting a texture to a quad.
#version 430

layout (location=0) in vec3 VertexPosition;
layout (location=1) in vec2 VertexUV;

uniform mat4 MVP;

out vec2 FragmentUV;

void main()
{
  FragmentUV = VertexUV;
  gl_Position = MVP * vec4(VertexPosition, 1.0);
}

