import 'package:flutter/material.dart';
import 'package:newflutter/Praktikum3/detail_screenL&P.dart';
import 'package:newflutter/model/tourism_place.dart';
import 'package:newflutter/model/detail_place.dart';
import 'package:newflutter/Praktikum3/list_item.dart';
import 'package:newflutter/provider/done_tourism_provider.dart';
import 'package:provider/provider.dart';

class TourismList extends StatefulWidget{
  const TourismList({Key? key}) : super(key: key);
  @override
  _TourismListState createState() => _TourismListState();
}

class _TourismListState extends State<TourismList>{
  final List<TourismPlace> tourismPlaceList = [
    TourismPlace(
      name: 'Surabaya Submarine Monument',
      location: 'Jl Pemuda',
      imageAsset: 'assets/images/submarine.jpg',
    ),
    TourismPlace(
      name: 'Kelenteng Sanggar Agung',
      location: 'Kenjeran',
      imageAsset: 'assets/images/Klenteng.jpg',
    ),
    TourismPlace(
      name: 'House of Sampoerna',
      location: 'Krembangan Utara',
      imageAsset: 'assets/images/Sampoerna.jpg',
    ),
    TourismPlace(
      name: 'Tugu Pahlawan',
      location: 'Alun-alun contong',
      imageAsset: 'assets/images/Tugu.jpg',
    ),
    TourismPlace(
      name: 'Patung Suro Boyo',
      location: 'Wonokromo',
      imageAsset: 'assets/images/Patung.jpg',
    ),
    TourismPlace(
      name: 'Alun-Alun Surabaya',
      location: 'Jl. Gubernur Suryo',
      imageAsset: 'assets/images/Alunalun.jpg',
    ),
    TourismPlace(
      name: 'Taman Bungkul',
      location: 'Jalan Raya Darmo',
      imageAsset: 'assets/images/Tamanbungkul.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context){
    return ListView.builder(
      itemBuilder: (context, index){
        final TourismPlace place = tourismPlaceList[index];
        final DetailPlace detail = detailPlaceList[index];
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return DetailScreen(place: place, detail: detail);
            }));
            },
            child: Consumer<DoneTourismProvider>(
              builder: (context, DoneTourismProvider data, widget){
                return ListItem(
                  place: place,
                  isDone: data.doneTourismPlaceList.contains(place),
                  onCheckboxClick: (bool? value){
                    setState(() {
                      if(value!=null){
                        value
                            ? data.doneTourismPlaceList.add(place)
                            : data.doneTourismPlaceList.remove(place);
                      }
                    });
                  },
                );
              },
            ),
          );
        },
      itemCount: tourismPlaceList.length,
    );
  }
}