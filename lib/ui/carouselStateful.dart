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
          flex: 1,
          child: Swiper(
            itemBuilder: (BuildContext context, index) {
              return MemberCard(members[index]);
            },
            itemCount: members.length,
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
        Container(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text("CURRENT CAROUSEL POSITION:"),
              Text(
                _currentIndex.toString(),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            RaisedButton(
                child: Text('Soyeon'),
                color: Colors.purple,
                onPressed: () {
                  _controller.move(0, animation: false);
                }),
            RaisedButton(
                child: Text('Miyeon'),
                color: Colors.purple,
                onPressed: () {
                  _controller.move(1, animation: false);
                }),
            RaisedButton(
                child: Text('Yuqi'),
                color: Colors.purple,
                onPressed: () {
                  _controller.move(2, animation: false);
                }),
          ],
        ),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              RaisedButton(
                  child: Text('Minnie'),
                  color: Colors.purple,
                  onPressed: () {
                    _controller.move(3, animation: false);
                  }),
              RaisedButton(
                  child: Text('Soojin'),
                  color: Colors.purple,
                  onPressed: () {
                    _controller.move(4, animation: false);
                  }),
              RaisedButton(
                  child: Text('Shuhua'),
                  color: Colors.purple,
                  onPressed: () {
                    _controller.move(5, animation: false);
                  }),
            ],
          ),
        )
      ],
    );
  }
}
