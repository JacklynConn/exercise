import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:object_app/src/pages/product_detail.dart';
import '../models/product_model.dart';

class ProductList extends StatefulWidget {
  const ProductList({super.key});

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  List<ProductModel> listProduct = [
    ProductModel(
      id: 1,
      name: "Air Jordan 3 Retro Cement Grey Men's Shoes",
      description:
          "Clean and supreme, the AJ3 returns with all of its classic style and grace. Quality leather in the upper—with that luxurious elephant print texture—combines with visible "
          "Nike Air in the sole to make a comfortable, everyday icon Benefits"
          "Genuine and synthetic leathers offer a durable, supportive feel."
          "Foam midsole with Air-Sole unit in the heel and forefoot for street-ready cushioning."
          "Rubber outsole provides durability and traction."
          "Product Details Shown: Summit White/Cement Grey/Black/Fire Red"
          "Style: CT8532-106",
      images:
          "https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/5ef5eaaf-c05b-4319-99e7-0d774ed7e303/AIR+JORDAN+3+RETRO.png",
      price: 99.9,
      qty: 15,
    ),
    ProductModel(
      id: 2,
      name: "Nike Dragonfly 2 Elite Electric Track & Field Distance Spikes",
      description:
          "Our most dominant distance track spikes are back at the starting line, raring to break even more world records. Now loaded with an ultralight ZoomX foam and a responsive carbon fiber plate, the Dragonfly 2 Elite can help unleash a new level of speed you’ll want to save for race day. Donned by the fastest 5K and 10K runners in the sport, ready to reach new heights.",
      images:
          "https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/820e474e-abd2-41b0-b168-1a223cd3036f/ZOOMX+DRAGONFLY+2+ELITE+OLY.png",
      price: 205,
      qty: 17,
    ),
    ProductModel(
      id: 4,
      name: "Nike Diamond Elite Turf Men's Baseball Shoes",
      description:
      "Get game-ready with these Diamond Elites. An Air Zoom unit gives you speed in warm-ups, while a forefoot strap helps keep you contained when shagging fly balls. This cosmic-themed design, with its extraterrestrial graphics and jet-black backdrop, has a traction pattern that works on pregame surfaces.",
      images:
      "https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/0649db32-9fc5-41c4-837a-994ae0cab60e/AIR+ZOOM+DIAMOND+ELITE+TURF.png",
      price: 120,
      qty: 13,
    ),
    ProductModel(
      id: 3,
      name: "Nike Air Max 1 Essential Men's Shoes",
      description:
          "Meet the leader of the pack. Walking on clouds above the noise, the Air Max 1 blends "
          "timeless design with cushioned comfort. Sporting a Max Air unit and mixed materials, "
          "this icon hit the scene in ‘87 and continues to be the soul of the franchise today. Benefits Upper mixes synthetic leather, suede and mesh for a layered look built to last."
          "Foam midsole with a Max Air unit in the heel provides lightweight cushioning."
          "Rubber Waffle outsole adds durable traction and heritage style."
          "Padded, low-cut collar feels soft and comfortable. "
          "Product Details "
          "Shown: White/Summit White/Black "
          "Style: FZ5808-101 Air Max 1 Sure, Air Max 1 started as a running shoe, but you can’t keep innovation contained. Adopted by hip-hop culture, this runner with a controversial exposed Air unit could be found anywhere from the heart of Brooklyn to the streets of London. Its cutting-edge design and striking colorways, to this day, are celebrated year after year.",
      images:
          "https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/14b41ec6-8d4d-4707-b4cd-2fd8379ae856/NIKE+AIR+MAX+1+ESS.png",
      price: 14.9,
      qty: 8,
    ),
    ProductModel(
      id: 4,
      name: "Nike Huarache 9 Elite LAX Lacrosse Cleats",
      description:
          "Take it to the rack in the Huarache 9 Elite. Whether you’re ripping around the cage, going coast-to-coast or scooping up the ball on a dead run, these cleats can help you decide the result. We loaded it with multidirectional traction and made it more flexible compared to the 8, so you can impact the game from any position.",
      images:
          "https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/d43d22b2-4c31-4505-991a-39b21d9004d6/HUARACHE+9+ELITE+MID+LAX.png",
      price: 9.9,
      qty: 10,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 5),
      width: double.infinity,
      height: 220,
      // color: Colors.grey,
      child: ListView.builder(
        itemCount: listProduct.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, index) {
          return _buildItemProduct(listProduct[index]);
        },
      ),
    );
  }

  Widget _buildItemProduct(ProductModel item) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetails(productModel: item),
          ),
        );
      },
      child: SizedBox(
        width: 150,
        child: Card(
          elevation: 1,
          child: Column(
            children: [
              Container(
                height: 100,
                margin: const EdgeInsets.only(top: 10),
                child: CachedNetworkImage(
                  imageUrl: "${item.images}",
                  imageBuilder: (context, imageProvider) => Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: imageProvider,
                        fit: BoxFit.cover,
                        colorFilter: const ColorFilter.mode(
                            Colors.white, BlendMode.colorBurn),
                      ),
                    ),
                  ),
                  placeholder: (context, url) =>
                      const CircularProgressIndicator(),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${item.name}",
                      style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Text(
                      "QTY: ${item.qty}",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.black.withOpacity(0.3),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$ ${item.price}",
                          style: const TextStyle(
                            color: Colors.red,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.add_shopping_cart,
                            size: 18,
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
