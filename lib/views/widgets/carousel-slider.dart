import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodsberrymobile/store/global/banners/banners.dart';
import 'package:foodsberrymobile/store/global/products/product_images.dart';
import 'package:foodsberrymobile/store/global/products/products.dart';
import 'package:foodsberrymobile/store/global/theme.dart';
import 'package:foodsberrymobile/views/pages/product/widgets/card-product.dart';
import 'package:foodsberrymobile/views/pages/product/widgets/card-product2.dart';

class FSCarouselSlider extends StatelessWidget {
  const FSCarouselSlider({Key? key, this.listItem, this.aspectRatio = 16 / 9})
      : super(key: key);
  final List<Products>? listItem;
  final double aspectRatio;
  @override
  Widget build(BuildContext context) {
    List<int> list = [1, 2];
    return CarouselSlider(
      options: CarouselOptions(autoPlay: false, aspectRatio: aspectRatio),
      items: listItem != null
          ? listItem!
              .map((item) => SizedBox(
                  height: 300,
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: CardProduct(
                      dataCardProduct: item, isFavoritesPage: false)))
              .toList()
          : list
              .map((item) => Container(
                    child: Center(child: Text(item.toString())),
                    color: Colors.green,
                  ))
              .toList(),
    );
  }
}

class FSImageProductCarouselSlider extends StatelessWidget {
  FSImageProductCarouselSlider(
      {Key? key, this.listItem, this.aspectRatio = 16 / 9})
      : super(key: key);
  final List<Images>? listItem;
  final double aspectRatio;
  //int _current = 0;
  final StateProvider<int?> activeSlide = StateProvider((ref) => 0);
  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    List<String> list = ['', ''];
    return Consumer(builder: (context, ref, _) {
      final _current = ref.watch(activeSlide.state).state;

      return Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
                autoPlay: false,
                aspectRatio: aspectRatio,
                onPageChanged: (index, reason) {
                  ref.read(activeSlide.state).state = index;
                }),
            items: listItem != null
                ? listItem!
                    .map((item) => SizedBox(
                        //  height: 350,
                        width: MediaQuery.of(context).size.width * 0.6,
                        child: CachedNetworkImage(
                          imageUrl: item!.image!,
                          fit: BoxFit.contain,
/*                                   width: constraints.maxWidth - 10,
                                  height: constraints.maxWidth - 2, */
                          placeholder: (context, url) => const Center(
                            child: SizedBox(
                                width: 30,
                                height: 30,
                                child: CircularProgressIndicator()),
                          ),
                          errorWidget: (context, url, error) => Image.asset(
                              'assets/images/logo.png',
                              fit: BoxFit.cover),
                        )))
                    .toList()
                /* CardProduct(
                          dataCardProduct: item, isFavoritesPage: false)))
                  .toList() */
                : list
                    .map((item) => Container(
                          child: Center(child: Text(item.toString())),
                          color: Colors.green,
                        ))
                    .toList(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: listItem!.asMap().entries.map((entry) {
              return Container(
                width: _current == entry.key ? 12.0 : 6.0,
                height: _current == entry.key ? 12.0 : 6.0,
                margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: ShapeDecoration(
                    color: _current == entry.key
                        ? Colors.white
                        : FSColors.baseFSColor,
                    shape: CircleBorder(
                      side: BorderSide(
                          width: _current == entry.key ? 3 : 0,
                          color: (Theme.of(context).brightness ==
                                      Brightness.dark
                                  ? Colors.white
                                  : FSColors.baseFSColor)
                              .withOpacity(_current == entry.key ? 0.9 : 0.3)),
                    )),
              );

/*                 BoxDecoration(
                  border: BoxBorder.,
                    shape: BoxShape.circle,
                    color: (Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : FSColors.baseFSColor)
                        .withOpacity(_current == entry.key ? 0.9 : 0.4)),
              ); */
            }).toList(),
          ),
        ],
      );
    });
  }
}

class FSCarouselSliderFavorites extends StatelessWidget {
  const FSCarouselSliderFavorites(
      {Key? key, this.listItem, this.aspectRatio = 16 / 9})
      : super(key: key);
  final List<Products>? listItem;
  final double aspectRatio;
  @override
  Widget build(BuildContext context) {
    List<int> list = [1, 2];
    return CarouselSlider(
      options: CarouselOptions(
        autoPlay: false,
        aspectRatio: aspectRatio,
        viewportFraction: 0.52,
        //  enableInfiniteScroll: false,
        //  disableCenter: false,
        pageSnapping: true,
      ),
      items: listItem != null
          ? listItem!
              .map((item) => SizedBox(
                  height: 320,
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: CardProductN1(
                      dataCardProduct: item, isFavoritesPage: true)))
              .toList()
          : list
              .map((item) => Container(
                    child: Center(child: Text(item.toString())),
                    color: Colors.green,
                  ))
              .toList(),
    );
  }
}

class FSCarouselSliderFiltered extends StatelessWidget {
  const FSCarouselSliderFiltered(
      {Key? key, this.listItemFilter, this.aspectRatio = 16 / 9})
      : super(key: key);
  final List<Products>? listItemFilter;
  final double aspectRatio;
  @override
  Widget build(BuildContext context) {
    List<int> list = [1, 2];
    return CarouselSlider(
      options: CarouselOptions(
        autoPlay: false,
        aspectRatio: aspectRatio,
        viewportFraction: 0.52,
        //  enableInfiniteScroll: false,
        //  disableCenter: false,
        pageSnapping: true,
      ),
      items: listItemFilter != null
          ? listItemFilter!
              .map((item) => SizedBox(
                  height: 300,
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: CardProductN1(
                      dataCardProduct: item, isFavoritesPage: false)))
              .toList()
          : list
              .map((item) => Container(
                    child: Center(child: Text(item.toString())),
                    color: Colors.green,
                  ))
              .toList(),
    );
  }
}

class FSCarouselSliderAdvert extends StatelessWidget {
  const FSCarouselSliderAdvert(
      {Key? key,
      this.listItem,
      this.aspectRatio = 16 / 9,
      this.isBorder = false})
      : super(key: key);
  final List<ResultsBanner>? listItem;
  final double aspectRatio;
  final bool isBorder;
  @override
  Widget build(BuildContext context) {
    List<int> list = [1, 2];
    return CarouselSlider(
      options: CarouselOptions(
        autoPlay: true,
        aspectRatio: aspectRatio,
        viewportFraction: 0.82,
      ),
      items: listItem != null
          ? listItem!
              .map((item) => SizedBox(
                  height: 300,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Container(
                      padding: isBorder
                          ? const EdgeInsets.all(2)
                          : const EdgeInsets.all(0),
                      decoration: BoxDecoration(
                          color: isBorder
                              ? const Color.fromARGB(255, 33, 150, 56)
                              : const Color.fromARGB(255, 255, 255, 255),
                          borderRadius: isBorder
                              ? const BorderRadius.all(Radius.circular(10))
                              : const BorderRadius.all(Radius.circular(0)),
                          border: Border.all(
                            color: isBorder
                                ? const Color.fromARGB(255, 33, 150, 56)
                                : const Color.fromARGB(255, 255, 255, 255),
                          )),
                      alignment: Alignment.topCenter,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.network(
                            item.image!,
                            height: 300,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) {
                              return Image.asset(
                                  'assets/images/empty-image.jpg',
                                  fit: BoxFit.cover);
                            },
                            loadingBuilder: (BuildContext context, Widget child,
                                ImageChunkEvent? loadingProgress) {
                              if (loadingProgress == null) {
                                return child;
                              }
                              return Center(
                                child: CircularProgressIndicator(
                                  value: loadingProgress.expectedTotalBytes !=
                                          null
                                      ? loadingProgress.cumulativeBytesLoaded /
                                          loadingProgress.expectedTotalBytes!
                                      : null,
                                ),
                              );
                            },
                          )))))
              .toList()
          : list
              .map((item) => Container(
                    child: Center(child: Text(item.toString())),
                    color: Colors.green,
                  ))
              .toList(),
    );
  }
}
