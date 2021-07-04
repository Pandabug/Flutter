class Recomendation {
  String remaining;
  String title;
  String timeOpen;
  String oldPrice;
  String newPrice;
  String image1;
  String image2;

  Recomendation({
    this.remaining,
    this.title,
    this.timeOpen,
    this.oldPrice,
    this.newPrice,
    this.image1,
    this.image2,
  });
}

List<Recomendation> recomendations = [
  Recomendation(
    image1: 'assets/images/soushi_recomendation1.jpg',
    image2: 'assets/images/bastoncini.jpg',
    remaining: '+5 rimanenti',
    title: 'Soushi',
    timeOpen: 'Oggi 17:00h - 22:00h • 150m',
    oldPrice: '12,00',
    newPrice: '3,99',
  ),
  Recomendation(
    image1: 'assets/images/pasta.jpg',
    image2: 'assets/images/forchetta.jpg',
    remaining: '+3 rimanenti',
    title: 'Pasta',
    timeOpen: 'Oggi 19:30h - 21:00h • 75m',
    oldPrice: '19,99',
    newPrice: '4,50',
  ),
  Recomendation(
    image1: 'assets/images/pizza.jpg',
    image2: 'assets/images/forchetta-coltello.jpg',
    remaining: '+11 rimanenti',
    title: 'Pizza',
    timeOpen: 'Oggi 16:30h - 23:30h • 25m',
    oldPrice: '9,99',
    newPrice: '6,90',
  ),
];
