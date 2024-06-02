local rust_obfuscator = require("rust_obfuscator") -- Assume Rust compiled to Lua compatible module

local obfuscator = {}

function obfuscator.obfuscate(script)
    return rust_obfuscator.obfuscate_lua(script)
end

return obfuscator
