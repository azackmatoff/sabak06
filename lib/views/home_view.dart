import 'package:flutter/material.dart';
import 'package:sabak06/constants/app_colors.dart';
import 'package:sabak06/constants/app_text_styles.dart';
import 'package:sabak06/widgets/button_content.dart';
import 'package:sabak06/widgets/custom_button.dart';
import 'package:sabak06/widgets/raised_gradient_button.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<Widget> bottomNavIcons = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          // Add one stop for each color
          // Values should increase from 0.0 to 1.0
          // stops: [0.1, 0.5, 0.8, 0.9],
          colors: [
            AppColors.bgColorLightPurple,
            AppColors.bgColorLightRed,
            AppColors.bgColorLightGrey,
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(
            'Эмне каалайсын?',
            style: TextStyle(color: AppColors.secondaryColor.withOpacity(0.8)),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'Кандай телефон алгың келет?',
                style: AppTextStyles.mainQuestion,
              ),
              RaisedGradientButton(
                topMargin: 8.0,
                height: 55.0,
                width: 350.0,
                child: ButtonContent(
                  iconText: 'A',
                  buttonText: 'iPhone',
                ),
                onPressed: () {},
                gradient: LinearGradient(
                  colors: <Color>[
                    AppColors.mainColor,
                    AppColors.secondaryColor,
                  ],
                ),
              ),
              RaisedGradientButton(
                topMargin: 8.0,
                height: 55,
                width: 350,
                child: ButtonContent(
                  iconText: 'B',
                  buttonText: 'Android',
                ),
                onPressed: () {},
                gradient: LinearGradient(
                  colors: <Color>[
                    AppColors.mainColor,
                    AppColors.secondaryColor,
                  ],
                ),
              ),
            ],
          ),
        ),
        // bottomNavigationBar: Row(
        //   children: <Widget>[
        //     ...bottomNavIcons,
        //   ],
        //   // children: bottomNavIcons,
        // ),
      ),
    );
  }
}
