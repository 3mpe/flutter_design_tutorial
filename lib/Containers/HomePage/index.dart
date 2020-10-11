import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SliderModel {
  String imageUrl;
  String title;
  String desc;
  String time;

  SliderModel({
    this.title,
    this.desc,
    this.time,
    this.imageUrl,
  });
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<SliderModel> sliderList = [
    new SliderModel(
      time: "12:21",
      title: "Title 1 - 1",
      desc: "Açıklama alanı",
      imageUrl:
          "https://i.pinimg.com/564x/6f/d6/8c/6fd68ced202b643053e9f281de52a016.jpg",
    ),
    new SliderModel(
      time: "12:22",
      title: "Title 1 - 2",
      desc: "Açıklama alanı",
      imageUrl:
          "https://i.pinimg.com/564x/6f/d6/8c/6fd68ced202b643053e9f281de52a016.jpg",
    ),
    new SliderModel(
      time: "12:23",
      title: "Title 1 - 3",
      desc: "Açıklama alanı",
      imageUrl:
          "https://i.pinimg.com/564x/6f/d6/8c/6fd68ced202b643053e9f281de52a016.jpg",
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Center(
          child: Text("Tv Rehberi"),
        )),
        drawer: DrawerMenu(),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Slider(
                  items: sliderList,
                  size: MediaQuery.of(context).size,
                ),
                CardItem(
                  imageUrl:
                      "https://flutter.dev/assets/flutter-lockup-1caf6476beed76adec3c477586da54de6b552b2f42108ec5bc68dc63bae2df75.png",
                  title: "Deneme Başlığı",
                  desc:
                      "Lorem Ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak üzere bir yazı galerisini alarak karıştırdığı 1500'lerden beri endüstri standardı sahte metinler olarak kullanılmıştır. Beşyüz yıl boyunca varlığını sürdürmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sıçramıştır. 1960'larda Lorem Ipsum pasajları da içeren Letraset yapraklarının yayınlanması ile ve yakın zamanda Aldus PageMaker gibi Lorem Ipsum sürümleri içeren masaüstü yayıncılık yazılımları ile popüler olmuştur.",
                  time: "12:20",
                ),
                CardItem(
                  imageUrl:
                      "https://flutter.dev/assets/flutter-lockup-1caf6476beed76adec3c477586da54de6b552b2f42108ec5bc68dc63bae2df75.png",
                  title: "Deneme Başlığı",
                  desc: "Lorem Ipsum, dizgi ve baskı ",
                  time: "13:20",
                ),
                CardItem(
                  imageUrl:
                      "https://flutter.dev/assets/flutter-lockup-1caf6476beed76adec3c477586da54de6b552b2f42108ec5bc68dc63bae2df75.png",
                  title: "Deneme Başlığı",
                  desc: "Lorem Ipsum, dizgi ve baskı ",
                  time: "15:20",
                )
              ],
            ),
          ),
        ));
  }
}

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.55,
      child: Drawer(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Center(
                child: CircleAvatar(
                    radius: 80,
                    backgroundImage:
                        NetworkImage('https://via.placeholder.com/200x200')),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hoş Geldin",
                      style: TextStyle(fontSize: 28),
                    ),
                    Text(
                      "Emre Vatansever",
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                ),
              ),
              Hr(),
              Container(
                height: MediaQuery.of(context).size.height * 0.7,
                child: Stack(
                  children: [
                    Column(
                      children: [
                        MenuItem(
                          name: "Profil",
                          icon2: FaIcon(
                            FontAwesomeIcons.user,
                            size: 24,
                          ),
                        ),
                        MenuItem(
                          name: "Hatirlatmalarim",
                          icon2: FaIcon(
                            FontAwesomeIcons.stopwatch,
                            size: 24,
                          ),
                        ),
                        MenuItem(
                          name: "Programlar",
                          icon2: FaIcon(
                            FontAwesomeIcons.mobile,
                            size: 24,
                          ),
                        ),
                        MenuItem(
                          name: "Kanallar",
                          icon2: FaIcon(
                            FontAwesomeIcons.dice,
                            size: 24,
                          ),
                        ),
                        MenuItem(
                          name: "Çıkış Yap",
                          icon2: FaIcon(
                            FontAwesomeIcons.signOutAlt,
                            size: 24,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final String name;
  final Icon icon;
  final FaIcon icon2;

  const MenuItem({
    Key key,
    @required this.name,
    this.icon,
    this.icon2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.48,
          child: InkWell(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  this.icon2,
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(name),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Hr extends StatelessWidget {
  const Hr({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: Colors.blueGrey.withOpacity(.3),
      height: 5,
      thickness: 1,
      indent: 20,
      endIndent: 0,
    );
  }
}

class Slider extends StatelessWidget {
  final Size size;
  final List<SliderModel> items;

  const Slider({
    Key key,
    @required this.items,
    @required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CarouselOptions co = CarouselOptions(
      height: 500,
      aspectRatio: 16 / 9,
      viewportFraction: 1,
      initialPage: 0,
      enableInfiniteScroll: true,
      reverse: false,
      autoPlay: false,
      autoPlayInterval: Duration(seconds: 3),
      autoPlayAnimationDuration: Duration(milliseconds: 800),
      autoPlayCurve: Curves.fastOutSlowIn,
      enlargeCenterPage: false,
      scrollDirection: Axis.horizontal,
    );

    return CarouselSlider(
      options: co,
      items: items.map((item) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: MediaQuery.of(context).size.width,
                // margin: EdgeInsets.symmetric(horizontal: 1.0),
                decoration: BoxDecoration(color: Colors.amber),
                child: Stack(
                  children: [
                    Column(
                      children: [
                        Image.network(
                          item.imageUrl,
                          height: 500,
                          width: MediaQuery.of(context).size.width,
                          fit: BoxFit.fitWidth,
                        ),
                      ],
                    ),
                    Positioned(
                        child: Container(
                      color: Colors.black.withOpacity(0.3),
                    )),
                    Positioned(
                      width: size.width,
                      child: Container(
                          height: 100,
                          width: size.width - 50,
                          color: Colors.black.withOpacity(0.4),
                          padding: EdgeInsets.all(12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                item.title,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 24),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                item.desc,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                ),
                              )
                            ],
                          )),
                      bottom: 0,
                    ),
                    Positioned(
                        top: 25,
                        right: 20,
                        child: Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  width: 2.0, color: const Color(0xFFFFFFFF))),
                          child: Text(
                            item.time,
                            style: TextStyle(fontSize: 26, color: Colors.white),
                          ),
                        )),
                    Positioned(
                        top: 20,
                        left: 20,
                        child: InkWell(
                          onTap: () {
                            print("Selected Item:" + item.toString());
                          },
                          child: Container(
                            width: size.width * 0.7,
                            padding: EdgeInsets.all(12),
                            child: Text(
                              "BANA HATIRLAT",
                              style: TextStyle(
                                  fontSize: 32,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ))
                  ],
                ));
          },
        );
      }).toList(),
    );
  }
}

class CardItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String desc;
  final String time;
  const CardItem(
      {Key key,
      @required this.imageUrl,
      @required this.title,
      @required this.desc,
      @required this.time})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(12),
      child: InkWell(
        onTap: () {
          print("asdf");
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: TextStyle(fontSize: 14),
                          ),
                          Text(
                            desc,
                            style: TextStyle(fontSize: 16),
                            textDirection: TextDirection.ltr,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          )
                        ],
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        "Saat",
                        style: TextStyle(fontSize: 14),
                      ),
                      Text(
                        time,
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
