import 'package:flutter/material.dart';
import 'package:spotify_clone/features/spotify_clone/presentation/views/album_view.dart';

class SongCard extends StatelessWidget {
  final AssetImage image;
  const SongCard({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AlbumView(
              image: image
            ),
          ),
        );
      },
      child: Container(
          width: 140,
          child: Column(
            children: [
              Image(
                image: image,
                width: 140,
                height: 140,
              ),
              Text(
                'Rihanna, Drake, Adele, Imagine Dragons, Eminem, Katy Perry',
                style: Theme.of(context).textTheme.caption,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
            ],
          )),
    );
  }
}
