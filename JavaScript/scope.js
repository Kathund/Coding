let iAmGlobal = 'someValue'
let iAmLocal = 'ranger'

if (true) {
    let iAmLocal = 'max is gay'
    iAmGlobal = 'addi is hot'
    console.log(iAmGlobal);
    console.log(iAmLocal);
}

console.log(iAmLocal);
console.log(iAmGlobal);