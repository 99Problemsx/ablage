uniform sampler2D texture;
uniform vec2 texSizeInv;
uniform float time;

varying vec2 v_texCoord;

float sc_alpha(vec2 offset)
{
    return texture2D(texture, v_texCoord + offset * texSizeInv).a;
}

float sc_hash(vec2 p)
{
    p = fract(p * vec2(123.34, 456.21));
    p += dot(p, p + 45.32);
    return fract(p.x * p.y);
}

float sc_noise(vec2 p)
{
    vec2 i = floor(p);
    vec2 f = fract(p);
    f = f * f * (3.0 - 2.0 * f);
    return mix(mix(sc_hash(i), sc_hash(i + vec2(1.0, 0.0)), f.x),
               mix(sc_hash(i + vec2(0.0, 1.0)),
                   sc_hash(i + vec2(1.0, 1.0)), f.x), f.y);
}

void main()
{
    vec4 source = texture2D(texture, v_texCoord);

    // Glutrand direkt um die Pokemon-Silhouette.
    float near_alpha = 0.0;
    near_alpha = max(near_alpha, sc_alpha(vec2( 1.0,  0.0)));
    near_alpha = max(near_alpha, sc_alpha(vec2(-1.0,  0.0)));
    near_alpha = max(near_alpha, sc_alpha(vec2( 0.0,  1.0)));
    near_alpha = max(near_alpha, sc_alpha(vec2( 0.0, -1.0)));
    near_alpha = max(near_alpha, sc_alpha(vec2( 1.0,  1.0)));
    near_alpha = max(near_alpha, sc_alpha(vec2(-1.0,  1.0)));
    near_alpha = max(near_alpha, sc_alpha(vec2( 1.0, -1.0)));
    near_alpha = max(near_alpha, sc_alpha(vec2(-1.0, -1.0)));

    float wide_alpha = 0.0;
    wide_alpha = max(wide_alpha, sc_alpha(vec2( 2.0,  0.0)));
    wide_alpha = max(wide_alpha, sc_alpha(vec2(-2.0,  0.0)));
    wide_alpha = max(wide_alpha, sc_alpha(vec2( 0.0,  2.0)));
    wide_alpha = max(wide_alpha, sc_alpha(vec2( 0.0, -2.0)));

    // Drei unterschiedlich schnelle Flammenschichten steigen von der
    // Silhouette auf. Die seitliche Welle verhindert starre Doppelbilder.
    float wave1 = sin(time * 6.1 + v_texCoord.y * 43.0) * 1.15;
    float wave2 = sin(time * 4.7 + v_texCoord.y * 35.0 + 2.1) * 1.75;
    float wave3 = sin(time * 3.8 + v_texCoord.y * 29.0 + 4.4) * 2.30;
    float layer1 = sc_alpha(vec2(wave1, 2.0));
    float layer2 = sc_alpha(vec2(wave2, 4.2));
    float layer3 = sc_alpha(vec2(wave3, 7.0));

    float grain = sc_noise(vec2(v_texCoord.x * 34.0 - time * 2.2,
                                v_texCoord.y * 39.0 + time * 5.1));
    float lick = 0.62 + 0.38 * sin(v_texCoord.x * 57.0 + time * 7.4);
    float flame1 = layer1 * (0.72 + grain * 0.28);
    float flame2 = layer2 * smoothstep(0.22, 0.73, grain + lick * 0.25);
    float flame3 = layer3 * smoothstep(0.48, 0.88, grain + lick * 0.18);

    float outline = max(near_alpha * 0.96, wide_alpha * 0.66) - source.a;
    float rising = max(flame1 * 0.58, max(flame2 * 0.43, flame3 * 0.31));
    rising = max(rising - source.a * 0.22, 0.0);
    float pulse = 0.88 + 0.12 * sin(time * 8.2 + v_texCoord.x * 31.0);
    float aura = clamp(max(outline, rising) * pulse, 0.0, 0.94);

    // Rot an der heissen Basis, Magenta in der Mitte und tiefes Violett
    // an den langen Flammenspitzen.
    float purple_mix = clamp(flame2 * 0.65 + flame3 * 1.25 + grain * 0.18,
                             0.0, 1.0);
    vec3 deep_purple = vec3(0.24, 0.015, 0.48);
    vec3 hot_magenta = vec3(0.92, 0.025, 0.42);
    vec3 hot_red = vec3(1.00, 0.055, 0.018);
    vec3 aura_color = mix(hot_red, hot_magenta, purple_mix * 0.72);
    aura_color = mix(aura_color, deep_purple,
                     smoothstep(0.48, 0.95, purple_mix));

    float inner_rim = clamp(source.a - min(sc_alpha(vec2(1.0, 0.0)),
                                           sc_alpha(vec2(-1.0, 0.0))),
                            0.0, 1.0);
    vec3 source_color = mix(source.rgb, hot_magenta,
                            inner_rim * (0.25 + 0.12 * pulse));
    vec3 result_color = mix(aura_color, source_color, source.a);

    gl_FragColor = vec4(result_color, max(source.a, aura));
}
