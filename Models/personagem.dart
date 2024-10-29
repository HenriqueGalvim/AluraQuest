import '../enums/personagem.dart';

class Personagem {
  String _nome;
  String _raca;
  String _classe;
  int _idade;
  double _altura;
  bool _magico;
  int _vida;
  int _energia;
  List<String> _habilidades = [];
  StatusVida _statusVida = StatusVida.vivo;

  Personagem(this._nome, this._raca, this._classe, this._idade, this._altura,
      this._magico, this._vida, this._energia, this._habilidades) {}

  String get getNome {
    return _nome;
  }

  String get getRaca {
    return _raca;
  }

  String get getClasse {
    return _classe;
  }

  int get getIdade {
    return _idade;
  }

  double get getAltura {
    return _altura;
  }

  bool get getMagico {
    return _magico;
  }

  int get getVida {
    return _vida;
  }

  int get getEnergia {
    return _energia;
  }

  List<String> get getHabilidades {
    return _habilidades;
  }

  StatusVida get getStatusVida {
    return _statusVida;
  }

  void set setNome(String nome) {
    _nome = nome;
  }

  void set setRaca(String raca) {
    _raca = raca;
  }

  void set setClasse(String classe) {
    _classe = classe;
  }

  void set setIdade(int idade) {
    _idade = idade;
  }

  void set setAltura(double altura) {
    _altura = altura;
  }

  void set setMagico(bool magico) {
    _magico = magico;
  }

  void set setVida(int vida) {
    _vida = vida;
  }

  void set setEnergia(int energia) {
    _energia = energia;
  }

  void set setHabilidade(String habilidade) {
    _habilidades.add(habilidade);
  }

  void set setStatusVida(StatusVida statusVida) {
    _statusVida = statusVida;
  }

  void ExibirFichaPersonagem() {
    print("Nome: ${getNome}");
    print("Raça: ${getRaca}");
    print("Classe: ${getClasse}");
    print("Idade: ${getIdade}");
    print("Altura: ${getAltura}");
    if (getMagico) {
      print("Magico: É Magico");
    } else {
      print("Magico: Não é mágico");
    }
    print("Vida: ${getVida}");
    print("Energia: ${getEnergia}");
    print("Lista de Habilidades");
    for (String habilidade in getHabilidades) {
      print(" - ${habilidade}");
    }
    print("\nStatus de vida: ${getStatusVida.name.toUpperCase()} ");
  }

  AtualizarStatus() {
    if (getVida > 50) {
      setStatusVida = StatusVida.vivo;
    } else if (getVida >= 1 && getVida <= 50) {
      setStatusVida = StatusVida.ferido;
    } else {
      setStatusVida = StatusVida.derrotado;
    }
  }
}
