class Hotel {
  String imageUrl;
  String name;
  String address;
  int price;

  Hotel({
    this.imageUrl,
    this.name,
    this.address,
    this.price,
});
}

final List<Hotel> hotels = [
  Hotel(
    imageUrl: 'images/hotel0.jpg',
    name: 'Hotel 0',
    address: '404 Great St',
    price: 175,
  ),Hotel(
    imageUrl: 'images/santorini.jpg',
    name: 'Hotel 1',
    address: 'volcano view hotel santorini',
    price: 175,
  ),Hotel(
    imageUrl: 'images/baliHotel.jpg',
    name: 'Hotel 2',
    address: 'Bali 80361, Indonesia',
    price: 9516,
  ),Hotel(
    imageUrl: 'images/SonevaFushiHotel.jpg',
    name: 'Hotel 3',
    address: 'Kunfunadhoo Island, Eydhafushi',
    price: 175,
  ),Hotel(
    imageUrl: 'images/savoyHotel.jpg',
    name: 'Hotel 4',
    address: 'Mahe Island, Beau Vallon',
    price: 328,
  ),
];