function obfuscateScript() {
    const input = document.getElementById('inputScript').value;
    const obfuscated = input.split('').map(char => `\\${char.charCodeAt(0)}`).join('');
    document.getElementById('outputScript').value = obfuscated;
}
