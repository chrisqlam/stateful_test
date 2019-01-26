import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:stateful_test/model/members.dart';
import 'package:stateful_test/ui/memberCard.dart';


class CardIndex extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CardIndexState();
  }
}

class CardIndexState extends State<CardIndex> {
  int index;
  int _currentIndex = 0;
  var _controller = new SwiperController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Swiper(
            itemBuilder: (BuildContext context, index) {
              return MemberCard(members[index]);
            },
            itemCount: 6,
            viewportFraction: 0.8,
            scale: 0.9,
            loop: false,
            controller: _controller,
            onIndexChanged: (index) {
              setState(() {
                _currentIndex = index + 1;
              });
            },
          ),
        ),
        Expanded(
            child: Text(
              _currentIndex.toString(),
            ),
            flex: 0),
        Row(
          children: <Widget>[
            RaisedButton(
              child: Text('Soyeon'),
              color: Colors.purple,
              onPressed: () {
                _controller.move(0);
              }
            ),
            RaisedButton(
              child: Text('Miyeon'),
              color: Colors.purple,
              onPressed: () {
                _controller.move(1);
              }
            ),
            RaisedButton(
              child: Text('Yuqi'),
              color: Colors.purple,
              onPressed: () {
                _controller.move(2);
              }
            ),
          ],
        ),
        Center(
        child: Row(
          children: <Widget>[
            RaisedButton(
              child: Text('Minnie'),
              color: Colors.purple,
              onPressed: () {
                _controller.move(3);
              }
            ),
            RaisedButton(
              child: Text('Soojin'),
              color: Colors.purple,
              onPressed: () {
                _controller.move(4);
              }
            ),
            RaisedButton(
              child: Text('Shuhua'),
              color: Colors.purple,
              onPressed: () {
                _controller.move(5);
              }
            ),
          ],
        )
        )
      ],
    );
  }
  
}
