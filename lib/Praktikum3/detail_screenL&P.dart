import 'package:flutter/material.dart';
import 'package:newflutter/model/tourism_place.dart';
import 'package:newflutter/model/detail_place.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.place, required this.detail}) : super(key: key);

  final TourismPlace place;
  final DetailPlace detail;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(children: <Widget> [
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget> [
            Image.asset(place.imageAsset),
            Container(
              margin: const EdgeInsets.only(top: 16.0),
              child: Text(
                place.name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'Lobster',
                ),
              ),
            ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    const Icon(Icons.calendar_today),
                    Text(detail.haribuka),
                  ],
                ),
                Column(
                  children: <Widget>[
                    const Icon(Icons.access_time),
                    Text(detail.jambuka),
                  ],
                ),
                Column(
                  children: <Widget>[
                    const Icon(Icons.attach_money),
                    Text(detail.harga),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              detail.deskripsi,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 16.0,
                fontFamily: 'Oxygen',
              ),
            ),
          ),
          Container(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget> [
                Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(detail.foto1),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(detail.foto2),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(detail.foto3),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(detail.foto4),
                  ),
                ),
              ],
            ),
          ),
        ],
        ),
        ]),
      ),
    );
  }
}