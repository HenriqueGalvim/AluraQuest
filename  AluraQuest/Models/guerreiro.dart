import '../interfaces/combate.dart';
import 'personagem.dart';

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