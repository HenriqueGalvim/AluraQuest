import '../enums/personagem.dart';
import '../interfaces/combate.dart';
import 'personagem.dart';

class Guerreiro extends Personagem implements Combate {
  List<String> _equipamentos = [];
  String _estilo;
  
  List<String> get getEquipamentos {
    return _equipamentos;
  }

  String get getEstilo {
    return _estilo;
  }

  void set setEquipamentos(String nomeEquipamento) {
    _equipamentos.add(nomeEquipamento);
  }

  void set setEstilo(String estilo) {
    _estilo = estilo;
  }

  Guerreiro(nome, raca, classe, idade, altura, magico, vida, energia,
      habilidades, this._equipamentos, this._estilo)
      : super(nome, raca, classe, idade, altura, magico, vida, energia,
            habilidades) {}

  @override
  ExibirFichaPersonagem() {
    print("Sou um guerreiro");
    super.ExibirFichaPersonagem();
    print("\nLista de Equipamentos");
    for (String equipamento in getEquipamentos) {
      print(" - ${equipamento}");
    }
    print("\nUso o estilo de combate ${getEstilo}");
  }

  @override
  void atacar(Personagem alvo) {
    alvo.setVida = alvo.getVida - 15;
    alvo.AtualizarStatus();
    if (alvo.getStatusVida == StatusVida.derrotado) {
      print("${this.getNome} derrotou ${alvo.getNome}");
    }
  }
}
