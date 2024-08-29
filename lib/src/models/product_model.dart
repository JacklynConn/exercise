class ProductModel {
  int? id;
  String? name;
  String? description;
  double? price;
  int? qty;
  String? images;

  ProductModel({
    required this.id,
    this.name = "no-name",
    this.description = "no-des",
    this.price,
    this.qty,
    this.images = "no-img",
  });
}
