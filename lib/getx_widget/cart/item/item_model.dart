class Item {
  String imgUrl;
  String title;
  String size;
  num price;
  Item(this.imgUrl, this.title, this.size, this.price);
  static List<Item> generateItems() {
    return [
      Item(
        'assets/images/watch.png',
        'Apple Watch Series 3',
        '36',
        140,
      ),
      Item(
        'assets/images/headphone.png',
        'Sony ear headphone',
        'M',
        50,
      ),
      Item(
        'assets/images/shirt.png',
        'Levi\'s T-shirt',
        'S',
        40,
      ),
      Item(
        'assets/images/shoes.png',
        'Nike women shoes',
        '40',
        70,
      ),
    ];
  }
}
