let vitoria = 310;
let derrota = 230;

let total = saldoRank(vitoria, derrota);

function saldoRank(vitoria, derrota) {
    return vitoria - derrota;
}

function resultado(total) {
    if (total < 11) {
        return "Ferro";
    } else if (total < 21) {
        return "Bronze";
    } else if (total < 51) {
        return "Prata";
    } else if (total < 81) {
        return "Ouro";
    } else if (total < 91) {
        return "Diamante";
    } else if (total < 101) {
        return "Lendário";
    } else {
        return "Imortal";
    }
}

console.log("O Herói tem um saldo de " + total + " e está no nível de " + resultado(total));
