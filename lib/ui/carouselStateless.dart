import 'package:flutter/material.dart';
import 'package:stateful_test/model/members.dart';
import 'package:stateful_test/ui/memberCard.dart';
import 'package:flutter_swiper/flutter_swiper.dart';



class CarouselStateless extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Swiper(
            itemBuilder: (BuildContext context, int index) {
              return MemberCard(members[index]);
            },
            itemCount: 6,
            viewportFraction: 0.8,
            scale: 0.9,
            loop: false,
          ),
        ),
      ],
    );
  }
}

class CardIndex extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CardIndexState();
  }
}

class CardIndexState extends State<CardIndex> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text(members.length.toString()),
    );
  }
}
