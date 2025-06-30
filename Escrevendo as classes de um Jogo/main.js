class tipoHeroi {
  constructor(nome, idade, tipo) {
    this.nome = nome;
    this.idade = idade;
    this.tipo = tipo;
  }

  exibirInfo() {
    console.log(`O ${this.nome} atacou usando ${this.tipo}`);
  }
}

const heroi1 = new tipoHeroi("Guerreiro", 35, "Espada");
const heroi2 = new tipoHeroi("Mago", 50, "Magia");

heroi1.exibirInfo();
heroi2.exibirInfo();