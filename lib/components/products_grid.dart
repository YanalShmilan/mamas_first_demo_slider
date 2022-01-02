import 'package:flutter/cupertino.dart';
import 'package:mamas_first_slider_demo/components/product_item.dart';
import 'package:mamas_first_slider_demo/providers/fashionista_provider.dart';

class ProductsGrid extends StatelessWidget {
  const ProductsGrid({
    Key? key,
    required this.fashionistaProvider,
  }) : super(key: key);

  final FashionistaProvider fashionistaProvider;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: 350,
        child: GridView.builder(
          scrollDirection: Axis.vertical,
          padding: const EdgeInsets.symmetric(horizontal: 8),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: fashionistaProvider.selectedFashionista.products.length,
          itemBuilder: (BuildContext context, int index) {
            return ProductItem(
                product:
                    fashionistaProvider.selectedFashionista.products[index]);
          },
        ),
      ),
    );
  }
}
