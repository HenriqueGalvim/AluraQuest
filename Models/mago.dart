import '../enums/personagem.dart';
import '../interfaces/combate.dart';
import 'personagem.dart';

class Mago extends Personagem implements Combate {
  List<String> _equipamentos = [];
  Map<String, int> _feiticos = {};

  Mago(nome, raca, classe, idade, altura, magico, vida, energia, habilidades,
      this._equipamentos)
      : super(nome, raca, classe, idade, altura, magico, vida, energia,
            habilidades) {
AtualizarStatus();
            }

  List<String> get getEquipamentos {
    return _equipamentos;
  }
  Map<String, int> get getFeiticos{
    return _feiticos;
  }
  void set setEquipamentos(String nomeEquipamento){
    _equipamentos.add(nomeEquipamento);
  }

  void set setNomeFeitico(String nome){
    _feiticos[nome];
  }
  @override
  ExibirFichaPersonagem() {
    print("Sou um mago");
    super.ExibirFichaPersonagem();
    print("\nLista de Equipamentos");
    for (String equipamento in getEquipamentos) {
      print(" - ${equipamento}");
    }
  }

  AdicionarFeitico(Feiticos feitico, int poder) {
    this._feiticos[feitico.name] = poder;
  }

  LancarFeitico(String nome, Feiticos feitico) {
    super.setEnergia = getEnergia - 20;
    print("\nLançando Feitiço: ${nome}");
    print("\nTipo de feitiço: ${feitico.name.toUpperCase()}");
  }

  @override
  void atacar(Personagem alvo) {
    alvo.setVida = alvo.getVida - 10;
    alvo.AtualizarStatus();
    if (alvo.getStatusVida == StatusVida.derrotado) {
      print("${this.getNome} derrotou ${alvo.getNome}");
    }
  }
}
