function saludar(){
    alert("Hola mundo");
}

console.log("Hola mundo");
console.log("un valor de tipo texto");
console.log(20);
console.log(1.2);
console.log(1,62);
console.log(1+1);
console.log(true);
console.log(false);

/*
3 tipos de variables
var: Declara una variable opcionalmente la inicia a un valor 
let: Declara una variable local con ambito de bloque, opcionalmente la inicia a un valor (Solo permite iniciarla o declararla una vez)
const: Declara un nombre constante de solo lectura de ambito de bloque
*/

//Var
var nombrea = "kike";
var nombrea = "kike2";

console.log(nombrea);

//Let
let user = "Marianna";
user = "test";
console.log(user);

//Const
const pi = 3.1426;
console.log(pi);

var x =1;
var y =2;
var resultado = x+y;
console.log(resultado);


//Concatenación

var uno = "Hola ";
var dos = "como estas?";

var unir = uno + dos;
console.log(unir);

console.log("Hola "+ "como estas?"); 

var dato1 = 100;
var dato2 = 200;
console.log(dato1,dato2);