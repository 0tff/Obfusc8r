function obfuscateLua(script) {
    return script.split('').map(char => `\\${char.charCodeAt(0)}`).join('');
}

module.exports = obfuscateLua;
