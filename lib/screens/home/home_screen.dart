import 'package:flutter/material.dart';
import 'package:travel/components/custom_nav_bar.dart';
import 'package:travel/constants.dart';
import 'package:travel/screens/home/components/body.dart';
import 'package:travel/size_config.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    // You have to call SizeConfig on your starting page
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: CustomNavBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          Icons.menu,
          color: kIconColor,
        ),
        onPressed: () {},
      ),
      actions: [
        IconButton(
            icon: ClipOval(child: Image.asset("assets/images/profile.png")),
            onPressed: () {})
      ],
    );
  }
}
