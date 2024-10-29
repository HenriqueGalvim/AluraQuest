import '../enums/personagem.dart';
import '../interfaces/combate.dart';
import 'personagem.dart';

class Mago extends Personagem implements Combate{
  List<String> equipamentos;
  Map<String, int> feiticos = {};

  Mago(nome, raca, classe, idade, altura,
      magico, vida, energia,habilidades,this.equipamentos): super(nome,raca,classe,idade,altura,magico,vida,energia,habilidades){}

  @override
  ExibirFichaPersonagem(){
    print("Sou um mago");
    super.ExibirFichaPersonagem();
    print("\nLista de Equipamentos");
    for (String equipamento in this.equipamentos) {
      print(" - ${equipamento}");
    }
  }

  AdicionarFeitico(Feiticos feitico, int poder ){
    this.feiticos[feitico.name] = poder;
  }

  LancarFeitico(String nome, Feiticos feitico){
    this.energia -= 20;
    print("\nLançando Feitiço: ${nome}");
    print("\nTipo de feitiço: ${feitico.name.toUpperCase()}");
  }

  @override
  void atacar(Personagem alvo) {
    alvo.vida = alvo.vida - 10;
    alvo.AtualizarStatus();
    if(alvo.statusVida == StatusVida.derrotado){
      print("${this.nome} derrotou ${alvo.nome}");
    }
  }
}