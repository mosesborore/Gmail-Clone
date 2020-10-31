import 'package:first_app/models/message_model.dart';
import 'package:flutter/material.dart';

class RecentEmails extends StatefulWidget {
  @override
  _RecentEmailsState createState() => _RecentEmailsState();
}

class _RecentEmailsState extends State<RecentEmails> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            )),
        child: ListView.builder(
            itemCount: emails.length,
            itemBuilder: (BuildContext context, int index) {
              final Email email = emails[index];
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 35.0,
                              child: Text(email.sender.name.substring(0, 1),
                                  style: TextStyle(color: Colors.white)),
                              backgroundColor: Colors.blueGrey,
                              // backgroundImage:
                              //     AssetImage(email.sender.imageUrl),
                            ),
                          ],
                        ),
                      ),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(email.sender.name,
                                style: email.unread == true
                                    ? TextStyle(fontWeight: FontWeight.bold)
                                    : TextStyle(fontWeight: FontWeight.normal)),
                            Text(email.subject,
                                style: email.unread == true
                                    ? TextStyle(fontWeight: FontWeight.bold)
                                    : TextStyle(fontWeight: FontWeight.normal)),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.60,
                              child: Text(
                                email.body,
                                style: email.unread == true
                                    ? TextStyle(fontWeight: FontWeight.bold)
                                    : TextStyle(fontWeight: FontWeight.normal),
                                overflow: TextOverflow.ellipsis,
                              ),
                            )
                          ]),
                    ],
                  ),
                  Column(children: <Widget>[
                    Text(email.time),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          email.isStarred = !email.isStarred;
                        });
                      },
                      child: email.isStarred == true
                          ? Icon(Icons.star)
                          : Icon(Icons.star_border),
                    )
                  ]),
                ],
              );
            }),
      ),
    );
  }
}
