class Game {
  final String id;
  final String title;
  final String imageUrl;
  final double price;
  final double? discountPercentage;
  final List<String> tags;
  final double rating;

  Game({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.price,
    this.discountPercentage,
    required this.tags,
    required this.rating,
  });
}

class GameService {
  static List<Game> getFeaturedGames() {
    return [
      Game(
        id: '1',
        title: 'Cyberpunk 2077',
        imageUrl: 'https://cdn.cloudflare.steamstatic.com/steam/apps/1091500/header.jpg',
        price: 59.99,
        discountPercentage: 33,
        tags: ['RPG', 'Open World', 'Sci-fi'],
        rating: 4.5,
      ),
      Game(
        id: '2',
        title: 'Red Dead Redemption 2',
        imageUrl: 'https://cdn.cloudflare.steamstatic.com/steam/apps/1174180/header.jpg',
        price: 59.99,
        discountPercentage: 50,
        tags: ['Action', 'Adventure', 'Open World'],
        rating: 4.8,
      ),
      Game(
        id: '3',
        title: 'Baldur\'s Gate 3',
        imageUrl: 'https://cdn.cloudflare.steamstatic.com/steam/apps/1086940/header.jpg',
        price: 59.99,
        tags: ['RPG', 'Fantasy', 'Turn-Based'],
        rating: 4.9,
      ),
      Game(
        id: '4',
        title: 'Elden Ring',
        imageUrl: 'https://cdn.cloudflare.steamstatic.com/steam/apps/1245620/header.jpg',
        price: 59.99,
        discountPercentage: 20,
        tags: ['Souls-like', 'RPG', 'Open World'],
        rating: 4.7,
      ),
      Game(
        id: '5',
        title: 'Counter-Strike 2',
        imageUrl: 'https://cdn.cloudflare.steamstatic.com/steam/apps/730/header.jpg',
        price: 0,
        tags: ['FPS', 'Multiplayer', 'Competitive'],
        rating: 4.6,
      ),
    ];
  }

  static List<Game> getSpecialOffers() {
    return [
      Game(
        id: '6',
        title: 'The Witcher 3: Wild Hunt',
        imageUrl: 'https://cdn.cloudflare.steamstatic.com/steam/apps/292030/header.jpg',
        price: 39.99,
        discountPercentage: 75,
        tags: ['RPG', 'Open World', 'Fantasy'],
        rating: 4.9,
      ),
      Game(
        id: '7',
        title: 'God of War',
        imageUrl: 'https://cdn.cloudflare.steamstatic.com/steam/apps/1593500/header.jpg',
        price: 49.99,
        discountPercentage: 40,
        tags: ['Action', 'Adventure', 'Story Rich'],
        rating: 4.8,
      ),
      Game(
        id: '8',
        title: 'Hades',
        imageUrl: 'https://cdn.cloudflare.steamstatic.com/steam/apps/1145360/header.jpg',
        price: 24.99,
        discountPercentage: 35,
        tags: ['Roguelike', 'Action', 'Indie'],
        rating: 4.9,
      ),
    ];
  }
}
