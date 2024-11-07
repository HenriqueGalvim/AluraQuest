import '../enums/personagem.dart';
import '../exceptions/personagem_exceptions.dart';
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

  Guerreiro(nome, raca, classe, idade, magico, vida, energia,
      habilidades, this._equipamentos, this._estilo, {altura})
      : super(nome, raca, classe, idade, altura: altura, magico, vida, energia,
            habilidades) {
              AtualizarStatus();
            }

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
    try {
      if (alvo.getStatusVida != StatusVida.derrotado) {
        if (alvo.getVida < 15) {
          alvo.setVida = 0;
        } else {
          alvo.setVida = alvo.getVida - 15;
        }
        alvo.AtualizarStatus();
        alvo.getStatusVida;
        if (alvo.getStatusVida == StatusVida.derrotado) {
          print("${this.getNome} derrotou ${alvo.getNome}");
        }
      }else{
        throw PersonagemDerrotadoException();
      }
    } on PersonagemDerrotadoException catch (e) {
      print(e);
    }
  }
}
