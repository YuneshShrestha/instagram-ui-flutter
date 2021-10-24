import 'package:flutter/material.dart';

import 'feed.dart';

// ignore: must_be_immutable
class PostCart extends StatelessWidget {
  Feed feed;
  PostCart({this.feed});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 7.0,
        ),
        _postTitle(),
        SizedBox(
          height: 7.0,
        ),
        _postBody(context),
        SizedBox(
          height: 7.0,
        ),
        _postEnding(),
        SizedBox(
          height: 7.0,
        ),
      ],
    );
  }

  Widget _postTitle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.grey,
              backgroundImage: NetworkImage(feed.userImage),
            ),
            SizedBox(
              width: 5.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(feed.userName,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    )),
                Text(feed.userLocation,
                    style: TextStyle(
                      fontSize: 13.0,
                      fontWeight: FontWeight.normal,
                    )),
              ],
            ),
          ],
        ),
        Icon(Icons.delete_sharp),
      ],
    );
  }

  Widget _postBody(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 3.0),
      height: 200.0,
      child: Image.network(
        feed.postImage,
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.cover,
        alignment: Alignment.topCenter,
      ),
    );
  }

  Widget _postEnding() {
    return Container(
      margin: EdgeInsets.only(top: 3.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              feed.like
                  ? Icon(
                      Icons.star,
                      color: Colors.red,
                    )
                  : Icon(Icons.star_border),
              SizedBox(
                width: 15.0,
              ),
              Icon(Icons.message),
              SizedBox(
                width: 15.0,
              ),
              Icon(Icons.share),
            ],
          ),
          Icon(Icons.save_outlined),
        ],
      ),
    );
  }
}
