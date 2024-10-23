import 'Models/guerreiro.dart';
import 'Models/mago.dart';
import 'Models/personagem.dart';

void main() {
  print("----- Alura Quest -----\n");
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
