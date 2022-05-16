import 'package:fitness_app/bookmarks_page.dart';
import 'package:fitness_app/provider/bookmark_model.dart';
import 'package:fitness_app/provider/model/items_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{

  List itemsList = [
    {
      'title': 'Sit Ups',
      'subtitle': 'Abs',
    },
    {
      'title': 'Plank',
      'subtitle': 'Abs',
    },
    {
      'title': 'Mountain Climbers',
      'subtitle': 'Abs',
    },
    {
      'title': 'Crunches',
      'subtitle': 'Abs',
    },
    {
      'title': 'Windshield wipers',
      'subtitle': 'Abs',
    },
    {
      'title': 'Barbell Curls',
      'subtitle': 'Biceps',
    },
    {
      'title': 'Chin ups',
      'subtitle': 'Biceps',
    },
    {
      'title': 'Hammer Curls',
      'subtitle': 'Biceps',
    },
    {
      'title': 'Reverse Grip Bent Over Row',
      'subtitle': 'Biceps',
    },
    {
      'title': 'Standing Cable Curls',
      'subtitle': 'Biceps',
    },
    {
      'title': 'Incline Dumbbell curls',
      'subtitle': 'Biceps',
    },
    {
      'title': 'Preacher curls',
      'subtitle': 'Biceps',
    },
    {
      'title': 'Dips',
      'subtitle': 'Triceps',
    },
    {
      'title': 'Rope Pull Downs',
      'subtitle': 'Triceps',
    },
    {
      'title': 'Skull crushers',
      'subtitle': 'Triceps',
    },
    {
      'title': 'Close Grip Benchpress',
      'subtitle': 'Triceps',
    },
    {
      'title': 'Deficit Push ups',
      'subtitle': 'Triceps',
    },
    {
      'title': 'Weighted squats',
      'subtitle': 'Legs',
    },
    {
      'title': 'Step Ups',
      'subtitle': 'Legs',
    },
    {
      'title': 'Dead lifts',
      'subtitle': 'Legs',
    },
    {
      'title': 'Leg press',
      'subtitle': 'Legs',
    },
    {
      'title': 'Walking Lunges',
      'subtitle': 'Legs',
    },
    {
      'title': 'Kettle bell swings',
      'subtitle': 'Legs',
    },
    {
      'title': 'Jump Squats',
      'subtitle': 'Legs',
    },

  ];

  @override
  Widget build(BuildContext context) {
    //var bookmarkBloc = Provider.of<BookmarkBloc>(context);
    var bookmarkBloc = Provider.of<BookmarkBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Workouts To Do"),
        actions: [
          Row(
            children: [
              Text(bookmarkBloc.count.toString()),
              IconButton(
                icon: Icon(Icons.star),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => BookmarksPage()
                  ));
                },
              ),
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: itemsList.length,
                itemBuilder: (context, index){
                  return ListTile(
                    onTap: (){
                      bookmarkBloc.addcount();
                      //print(bookmarkBloc.count);
                      ItemModel itemModel = ItemModel(title: itemsList[index]['title'], subTitle: itemsList[index]['title']);
                      bookmarkBloc.addItems(itemModel);
                    },
                    title: Text(itemsList[index]['title']),
                    subtitle: Text(itemsList[index]['subtitle']),
                    trailing: Icon(Icons.add),
                  );
                },
            ),
          ],
        ),
      ),
    );
  }
}