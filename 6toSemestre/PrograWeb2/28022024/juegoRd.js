let numero = Math.abs(parseInt(prompt('Ingresa un numero del 1 al 10')));
let contador = 0;
let numeroRandom = Math.floor(Math.random() * (10 - 1)) + 1;
while(contador < 5){
    numero === numeroRandom ? console.log("correcto ganaste") : pass ;
    contador++;
}
console.log("Perdiste"+"el numero era"+numeroRandom);