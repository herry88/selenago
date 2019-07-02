import 'package:flutter/material.dart';
import 'package:selenago_test/helper/app_assets.dart';
import 'package:selenago_test/helper/app_colors.dart';
import 'package:selenago_test/helper/app_widgets.dart';
import 'package:selenago_test/helper/media_query.dart';

class DetailView extends StatefulWidget {
  @override
  _DetailViewState createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: ClampingScrollPhysics(),
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Image.asset(
                  getImage("img_dummy_detail_product.png"),
                  fit: BoxFit.fitWidth,
                  width: getWidth(context, 100.0),
                  height: getHeight(context, 55.0),
                ),
                Container(
                  width: getWidth(context, 100.0),
                  height: getHeight(context, 55.0),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromRGBO(255, 255, 255, 0.0),
                        Color.fromRGBO(0, 0, 0, 100),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(
                    getWidth(context, 4.0),
                  ),
                  child: Row(
                    children: <Widget>[
                      roundedIcon(Icons.chevron_left),
                      Spacer(),
                      roundedIcon(Icons.share),
                      paddingEnd(context, 4.0),
                      roundedIcon(Icons.favorite_border),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(
              getWidth(context, 4.0),
            ),
            child: Column(
              children: <Widget>[
                _hostSection(context),
                paddingTop(context, 1.0),
                lineDivider(AppColors.gallery),
                _buildText(context,
                "Deskripsi",
                "Workshop memberikan materi"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _hostSection(BuildContext context) {
    return Row(
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Host dari",
              style: TextStyle(
                fontSize: 13.0,
                color: AppColors.codGray,
              ),
            ),
            paddingTop(context, 0.5),
            Row(
              children: <Widget>[
                Text(
                  "Emma Palmer",
                  style: TextStyle(
                    fontSize: 14.0,
                    fontFamily: 'AvenirNextDemiBold',
                    color: AppColors.codGray,
                  ),
                ),
                paddingEnd(context, 1.0),
                Image.asset(
                  getIcon("ic_badge_check.png"),
                  width: 10.0,
                ),
              ],
            ),
          ],
        ),
        Spacer(),
        Image.asset(
          getImage("img_user.png"),
          width: 38.0,
        ),
      ],
    );
  }

  Widget _buildText(
    BuildContext context,
    String title,
    String description) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        paddingTop(context, 2.0),
        Text(
          title,
          style: TextStyle(
            color: AppColors.codGray,
            fontSize: 14.0,
            fontFamily: 'AvenirNextDemiBold',
          ),
        ),
        paddingTop(context, 0.5),
        Text(
          description,
          style: TextStyle(
            color: AppColors.codGray,
            fontSize: 12.0,
          ),
        ),
        paddingTop(context, 2.0),
        lineDivider(AppColors.gallery),
      ],
    );
  }
}