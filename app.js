const readline = require('readline');

const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

rl.question('Podaj pierwszą liczbę ', (liczba_1) => {
    console.log(`X= ${liczba_1}`);
    rl.question('Podaj drugą liczbę ', (liczba_2) => {
        console.log(`Y= ${liczba_2}`);
        var wynik = liczba_1 * liczba_2;
        console.log(`Wynik obliczenia  X*Y = ${wynik}`);
        rl.close()
    })
})