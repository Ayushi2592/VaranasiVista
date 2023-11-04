class Activity {
  final String id;
  final String title;
  final String description;
  final String imageUrl;
  final double price;
  final double rating;

  const Activity({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.price,
    required this.rating,
  });

  static const List<Activity> activities = [
    Activity(
      id: '1',
      title: 'Banaras Ghats',
      description:
      'Banaras ghats, ancient steps along the Ganges, embody spirituality and tradition. Pilgrims perform rituals, offering prayers, and cleansing sins, making them vibrant hubs of religious significance and cultural heritage.',
      imageUrl:
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/04/b1/33/f8/banaras-ghats.jpg?w=500&h=400&s=1',
      price: 39.99,
      rating: 4,
    ),
    Activity(
      id: '2',
      title: 'Shri KashiVishwanath Temple',
      description:
      'Shri Kashi Vishwanath Temple, Varanasi, is a sacred Hindu shrine dedicated to Lord Shiva. It stands as a spiritual beacon, revered for its divine aura, ancient architecture, and religious significance.',
      imageUrl:
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/53/9f/d4/the-golden-shikhar-of.jpg?w=500&h=400&s=1',
      price: 39.99,
      rating: 4,
    ),
    Activity(
      id: '3',
      title: 'Ganga Aarti',
      description:
      'Ganga Aarti, a captivating Hindu ritual, takes place along the Ganges River at Varanasi ghats. Devotees gather to witness priests ceremonial offerings, chanting, and lighted lamps, creating a divine ambiance.',
      imageUrl:
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/18/52/e3/77/img-20190622-190002-largejpg.jpg?w=500&h=-1&s=1',
      price: 39.99,
      rating: 4,
    ),
    Activity(
      id: '4',
      title: 'Shri Sanket Mochan Mandir',
      description:
      'Shri Sankat Mochan Hanuman Temple, Varanasi, honors Lord Hanuman, the symbol of strength and devotion. Pilgrims seek blessings, participate in prayers, and experience spiritual tranquility at this revered temple.',
      imageUrl:
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/08/b8/f6/91/sankat-mochan-hanuman.jpg?w=500&h=400&s=1',
      price: 39.99,
      rating: 4,
    ),
    Activity(
      id: '5',
      title: 'Dine-in a Traditional Farmhouse',
      description:
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi consequat quis nunc in ultrices. Nullam feugiat in massa vitae placerat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam sem urna, venenatis vitae orci vitae, faucibus volutpat urna.',
      imageUrl:
      'https://images.unsplash.com/photo-1569263900347-06b1e8c825ab?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2674&q=80',
      price: 39.99,
      rating: 4,
    ),
    Activity(
      id: '6',
      title: 'Sunset Tour on the Hills',
      description:
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi consequat quis nunc in ultrices. Nullam feugiat in massa vitae placerat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam sem urna, venenatis vitae orci vitae, faucibus volutpat urna.',
      imageUrl:
      'https://images.unsplash.com/photo-1583823622820-86dd410cb786?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1336&q=80',
      price: 39.99,
      rating: 4,
    ),
    Activity(
      id: '7',
      title: 'Cruise and Snorkel the Amalfi Coast',
      description:
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi consequat quis nunc in ultrices. Nullam feugiat in massa vitae placerat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam sem urna, venenatis vitae orci vitae, faucibus volutpat urna.',
      imageUrl:
      'https://images.unsplash.com/photo-1564671546498-09a366692274?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1287&q=80',
      price: 39.99,
      rating: 4,
    ),
    Activity(
      id: '8',
      title: 'Hands-on Cooking Class',
      description:
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi consequat quis nunc in ultrices. Nullam feugiat in massa vitae placerat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam sem urna, venenatis vitae orci vitae, faucibus volutpat urna.',
      imageUrl:
      'https://images.unsplash.com/photo-1576007594790-2c73df2cd761?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1287&q=80',
      price: 39.99,
      rating: 4,
    ),
    Activity(
      id: '9',
      title: '2-Hours Exclusive Boat Tour',
      description:
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi consequat quis nunc in ultrices. Nullam feugiat in massa vitae placerat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam sem urna, venenatis vitae orci vitae, faucibus volutpat urna.',
      imageUrl:
      'https://images.unsplash.com/photo-1530345020906-73276f33f411?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1287&q=80',
      price: 39.99,
      rating: 4,
    ),
  ];
}
