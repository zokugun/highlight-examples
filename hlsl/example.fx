float4x4 WorldViewProjection  : WORLDVIEWPROJECTION;

float4 VS( float4 Position : POSITION ) : POSITION
{
    return mul(Position, WorldViewProjection);
}

float4 PS() : COLOR
{
    // This just returns a solid white color.
    return float4(1.0f, 1.0f, 1.0f, 1.0f);
}

technique Tech1
{
    pass pass0
    {
        vertexshader = compile vs_2_0 VS();
        pixelshader  = compile ps_2_0 PS();
    }
}