import 'package:flutter/material.dart';
import 'package:qnb/screens/helpers/my_colors.dart';
import '../widgets/top_logo_bar.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = "/home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.white,
        body: SafeArea(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TopLogoBar(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15), 
            child: Material(
              child: Ink(
                width: MediaQuery.of(context).size.width * 0.70,
                height: 150,
                decoration: BoxDecoration(
                    color: MyColors.qnb[700],
                    borderRadius: BorderRadius.circular(30)),
                child: InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(30),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Current Balance",
                        ),
                      ),
                      Text(
                        "1,500,00",
                        style: Theme.of(context).textTheme.headline3,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 220),
                        child: Text("EGP"),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
