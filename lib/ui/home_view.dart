import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:selenago_test/helper/app_assets.dart';
import 'package:selenago_test/helper/app_colors.dart';
import 'package:selenago_test/helper/app_widgets.dart';
import 'package:selenago_test/helper/media_query.dart';
import 'package:selenago_test/model/category.dart';
import 'package:selenago_test/model/product.dart';
import 'package:selenago_test/ui/detail_view.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

Future<Product> fetchProducts() async {
  final url = "https://raw.githubusercontent.com/didik-maulana/futter_json/master/activity.json";
  final response = await http.Client().get(url);
  if (response.statusCode == 200) {
    return Product.fromJson(json.decode(response.body));
  } else {
    throw Exception('Failed to load data products');
  }
}

class _HomeViewState extends State<HomeView> {

  final List<Category> categoryList = [
    Category(name: "Workshop"),
    Category(name: "Travelling"),
    Category(name: "Watching"),
    Category(name: "Hangout"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(
        getWidth(context, 8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          paddingTop(context, 2.0),
          _imgUser(),
          _textTitle(),
          paddingTop(context, 2.0),
          _searchBar(),
          paddingTop(context, 2.5),
          _textCategory(),
          paddingTop(context, 1.0),
          _lvCategory(context),
          paddingTop(context, 0.8),
          _futureBuilderProducts(context),
        ],
      ),
    );
  }

  Widget _imgUser() {
    return Align(
      alignment: Alignment.topRight,
        child: Image.asset(
        getImage("img_user.png"),
        width: 34.0,
      ),
    );
  }

  Widget _textTitle() {
    return Text(
      "Temukan\nAktivitas Menyenangkan!",
      style: TextStyle(
        color: AppColors.codGray,
        fontSize: 25.0,
        fontFamily: 'AvenirNextDemiBold',
      ),
    );
  }

  Widget _searchBar() {
    return TextField(
      decoration: const InputDecoration(
        fillColor: Color(0XFFF9F9F9),
        filled: true,
        enabledBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(22.5)),
          borderSide: BorderSide(
            color: Colors.transparent,
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(22.5)),
          borderSide: BorderSide(
            color: Colors.transparent,
          ),
        ),
        prefixIcon: Icon(
          Icons.search,
          size: 20.0,
          color: Color(0XFF5F5F5F),
        ),
        hintText: "Cari workshop atau open trip",
        hintStyle: TextStyle(
          fontSize: 14.0,
          color: Color(0XFF5F5F5F),
        ),
      ),
      style: TextStyle(
        color: Color(0XFF5F5F5F)
      ),
      autofocus: false,
    );
  }

  Widget _textCategory() {
    return Text(
      "Kategori",
      style: TextStyle(
        color: AppColors.codGray,
        fontSize: 16.0,
      ),
    );
  }

  Widget _lvCategory(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16.0),
      height: getHeight(context, 6.0),
      width: double.infinity,
      child: ListView.builder(
        physics: ClampingScrollPhysics(),
        itemCount: categoryList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.symmetric(
              horizontal: getWidth(context, 3.5),
            ),
            margin: EdgeInsets.only(
              right: getWidth(context, 2.5),
            ),
            decoration: BoxDecoration(
              color: index == 0 ? AppColors.sandyBeach: AppColors.alabaster,
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
            ),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                categoryList[index].name,
                style: TextStyle(
                  fontSize: 14.0,
                  color: index == 0 ? AppColors.yellowOrange : AppColors.scorpion,
                  fontFamily: 'AvenirNextDemiBold',
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _futureBuilderProducts(BuildContext context) {
    return FutureBuilder<Product>(
      future: fetchProducts(),
      builder: (context, snapshot) {

        if (snapshot.hasError) print(snapshot.error);

        if (snapshot.hasData) {
          return _gvProduct(context, snapshot.data.data);
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }

  Widget _gvProduct(BuildContext context, List<Data> products) {
    return Expanded(
      child: GridView.builder(
        itemCount: products.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: (getWidth(context, 1.0) / 7.8),
          crossAxisSpacing: getWidth(context, 4.0),
        ),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailView()),
              );
            },
            child: _itemProduct(products[index]),
          );
        },
      ),
    );
  }

  Widget _itemProduct(Data data) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Image.asset(
          getImage("img_dummy_product.png"),
          fit: BoxFit.cover,
          height: 188.0,
        ),
        paddingTop(context, 0.5),
        Text(
          data.name,
          style: TextStyle(
            fontFamily: 'AvenirNextDemiBold',
            fontSize: 16.0,
            color: AppColors.codGray,
          ),
        ),
        paddingTop(context, 0.8),
        Text(
          data.price != null ? "Rp. " + data.price.toString() : "Rp.-",
          style: TextStyle(
            fontSize: 14.0,
            color: AppColors.codGray,
          ),
        ),
        paddingTop(context, 0.5),
        Text(
          data.date,
          style: TextStyle(
            fontSize: 12.0,
            color: AppColors.codGray,
          ),
        ),
      ],
    );
  }
}