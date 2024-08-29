import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../models/slider_model.dart';

class SliderElement extends StatefulWidget {
  const SliderElement({super.key});

  @override
  State<SliderElement> createState() => _SliderElementState();
}

class _SliderElementState extends State<SliderElement> {
  List<SliderModel> arrSliderModel = [
    SliderModel(
        id: 1,
        title: "Hello",
        image: "https://static.nike.com/a/images/f_auto/dpr_1.0,cs_srgb/h_300,c_limit/db148950-20f5-4801-b53d-771c55c89373/nike-just-do-it.jpg",
        description: "fdsjlfs"),
    SliderModel(
        id: 2,
        title: "Hi",
        image: "https://img.freepik.com/free-vector/modern-sale-banner-template-with-fluid-shapes_1361-1389.jpg?w=1380&t=st=1692340794~exp=1692341394~hmac=12c19efa805f7ddc302f1adf78b3a26fa4ada51b9711c07dfe10b3a18228d0e2",
        description: "fdsjlfs"),
    SliderModel(
        id: 2,
        title: "Hi",
        image: "https://media2.giphy.com/media/F6ZC06fX688qk/200w.webp?cid=ecf05e47hl3oldhb6pzq1mfpveria2jcv4utn7ted0h76g1a&ep=v1_gifs_search&rid=200w.webp&ct=g",
        description: "fdsjlfs"),
    SliderModel(
        id: 2,
        title: "Hi",
        image: "https://media2.giphy.com/media/3o6fIWe9NNrVJHbygw/giphy.gif?cid=ecf05e47gsqcpf9x8p37kxg6jnvyiygugjkpq7ax1vvrgfvz&ep=v1_gifs_related&rid=giphy.gif&ct=g",
        description: "fdsjlfs"),
  ];

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: SizedBox(
        height: 220,
        width: double.infinity,
        child: CarouselSlider.builder(
          itemCount: arrSliderModel.length,
          itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) => SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: CachedNetworkImage(
              height: 220,
              width: double.infinity,
              fit: BoxFit.cover,
              imageUrl: "${arrSliderModel[itemIndex].image}",
              progressIndicatorBuilder: (context, url, downloadProgress) =>
                  CircularProgressIndicator(value: downloadProgress.progress),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
          options: CarouselOptions(
            aspectRatio: 16 / 9,
            viewportFraction: 1,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 5),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: false,
            scrollDirection: Axis.horizontal,
          ),
        ),
      ),
    );
  }
}
