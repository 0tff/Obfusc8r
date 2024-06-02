local obfuscator = require("lua/obfuscator")

local test_script = 'print("Hello, World!")'
local obfuscated_script = obfuscator.obfuscate(test_script)

print(obfuscated_script)
