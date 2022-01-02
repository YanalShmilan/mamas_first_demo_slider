import 'package:mamas_first_slider_demo/models/product.dart';

class Fashionista {
  final int id;
  final String name;
  final String bannerUrl;
  final String avatarUrl;
  final List<Product> products;
  Fashionista({
    required this.id,
    required this.name,
    required this.bannerUrl,
    required this.avatarUrl,
    required this.products,
  });
}
