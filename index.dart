class Personagem {
  String nome;
  String raca;
  String classe;
  int idade;
  double altura;
  bool magico;
  int vida;
  int energia;
  List<String> habilidades;

  Personagem(this.nome, this.raca, this.classe, this.idade, this.altura,
      this.magico, this.vida, this.energia,this.habilidades) {}

  void ExibirFichaPersonagem() {
    print("Nome: ${this.nome}");
    print("Raça: ${this.raca}");
    print("Classe: ${this.classe}");
    print("Idade: ${this.idade}");
    print("Altura: ${this.altura}");
    if (this.magico) {
      print("Magico: É Magico");
    } else {
      print("Magico: Não é mágico");
    }
    print("Vida: ${this.vida}");
    print("Energia: ${this.energia}");
    print("Lista de Habilidades");
    for (String habilidade in this.habilidades) {
      print(" - ${habilidade}");
    }
  }

}

void main() {
  Personagem personagem1 = new Personagem("Henrique", "Humano", "Guerreiro", 20, 1.80, false, 300, 250, ['Golpe esmagador','Provocação','Investida Furiosa']);
  personagem1.ExibirFichaPersonagem();
}
