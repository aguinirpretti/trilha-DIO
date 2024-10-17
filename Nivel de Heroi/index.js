const readline = require('readline');

// Criar uma interface de leitura
const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

// Função para classificar o nível do herói
function classificarHeroi() {
    // Perguntar o nome do herói
    rl.question("Digite o nome do herói: ", (nome) => {
        // Perguntar o nível de xp do herói
        rl.question("Digite o nível de experiência (xp) do herói: ", (xp) => {
            const experiencia = parseInt(xp);
            let nivel;

            // Verificando o nível com base no xp
            if (experiencia < 1000) {
                nivel = "Ferro";
            } else if (experiencia >= 1001 && experiencia <= 2000) {
                nivel = "Bronze";
            } else if (experiencia >= 2001 && experiencia <= 3000) {
                nivel = "Prata";
            } else if (experiencia >= 3001 && experiencia <= 5000) {
                nivel = "Ouro";
            } else if (experiencia >= 5001 && experiencia <= 6000) {
                nivel = "Platina";
            } else if (experiencia >= 6001 && experiencia <= 8000) {
                nivel = "Diamante";
            } else if (experiencia >= 8001 && experiencia <= 9000) {
                nivel = "Ascendente";
            } else if (experiencia >= 9001 && experiencia <= 10000) {
                nivel = "Imortal";
            } else {
                nivel = "Radiante";
            }

            // Exibir o resultado
            console.log(`O herói ${nome} tem nível: ${nivel}`);

            // Fechar a interface
            rl.close();
        });
    });
}

// Chamar a função
classificarHeroi();
