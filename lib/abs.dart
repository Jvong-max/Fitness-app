
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:favorite_button/favorite_button.dart';
class Abs extends StatelessWidget {
  const Abs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Colors.deepPurpleAccent,
    appBar: AppBar(
      backgroundColor: Colors.greenAccent,
      title: const Text('Workout For Abs'),
      centerTitle: true,
    ),
    body: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildImageCard(),
          buildImageCard2(),
          buildImageCard3(),
          buildImageCard4(),
          buildImageCard5(),
        ],
      ),
      ),
    );

  Widget buildImageCard() => Card(
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24)
    ),
    child: Column(
      children: [
        Stack(
          children: [
            Ink.image(
                image: const NetworkImage(
                  'https://images.unsplash.com/photo-1616803824305-a07cfbc8ea60?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'
                ),
              height: 240,
              fit: BoxFit.cover,
            ),
            const Positioned(
              bottom: 16,
              right: 16,
              left: 16,
              child: Text(
                'Sit Ups',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 24,
                ),
              ),
            )
          ],
        ),
        Padding(
            padding: const EdgeInsets.all(18).copyWith(bottom: 0),
          child: const Text(
            'Click Here for a video demonstration'
          ),
        ),
        ButtonBar(
          alignment: MainAxisAlignment.center,
          children: [
            Link(
              target: LinkTarget.blank,
              uri: Uri.parse('https://www.youtube.com/watch?v=gXtgw7LtcgU'),
            builder: (context, followLink) => ElevatedButton(
              child: const Text('Click for video'),
              onPressed: followLink,
              )
            ),
            FavoriteButton(
              isFavorite: false,
              valueChanged: (_isFavorite){
                print("Is Favorite : $_isFavorite");
              }
            )
          ],
        )
      ],
    ),
  );

  Widget buildImageCard2() => Card(
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24)
    ),
    child: Column(
      children: [
        Stack(
          children: [
            Ink.image(
              image: const NetworkImage(
                  'https://images.unsplash.com/photo-1589955791915-526198ae4ee9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'
              ),
              height: 240,
              fit: BoxFit.cover,
            ),
            const Positioned(
              bottom: 16,
              right: 16,
              left: 16,
              child: Text(
                'Plank',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 24,
                ),
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(18).copyWith(bottom: 0),
          child: const Text(
              'Click Here for a video demonstration'
          ),
        ),
        ButtonBar(
          alignment: MainAxisAlignment.center,
          children: [
            Link(
                target: LinkTarget.blank,
                uri: Uri.parse('https://www.youtube.com/watch?v=BQu26ABuVS0'),
                builder: (context, followLink) => ElevatedButton(
                  child: const Text('Click for video'),
                  onPressed: followLink,
                )
            ),
            FavoriteButton(
                isFavorite: false,
                valueChanged: (_isFavorite){
                  print("Is Favorite : $_isFavorite");
                }
            )
          ],
        )
      ],
    ),
  );

  Widget buildImageCard3() => Card(
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24)
    ),
    child: Column(
      children: [
        Stack(
          children: [
            Ink.image(
              image: const NetworkImage(
                  'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/mountainclimbers12-1566412039.jpg?resize=768:*'
              ),
              height: 240,
              fit: BoxFit.cover,
            ),
            const Positioned(
              bottom: 16,
              right: 16,
              left: 16,
              child: Text(
                'Mountain Climbers',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 24,
                ),
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(18).copyWith(bottom: 0),
          child: const Text(
              'Click Here for a video demonstration'
          ),
        ),
        ButtonBar(
          alignment: MainAxisAlignment.center,
          children: [
            Link(
                target: LinkTarget.blank,
                uri: Uri.parse('https://www.youtube.com/watch?v=De3Gl-nC7IQ'),
                builder: (context, followLink) => ElevatedButton(
                  child: const Text('Click for video'),
                  onPressed: followLink,
                )
            ),
            FavoriteButton(
                isFavorite: false,
                valueChanged: (_isFavorite){
                  print("Is Favorite : $_isFavorite");
                }
            )
          ],
        )
      ],
    ),
  );

  Widget buildImageCard4() => Card(
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24)
    ),
    child: Column(
      children: [
        Stack(
          children: [
            Ink.image(
              image: const NetworkImage(
                  'https://www.muscleandfitness.com/wp-content/uploads/2020/04/Man-Doing-Crunches-At-Home.jpg?quality=86&strip=all'
              ),
              height: 240,
              fit: BoxFit.cover,
            ),
            const Positioned(
              bottom: 16,
              right: 16,
              left: 16,
              child: Text(
                'Crunches',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 24,
                ),
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(18).copyWith(bottom: 0),
          child: const Text(
              'Click Here for a video demonstration'
          ),
        ),
        ButtonBar(
          alignment: MainAxisAlignment.center,
          children: [
            Link(
                target: LinkTarget.blank,
                uri: Uri.parse('https://www.youtube.com/watch?v=5ER5Of4MOPI'),
                builder: (context, followLink) => ElevatedButton(
                  child: const Text('Click for video'),
                  onPressed: followLink,
                )
            ),
            FavoriteButton(
                isFavorite: false,
                valueChanged: (_isFavorite){
                  print("Is Favorite : $_isFavorite");
                }
            )
          ],
        )
      ],
    ),
  );

  Widget buildImageCard5() => Card(
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24)
    ),
    child: Column(
      children: [
        Stack(
          children: [
            Ink.image(
              image: const NetworkImage(
                  'https://i.ytimg.com/vi/X59_4RrU_aA/maxresdefault.jpg'
              ),
              height: 240,
              fit: BoxFit.cover,
            ),
            const Positioned(
              bottom: 16,
              right: 16,
              left: 16,
              child: Text(
                'Windshield wipers',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 24,
                ),
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(18).copyWith(bottom: 0),
          child: const Text(
              'Click Here for a video demonstration'
          ),
        ),
        ButtonBar(
          alignment: MainAxisAlignment.center,
          children: [
            Link(
                target: LinkTarget.blank,
                uri: Uri.parse('https://www.youtube.com/watch?v=X59_4RrU_aA'),
                builder: (context, followLink) => ElevatedButton(
                  child: const Text('Click for video'),
                  onPressed: followLink,
                )
            ),
            FavoriteButton(
                isFavorite: false,
                valueChanged: (_isFavorite){
                  print("Is Favorite : $_isFavorite");
                }
            )
          ],
        )
      ],
    ),
  );
}