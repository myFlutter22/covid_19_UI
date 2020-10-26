import 'package:covid_19/constant.dart';

import 'package:covid_19/widget/counter.dart';
import 'package:covid_19/widget/my_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScrolView(),
    );
  }
}

class ScrolView extends StatelessWidget {
  const ScrolView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyHeader(
          image: "assets/icons/Drcorona.svg",
          textTop: "All you need",
          textBottom: "is stay at home",
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          height: 60,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(25),
            border: Border.all(color: Colors.white54),
          ),
          child: Row(
            children: [
              SvgPicture.asset("assets/icons/maps_and_flags.svg"),
              SizedBox(width: 20),
              Expanded(
                child: DropdownButton(
                  isExpanded: true,
                  underline: SizedBox(),
                  value: "Indonesia",
                  items: ['Indonesia', 'Bangladesh', 'United State', 'Japan']
                      .map<DropdownMenuItem<String>>(
                    (String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    },
                  ).toList(),
                  onChanged: (value) {},
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Case Update\n",
                          style: kTitleTextStyle,
                        ),
                        TextSpan(
                          text: "Newest update Desember 08",
                          style: TextStyle(
                            color: kTextLightColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    "See details",
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey[200],
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 4),
                      blurRadius: 30,
                      color: kShadowColor,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Counter(
                      color: kInfectedColor,
                      number: 1046,
                      title: "Infected",
                    ),
                    Counter(
                      color: kDeathColor,
                      number: 46,
                      title: "Deaths",
                    ),
                    Counter(
                      color: kRecoverColor,
                      number: 1000,
                      title: "Recovered",
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Spread of Virus",
                    style: kTitleTextStyle,
                  ),
                  Text(
                    "See details",
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 5),
                height: 125,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey[200],
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 30,
                      color: kShadowColor,
                    ),
                  ],
                ),
                child: Image.asset(
                  "assets/images/map.png",
                  fit: BoxFit.contain,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
