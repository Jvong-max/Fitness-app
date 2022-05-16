
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:favorite_button/favorite_button.dart';
class Triceps extends StatelessWidget {
  const Triceps({Key? key}) : super(key: key);

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
                  'https://www.verywellfit.com/thmb/qG0-F62qzeUAx2OvZkvSUi30l_U=/4500x2531/smart/filters:no_upscale()/About-2A15-TricepDips-939-5714508f5f9b588cc271b609.jpg'
              ),
              height: 240,
              fit: BoxFit.cover,
            ),
            const Positioned(
              bottom: 16,
              right: 16,
              left: 16,
              child: Text(
                'Dips',
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
                uri: Uri.parse('https://www.youtube.com/watch?v=6kALZikXxLc'),
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
                  'https://external-preview.redd.it/PTbe_1TUuzHvhLyLSolEORE-Gh6QhUUIoFA5O4C19Eo.jpg?auto=webp&s=9bd4d97f30b09cc1fd07f5e68f3e64f38c84f916'
              ),
              height: 240,
              fit: BoxFit.cover,
            ),
            const Positioned(
              bottom: 16,
              right: 16,
              left: 16,
              child: Text(
                'Rope Pull Downs',
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
                uri: Uri.parse('https://www.youtube.com/watch?v=8CbJK7mmisE'),
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
                  'https://www.fitfatherproject.com/wp-content/uploads/2019/08/SkullKrushersNT.png'
              ),
              height: 240,
              fit: BoxFit.cover,
            ),
            const Positioned(
              bottom: 16,
              right: 16,
              left: 16,
              child: Text(
                'Skull crushers',
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
                uri: Uri.parse('https://www.youtube.com/watch?v=d_KZxkY_0cM'),
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
                  'https://cdn.mos.cms.futurecdn.net/5dZEk49wrCzuoqerenR7oA-320-80.jpg'
              ),
              height: 240,
              fit: BoxFit.cover,
            ),
            const Positioned(
              bottom: 16,
              right: 16,
              left: 16,
              child: Text(
                'Close Grip Benchpress',
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
                uri: Uri.parse('https://www.youtube.com/watch?v=wxVRe9pmJdk'),
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
                  'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/db-press-up-1580388393.jpg?resize=768:*'
              ),
              height: 240,
              fit: BoxFit.cover,
            ),
            const Positioned(
              bottom: 16,
              right: 16,
              left: 16,
              child: Text(
                'Deficit Push ups',
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
                uri: Uri.parse('https://www.youtube.com/watch?v=kdOh9nQmioQ'),
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