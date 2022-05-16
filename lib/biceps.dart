
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:favorite_button/favorite_button.dart';
class Biceps extends StatelessWidget {
  const Biceps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Colors.deepPurpleAccent,
    appBar: AppBar(
      backgroundColor: Colors.greenAccent,
      title: const Text('Workout For Biceps'),
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
                  'https://cdn.mos.cms.futurecdn.net/3jhSDeGBs7mETrDAyaLcUg.jpg'
              ),
              height: 240,
              fit: BoxFit.cover,
            ),
            const Positioned(
              bottom: 16,
              right: 16,
              left: 16,
              child: Text(
                'Barbell Curls',
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
                uri: Uri.parse('https://www.youtube.com/watch?v=JJB8XgKltA8'),
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
                  'https://i.insider.com/5f7c96b494fce90018f7b5dd?width=1136&format=jpeg'
              ),
              height: 240,
              fit: BoxFit.cover,
            ),
            const Positioned(
              bottom: 16,
              right: 16,
              left: 16,
              child: Text(
                'Chin ups',
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
                uri: Uri.parse('https://www.youtube.com/watch?v=K1hA6A8O-Fo'),
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
                  'https://barbend.com/wp-content/uploads/2019/04/best-biceps-exercises-hammer-curl.jpg'
              ),
              height: 240,
              fit: BoxFit.cover,
            ),
            const Positioned(
              bottom: 16,
              right: 16,
              left: 16,
              child: Text(
                'Hammer Curls',
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
                uri: Uri.parse('https://www.youtube.com/watch?v=7jqi2qWAUJk'),
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
                  'https://barbend.com/wp-content/uploads/2019/04/best-biceps-exercises-reverse-grip-bent-over-row.jpg'
              ),
              height: 240,
              fit: BoxFit.cover,
            ),
            const Positioned(
              bottom: 16,
              right: 16,
              left: 16,
              child: Text(
                'Reverse Grip Bent Over Row',
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
                uri: Uri.parse('https://www.youtube.com/watch?v=3gdGSSgDby8'),
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
                  'https://cdn.prod.openfit.com/uploads/2019/10/30163917/cable-curl-1200x600.jpg'
              ),
              height: 240,
              fit: BoxFit.cover,
            ),
            const Positioned(
              bottom: 16,
              right: 16,
              left: 16,
              child: Text(
                'Standing Cable Curls',
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
                uri: Uri.parse('https://www.youtube.com/watch?v=NFzTWp2qpiE'),
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
                  'https://static.strengthlevel.com/images/illustrations/incline-dumbbell-curl-2-1000x1000.jpg'
              ),
              height: 240,
              fit: BoxFit.cover,
            ),
            const Positioned(
              bottom: 16,
              right: 16,
              left: 16,
              child: Text(
                'Incline Dumbbell curls',
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
                uri: Uri.parse('https://www.youtube.com/watch?v=soxrZlIl35U'),
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
                  'https://www.bodybuilding.com/images/2021/march/preacher-curl-header-830x467.jpg'
              ),
              height: 240,
              fit: BoxFit.cover,
            ),
            const Positioned(
              bottom: 16,
              right: 16,
              left: 16,
              child: Text(
                'Preacher curls',
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
                uri: Uri.parse('https://www.youtube.com/watch?v=fIWP-FRFNU0'),
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