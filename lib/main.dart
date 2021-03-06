import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'slider_item.dart';
import 'item.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: App(),
    );
  }
}

class App extends StatefulWidget {
  const App({ Key? key }) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {

  List<String> movieCarousselUrl = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRbSLCEqIGEAzHkwd7SWUpIuJ4knEYcBx-wxg&usqp=CAU",
    "https://uhdwallpapers.org/uploads/converted/19/09/21/joker-4k-poster-1600x900_666674-mm-90.jpg",
    "https://financerewind.com/wp-content/uploads/2020/07/cursed-season-2-netflix-renewal-status-1200x675.png",
    "https://miro.medium.com/max/2800/0*6dysw-Riawp4PO6u",
  ];
  List<String> movieTitle = [
    "Star Wars the Jedi Return",
    "JOKER",
    "Cursed",
    "Kimetsu no yaiba : Mugen Train"
  ];
  List<String> movieImageUrl = [
    "https://lumiere-a.akamaihd.net/v1/images/p_mulan2020_20204_b005decc.jpeg?region=0,0,540,810",
    "https://upload.wikimedia.org/wikipedia/en/2/21/Kimetsu_no_Yaiba_Mugen_Ressha_Hen_Poster.jpg",
    "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSa4t8Yz7dxTAWBZtbNhmpEYepiV_Yw8KMRf69NyjtPqbPm-LPr",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROKKn9ftbhxcRQf0NSSW4YfXPex6eyY95FrhEfU7OoTiDYRpky",
    "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTkZO-tgLmMFndFVdrFSetlssgOYf4M_i1kSfZ62vJRuBCtShRc",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff121212),
      appBar: new AppBar(
        backgroundColor: Color(0xff212121),
        centerTitle: true,
        title: Text("Netflix", style: TextStyle(color: Colors.red)),
        leading: IconButton(onPressed: (){},icon: new Icon(Icons.menu)),
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.search)
          )
        ]
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 10.0),
          child: Column(children: [
            Text('Recent Movie and series',style: TextStyle(color: Colors.white, fontSize: 26, fontWeight: FontWeight.w400)),
            SizedBox(height: 12.0,),
            CarouselSlider(
              items: [
                sliderItem(movieCarousselUrl[0],movieTitle[0]),
                sliderItem(movieCarousselUrl[1], movieTitle[1]),
                sliderItem(movieCarousselUrl[2], movieTitle[2]),
                sliderItem(movieCarousselUrl[3], movieTitle[3]),
              ], 
              options: CarouselOptions(
                enableInfiniteScroll: false,
                aspectRatio: 16/9,
                viewportFraction: 0.9,
                height: 280.0,
                enlargeCenterPage: true
              ),
            ),
            Text("Recomendation", style: TextStyle(color: Colors.white,fontSize: 22, fontWeight: FontWeight.w600)),
            SizedBox(
              height: 10,
            ),
            new Container(
              height: 360,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  listItem(movieImageUrl[0], "Mulan"),
                  listItem(movieImageUrl[0], "Mulan"),
                  listItem(movieImageUrl[0], "Mulan"),
                  listItem(movieImageUrl[0], "Mulan"),

                ],
              )
            )
          ]),
        )),
    );
  }
}