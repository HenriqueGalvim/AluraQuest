import '../interfaces/combate.dart';
import 'personagem.dart';

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