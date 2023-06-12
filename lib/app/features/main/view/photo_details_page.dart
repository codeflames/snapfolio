
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:snapfolio/app/features/main/model/unsplash_photo_model/unsplash_photo_model.dart';

class PhotoDetailsPage extends StatefulWidget {
  final UnsplashPhotoModel photo;
  static const routeName = '/photo_details';

  const PhotoDetailsPage({Key? key, required this.photo}) : super(key: key);

  @override
  _PhotoDetailsPageState createState() => _PhotoDetailsPageState();
}

class _PhotoDetailsPageState extends State<PhotoDetailsPage> {
  bool _showDetails = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Photo Details'),
        // leading: IconButton(
        //   icon: Icon(Icons.arrow_back),
        //   onPressed: () {
        //     Navigator.of(context).pop();
        //   },
        // ),
      ),
      body: Stack(
        children: [
          // Background image
          CachedNetworkImage(
            imageUrl: widget.photo.urls?.regular ?? '',
            fit: BoxFit.fitWidth,
            width: double.infinity,
            height: double.infinity,
          ),
          // Bright overlay
          const SizedBox(
            // color: Colors.white.withOpacity(0.8),
            width: double.infinity,
            height: double.infinity,
          ),
          // Content overlay
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _showDetails = !_showDetails;
                });
              },
              child: AnimatedOpacity(
                opacity: _showDetails ? 1.0 : 0.0,
                duration: const Duration(milliseconds: 200),
                child: Container(
                  color: Colors.black.withOpacity(0.6),
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.photo.description ?? '',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'By ${widget.photo.user?.name ?? ''}',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Resolution: ${widget.photo.width} x ${widget.photo.height}',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Likes: ${widget.photo.likes}',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
