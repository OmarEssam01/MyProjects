class Product {
  final int id, price;
  final String title, description, image;

  Product({this.id, this.price, this.title, this.description, this.image});
}

List<Product> products = [
  Product(
    id: 1,
    price: 56,
    title: "Classic Leather Arm Chair",
    image: "assets/images/Item_1.png",
    description:
        "this abigail Leather Club Chair in Brown will transform your home like you never imagined.With its unique style and quality construction your guests and family will love it",
  ),
  Product(
    id: 4,
    price: 68,
    title: "Poppy Plastic Tub Chair",
    image: "assets/images/Item_2.png",
    description:
        "Poppy Tub chair is a lounge seat comprising generously moulded tub shell on timber 4-leg or steel skid-base frame.available in multiple colors",
  ),
  Product(
    id: 9,
    price: 39,
    title: "Bar Stool Chair",
    image: "assets/images/Item_3.png",
    description:
        "Metal and Leather Bar Chair ,weighs about 1850 grams,perfect for kithen ,party room ,cafe bar or office use.",
  ),
  Product(
    id: 10,
    price: 170,
    title: "Shadow Grey Sofa",
    image: "assets/images/Item_12.png",
    description:
    "This sofa is designed for comfort.its signature design element is a back comprised of pillows separate from the frame ",
  ),
  Product(
    id: 20,
    price: 298,
    title: "Loveseat Sofa",
    image: "assets/images/Item_235.png",
    description:
    "This sofa is designed for living room made for two people, it does come in multiple sizes and colors order your now ! ",
  ),
];
