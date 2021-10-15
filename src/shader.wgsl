[[block]]
struct Settings {
    line_pos: f32;
};

[[group(0), binding(0)]] var<uniform> settings: Settings;

[[stage(vertex)]]
fn vs_main([[builtin(vertex_index)]] idx: u32) -> [[builtin(position)]] vec4<f32> {
    if (idx == 0u) {
        return vec4<f32>(settings.line_pos, 1.0, 0.0, 1.0);
    } else {
        return vec4<f32>(settings.line_pos, -1.0, 0.0, 1.0);
    }
}

[[stage(fragment)]]
fn fs_main() -> [[location(0)]] vec4<f32> {
    return vec4<f32>(1.0, 0.0, 0.0, 1.0);
}