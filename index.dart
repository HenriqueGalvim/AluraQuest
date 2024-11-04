import 'Models/guerreiro.dart';
import 'Models/mago.dart';
import 'Models/personagem.dart';
import 'enums/personagem.dart';

void main() {
  print("----- Alura Quest -----\n");
  Personagem personagem1 = new Personagem(
      "Henrique",
      "Humano",
      "Guerreiro",
      20,
      1.80,
      false,
      -2,
      250,
      ['Golpe esmagador', 'Provocação', 'Investida Furiosa']);
  personagem1.ExibirFichaPersonagem();

  Guerreiro guerreiro1 = new Guerreiro(
      "Lucas",
      "Anão",
      "Guerreiro",
      20,
      1.80,
      false,
      300,
      250,
      ['Golpe esmagador', 'Provocação', 'Investida Furiosa'],
      ['couraça da justiça', 'espada do espirito'],
      'sentado');

  Mago mago1 = new Mago(
      "Victor",
      "Elfo",
      "Mago",
      20,
      1.80,
      true,
      200,
      350,
      ['Teletransporte', 'Previsão', 'Batida com cajado'],
      ['cajado gélido', 'manopla de mana']);

  mago1.LancarFeitico("Bola de fogo",Feiticos.fogo);
  print("------ \n");

  while (mago1.getStatusVida!= StatusVida.derrotado &&
      guerreiro1.getStatusVida != StatusVida.derrotado) {
    guerreiro1.atacar(mago1);
    mago1.atacar(guerreiro1);
  }
  guerreiro1.ExibirFichaPersonagem();
  print("------ \n");
  mago1.ExibirFichaPersonagem();
  mago1.AdicionarFeitico(Feiticos.fogo, 20);
  mago1.AdicionarFeitico(Feiticos.cura, 10);
  mago1.AdicionarFeitico(Feiticos.gelo, 30);
  for (var feiticos in mago1.getFeiticos.keys) {
    print(feiticos);
  }
}
