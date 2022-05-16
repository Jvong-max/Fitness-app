import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ToDo extends StatefulWidget {
  WorkoutList createState() => WorkoutList();
}


class WorkoutList extends State<ToDo> {
  List<String> mainDataList = [
    "Sit Ups: Abs",
    "Plank: Abs",
    "Mountain Climbers: Abs",
    "Crunches: Abs",
    "Windshield Wipers: Abs",
    "Barbell Curls: Biceps",
    "Chin ups: Biceps",
    "Hammer Curls: Biceps",
    "Reverse Grip Bent Over Row: Biceps",
    "Standing Cable Curls: Biceps",
    "Incline Dumbbell curls: Biceps",
    "Preacher curls: Biceps",
    "Dips: Triceps",
    "Rope Pull Downs: Triceps",
    "Skull crushers: Triceps",
    "Close Grip Benchpress: Triceps",
    "Deficit Push ups: Triceps",
    "Weighted squats: Legs",
    "Step Ups: Legs",
    "Dead lifts: Legs",
    "Leg press: Legs",
    "Walking Lunges: Legs",
    "Kettle bell swings: Legs",
    "Jump Squats: Legs"
  ];

  List<String> favoriteDataList = [];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Select What Workouts To add'),
          backgroundColor: Colors.deepPurple,
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.article_rounded)),
              Tab(icon: Icon(Icons.add)),
            ],
          ),
        ),
        body:TabBarView(
          children: [
            ListView.builder(
              itemCount: mainDataList.length,
              itemBuilder: (context, index) {
                return Card(
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(
                            mainDataList[index],
                            style: const TextStyle(fontSize: 19.0),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            favoriteDataList.add(mainDataList[index]);
                          });
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.deepPurple,
                          ),
                        ),
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            favoriteDataList.isEmpty
                ? const Center(
              child: Text(
                'There are no workouts yet!',
                style: TextStyle(color: Colors.black),
              ),
            )
                : ListView.builder(
              itemCount: favoriteDataList.length,
              itemBuilder: (context, index) {
                return Card(
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(
                            favoriteDataList[index],
                            style: const TextStyle(fontSize: 19.0),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            favoriteDataList
                                .remove(favoriteDataList[index]);
                          });
                        },
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all<Color>(
                            Colors.deepPurple,
                          ),
                        ),
                        child: const Icon(
                          Icons.remove,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}