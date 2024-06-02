pub fn obfuscate_lua(script: &str) -> String {
    script.chars().map(|c| format!("\\{}", c as u8)).collect()
}
