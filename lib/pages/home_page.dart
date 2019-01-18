import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/widgets/horizontal_place_card.dart';
import 'package:travel_app/widgets/material_image.dart';
import 'package:travel_app/widgets/place_card.dart';
import 'package:travel_app/widgets/ratting_bar.dart';
import 'package:travel_app/widgets/search_box.dart';
import 'package:travel_app/widgets/subtitle_button.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();

  final agencies = [
    "https://cdn.shopify.com/s/files/1/0949/8766/files/Traveling-Hands22_medium.jpg?v=1538500974",
    "https://t4.ftcdn.net/jpg/01/01/72/17/240_F_101721735_5NF3dWipsEIUP06JrTg00UR9M2fkhGnd.jpg",
    "https://t4.ftcdn.net/jpg/02/42/10/63/240_F_242106308_s9xesB9dYo55MkyNFYOdK823NQ2c3fTm.jpg",
    "https://t4.ftcdn.net/jpg/01/75/36/97/240_F_175369707_aQtJRtgjvD4i4GHgcdtUEl3vT7EEwOvN.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFJMkkELYlahnHOWd_Bo1J13un72C8o_UesZvHy45ZICSHUH-XUw",
    "http://www.al-jamiat.com/wp-content/uploads/2009/06/plane-in-the-sky.jpg",
    "https://quinnpanzerdreamvacations.files.wordpress.com/2018/06/cropped-cropped-img_2233.jpg?w=1400"
  ];

}

class _HomePageState extends State<HomePage> {

  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) => Scaffold(
    body: Padding(
      padding: const EdgeInsets.only(
        top: 40,
        left: 0,
        right: 0,
        bottom: 0,
      ),
      child: Builder(builder: _buildBody),
    ),
  );

  Widget _buildBody(BuildContext context) => Container(
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Builder(builder: _buildSearchBox),
          Builder(builder: _buildTitle),
          Builder(builder: _buildSubTitle),
          Builder(builder: _buildTopList),
          Builder(builder: _buildAgenciesSubtitle),
          Builder(builder: _buildAgenciesList),
          Builder(builder: _buildOffersSubtitle),
          Builder(builder: _buildOffersList),
        ],
      ),
    ),
  );

  Widget _buildSearchBox(BuildContext context) => Padding(
    padding: EdgeInsets.symmetric(
      horizontal: 24,
      vertical: 8
    ),
    child: SearchBox(searchController,
      prefixIcon: Icon(Icons.search),
      suffixIcon: Icon(Icons.tune),
    ),
  );

  Widget _buildTitle(BuildContext context) => Padding(
    padding: EdgeInsets.symmetric(
      horizontal: 24,
      vertical: 24,
    ),
    child:  Text("Hello Fox Designer",
      style: Theme.of(context).textTheme.title.copyWith(
        fontSize: 28,
        fontWeight: FontWeight.w900
      ),
    ),
  );

  Widget _buildSubTitle(BuildContext context) => Padding(
    padding: const EdgeInsets.symmetric(
        horizontal: 24,
    ),
    child: SubtitleButton("Popular"),
  );

  Widget _buildTopList(BuildContext context) => Container(
    height: 264,
    child: ListView.builder(
      padding: EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 16
      ),
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (context, index) => PlaceCard(
        imageUrl: "https://www.italianpooltechnology.com/sites/default/files/styles/italianpooldesign/public/Swimpool%20Europa%20foto%20L.Pietra.jpg?itok=Rmgu0cLh",
        name: "Itally",
        description: "Veice, gondala cruise",
        ratting: 4,
        onTap: (){},
      ),
    ),
  );

  Widget _buildAgenciesSubtitle(BuildContext context) => Padding(
    padding: const EdgeInsets.symmetric(
      vertical: 8,
      horizontal: 24,
    ),
    child: SubtitleButton("Travel Agencies"),
  );

  Widget _buildAgenciesList(BuildContext context) => Container(
    height: 96,
    child: ListView.builder(
      padding: EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 16
      ),
      scrollDirection: Axis.horizontal,
      itemCount: widget.agencies.length,
      itemBuilder: (context, index) => MaterialImage(widget.agencies[index],
        onTap: (){},
      ),
    ),
  );


  Widget _buildOffersSubtitle(BuildContext context) => Padding(
    padding: const EdgeInsets.symmetric(
      vertical: 8,
      horizontal: 24,
    ),
    child: SubtitleButton("All Offers"),
  );

  Widget _buildOffersList(BuildContext context) => Column(
    children: <Widget>[
      HorizontalPlaceCard(
        imageUrl: "https://www.italianpooltechnology.com/sites/default/files/styles/italianpooldesign/public/Swimpool%20Europa%20foto%20L.Pietra.jpg?itok=Rmgu0cLh",
        name: "Itally",
        description: "Veice, gondala cruise",
        ratting: 4,
        price: 375,
        priceDescription: "5 days",
        onTap: (){},
      ),
      HorizontalPlaceCard(
        imageUrl: "https://www.italianpooltechnology.com/sites/default/files/styles/italianpooldesign/public/Swimpool%20Europa%20foto%20L.Pietra.jpg?itok=Rmgu0cLh",
        name: "Itally",
        description: "Veice, gondala cruise",
        ratting: 4,
        price: 375,
        priceDescription: "5 days",
        onTap: (){},
      ),
      HorizontalPlaceCard(
        imageUrl: "https://www.italianpooltechnology.com/sites/default/files/styles/italianpooldesign/public/Swimpool%20Europa%20foto%20L.Pietra.jpg?itok=Rmgu0cLh",
        name: "Itally",
        description: "Veice, gondala cruise",
        ratting: 4,
        price: 375,
        priceDescription: "5 days",
        onTap: (){},
      )
    ],
  );

}
