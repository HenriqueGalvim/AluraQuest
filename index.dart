
abstract class Combate{
  void atacar(Personagem alvo);
}

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
class Guerreiro extends Personagem implements Combate{
  List<String> equipamentos;
  String estilo;
  Guerreiro(nome, raca, classe, idade, altura,
      magico, vida, energia,habilidades,this.equipamentos,this.estilo): super(nome,raca,classe,idade,altura,magico,vida,energia,habilidades){}

  @override
  ExibirFichaPersonagem(){
    print("Sou um guerreiro");
    super.ExibirFichaPersonagem();
    print("\nLista de Equipamentos");
    for (String equipamento in this.equipamentos) {
      print(" - ${equipamento}");
    }
    print("\nUso o estilo de combate ${this.estilo}");
  }

  @override
  void atacar(Personagem alvo) {
    print("${this.nome} esta atacando");
    alvo.vida = alvo.vida - 15;
    print("${alvo.nome} perdeu 15 pontos de vida");
    if(alvo.vida == 0){
      print("${this.nome} derrotou ${alvo.nome}");
    }
  }
}

class Mago extends Personagem implements Combate{
  List<String> equipamentos;
  List<String> feiticos;

 Mago(nome, raca, classe, idade, altura,
      magico, vida, energia,habilidades,this.equipamentos,this.feiticos): super(nome,raca,classe,idade,altura,magico,vida,energia,habilidades){}

  @override
  ExibirFichaPersonagem(){
    print("Sou um mago");
    super.ExibirFichaPersonagem();
    print("\nLista de Equipamentos");
    for (String equipamento in this.equipamentos) {
      print(" - ${equipamento}");
    }
  }

  LancarFeitico(){
    print("\nLançando Feitiços");
    for (String feitico in this.feiticos) {
      print("- ${this.nome} usou ${feitico}");
    }
  }

  @override
  void atacar(Personagem alvo) {
    print("${this.nome} esta atacando");
    alvo.vida = alvo.vida - 10;
    print("${alvo.nome} perdeu 10 pontos de vida");
    if(alvo.vida == 0){
      print("${this.nome} derrotou ${alvo.nome}");
    }
  }
}

void main() {
  Personagem personagem1 = new Personagem("Henrique", "Humano", "Guerreiro", 20, 1.80, false, 300, 250, ['Golpe esmagador','Provocação','Investida Furiosa']);
  personagem1.ExibirFichaPersonagem();
  print("------ \n");
  Guerreiro guerreiro1 = new Guerreiro("Lucas", "Anão", "Guerreiro", 20, 1.80, false, 300, 250, ['Golpe esmagador','Provocação','Investida Furiosa'],['couraça da justiça','espada do espirito'],'sentado');
  guerreiro1.ExibirFichaPersonagem();
  print("------ \n");
  Mago mago1 = new Mago("Victor", "Elfo", "Mago", 20, 1.80, true, 200, 350, ['Teletransporte','Previsão','Batida com cajado'],['cajado gélido','manopla de mana'],['bola de fogo','rajada de gelo']);
  mago1.ExibirFichaPersonagem();
  mago1.LancarFeitico();
  print("------ \n");
  guerreiro1.atacar(mago1);
  print("------ \n");
  mago1.atacar(guerreiro1);

}
