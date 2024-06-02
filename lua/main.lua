local obfuscator = require("obfuscator")

local input_file = arg[1]
if not input_file then
    print("Usage: lua lua/main.lua <path_to_lua_script>")
    os.exit(1)
end

local file = io.open(input_file, "r")
local script = file:read("*all")
file:close()

local obfuscated_script = obfuscator.obfuscate(script)

local output_file = input_file:gsub(".lua$", "_obfuscated.lua")
file = io.open(output_file, "w")
file:write(obfuscated_script)
file:close()

print("Obfuscation complete. Output saved to " .. output_file)
