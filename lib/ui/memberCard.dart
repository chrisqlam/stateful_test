import 'package:flutter/material.dart';
import 'package:stateful_test/model/members.dart';

class MemberCard extends StatelessWidget {
  final Member member;

  MemberCard(this.member);

  @override
  Widget build(BuildContext context) {
    return new SafeArea(
      child: new Column(
        children: <Widget>[
          new Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)),
            elevation: 8.0,
            clipBehavior: Clip.antiAlias,
            margin: EdgeInsets.all(10.0),
            child: new Column(
              children: <Widget>[
                new Row(
                  children: <Widget>[
                    new Expanded(
                      child: new SizedBox(
                        height: 190.0,
                        child: new Stack(
                          children: <Widget>[
                            Positioned.fill(
                              child: new Image.asset(
                                member.img,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              top: 10.0,
                              right: 10.0,
                              child: FittedBox(
                                fit: BoxFit.scaleDown,
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  member.name,
                                  style: TextStyle(
                                      fontSize: 30.0, color: Colors.white),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
