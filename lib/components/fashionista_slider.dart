import 'package:flutter/material.dart';
import 'package:mamas_first_slider_demo/components/product_item.dart';
import 'package:mamas_first_slider_demo/components/products_grid.dart';
import 'package:mamas_first_slider_demo/providers/fashionista_provider.dart';
import 'package:provider/provider.dart';

class FashionistaSlider extends StatelessWidget {
  const FashionistaSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final fashionistaProvider = Provider.of<FashionistaProvider>(context);
    return Column(
      children: [
        Image.network(fashionistaProvider.selectedFashionista.bannerUrl),
        Container(
          margin: const EdgeInsets.only(left: 5, top: 15),
          height: 100,
          child: ListView.separated(
            itemCount: fashionistaProvider.fashionistas.length,
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(width: 5);
            },
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                fashionistaProvider.changeFashionista(
                    fashionistaProvider.fashionistas[index].id);
              },
              child: Column(
                children: [
                  CircleAvatar(
                    radius: (35),
                    backgroundColor:
                        fashionistaProvider.fashionistas[index].id ==
                                fashionistaProvider.selectedFashionista.id
                            ? Colors.black54
                            : Colors.transparent,
                    child: CircleAvatar(
                      radius: (33),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.network(
                            fashionistaProvider.fashionistas[index].avatarUrl),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  SizedBox(
                    width: 65,
                    child: Text(
                      fashionistaProvider.fashionistas[index].name,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
            scrollDirection: Axis.horizontal,
          ),
        ),
        Expanded(
          child: ProductsGrid(fashionistaProvider: fashionistaProvider),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.sort),
              label: const Text(
                "Sort",
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
            ),
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.filter_list),
              label: const Text(
                "Filter",
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
            )
          ],
        )
      ],
    );
  }
}
