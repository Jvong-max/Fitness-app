
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:favorite_button/favorite_button.dart';
class Legs extends StatelessWidget {
  const Legs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Colors.deepPurpleAccent,
    appBar: AppBar(
      backgroundColor: Colors.greenAccent,
      title: const Text('Workout For Triceps'),
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
          buildImageCard6(),
          buildImageCard7(),
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
                  'https://static.strengthlevel.com/images/illustrations/squat-2-1000x1000.jpg'
              ),
              height: 240,
              fit: BoxFit.cover,
            ),
            const Positioned(
              bottom: 16,
              right: 16,
              left: 16,
              child: Text(
                'Weighted squats',
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
                uri: Uri.parse('https://www.youtube.com/watch?v=1oed-UmAxFs'),
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
                  'https://bodybuilding-wizard.com/wp-content/uploads/2021/11/high-box-step-up-knee-raise-glute.jpg'
              ),
              height: 240,
              fit: BoxFit.cover,
            ),
            const Positioned(
              bottom: 16,
              right: 16,
              left: 16,
              child: Text(
                'Step Ups',
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
                uri: Uri.parse('https://www.youtube.com/watch?v=S24Do-rZncI'),
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
                  'https://www.kindpng.com/picc/m/676-6766664_transparent-dead-lift-png-png-download.png'
              ),
              height: 240,
              fit: BoxFit.cover,
            ),
            const Positioned(
              bottom: 16,
              right: 16,
              left: 16,
              child: Text(
                'Dead lifts',
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
                uri: Uri.parse('https://www.youtube.com/watch?v=r4MzxtBKyNE'),
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
                  'https://www.mensjournal.com/wp-content/uploads/mf/_main_legpress.jpg?w=700&quality=86&strip=all'
              ),
              height: 240,
              fit: BoxFit.cover,
            ),
            const Positioned(
              bottom: 16,
              right: 16,
              left: 16,
              child: Text(
                'Leg press',
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
                uri: Uri.parse('https://www.youtube.com/watch?v=IZxyjW7MPJQ'),
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
                  'https://www.mensjournal.com/wp-content/uploads/mf/_main_walking-lunge.jpg?w=700&quality=86&strip=all'
              ),
              height: 240,
              fit: BoxFit.cover,
            ),
            const Positioned(
              bottom: 16,
              right: 16,
              left: 16,
              child: Text(
                'Walking Lunges',
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
                uri: Uri.parse('https://www.youtube.com/watch?v=vni4lElTvsY'),
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

  Widget buildImageCard6() => Card(
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
                  'https://www.mensjournal.com/wp-content/uploads/mf/hard_style_kb_swing-the-30-best-legs-exercises-of-all-time.jpg?w=700&quality=86&strip=all'
              ),
              height: 240,
              fit: BoxFit.cover,
            ),
            const Positioned(
              bottom: 16,
              right: 16,
              left: 16,
              child: Text(
                'Kettle bell swings',
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
                uri: Uri.parse('https://www.youtube.com/watch?v=Buz6gaVzVZs'),
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

  Widget buildImageCard7() => Card(
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
                  'https://www.mensjournal.com/wp-content/uploads/mf/_main_jumpsquat.jpg?w=700&quality=86&strip=all'
              ),
              height: 240,
              fit: BoxFit.cover,
            ),
            const Positioned(
              bottom: 16,
              right: 16,
              left: 16,
              child: Text(
                'Jump Squats',
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
                uri: Uri.parse('https://www.youtube.com/watch?v=A-cFYWvaHr0'),
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