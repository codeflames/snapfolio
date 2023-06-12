import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:snapfolio/app/features/main/model/unsplash_photo_model/unsplash_photo_model.dart';
import 'package:snapfolio/app/features/main/providers/unsplash_repository_provider.dart';
import 'package:snapfolio/app/features/main/view/photo_details_page.dart';

final unsplashPhotosProvider = FutureProvider.autoDispose
    .family<List<UnsplashPhotoModel>, int>((ref, page) async {
  final repository = ref.read(unsplashRepositoryProvider);
  return repository.getPhotos(page, 30);
});

class PhotoGridPage extends ConsumerStatefulWidget {
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _PhotoGridPageState();
}

class _PhotoGridPageState extends ConsumerState<PhotoGridPage> {
  int _currentPage = 1;
  ScrollController _scrollController = ScrollController();
  List<UnsplashPhotoModel> _photos = [];

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
    _fetchPhotos();
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollListener() {
    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {
      _currentPage++;
      _fetchPhotos();
    }
  }

  Future<void> _fetchPhotos() async {
    final photos = await ref.read(unsplashPhotosProvider(_currentPage).future);
    setState(() {
      _photos.addAll(photos);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Photo Grid'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 4,
            mainAxisSpacing: 4,
          ),
          itemCount: _photos.length,
          controller: _scrollController,
          itemBuilder: (context, index) {
            final photo = _photos[index];
            return GestureDetector(
              onTap: () => context.pushNamed(
                PhotoDetailsPage.routeName,
                extra: photo,
              ),
              child: CachedNetworkImage(
                imageBuilder: (context, imageProvider) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                        image: imageProvider,
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
                errorWidget: (context, url, error) {
                  return Center(child: ErrorWidget(error));
                },
                imageUrl: photo.urls?.small ?? '',
              ),
            );
          },
        ),
      ),
    );
  }
}
