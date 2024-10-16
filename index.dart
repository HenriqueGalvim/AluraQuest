void main() {
  FichaPersonagem();
}
void FichaPersonagem(){
  String nome = 'Henrique';
  String raca = 'Humano';
  String classe = 'Bardo';
  int idade = 20;
  double altura = 1.76;
  bool indicador = false;
  int vida = 100;
  List<String> habilidades = ['cantar','lábia'];
  ExibirPersonagem(nome,raca,classe,idade,altura,indicador,vida,habilidades);
  Batalha(nome, vida);
}

void ExibirPersonagem(String nome, String raca,String classe,int idade,double altura,bool indicador,int vida,List<String> habilidades){
  print("Nome: ${nome}");
  print("Raca: ${raca}");
  print("Classe: ${classe}");
  print("Idade: ${idade}");
  print("Altura: ${altura}");
  if(indicador){
    print("Indicador: Magico");
  }else{
    print("Indicador: Não é mágico");
  }
  print("Vida: ${vida}");
  print("Lista de Habilidades");
  for(String habilidade in habilidades){
    print("- ${habilidade}");
  }
}

void Batalha(String nome,int vida){
  print("\n--- Em Batalha ---\n");
  print("Personagem: ${nome} - Vida/Energia: ${vida}\n");
  while (vida >= 20){
    print("- ${nome} perdeu 20 pontos de vida/energia");
    vida = vida - 20;
    print("- Vida/Energia atual ${vida}\n");
  }
  print("--- Fim Batalha ---");
}