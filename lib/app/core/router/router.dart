import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:snapfolio/app/features/main/model/unsplash_photo_model/unsplash_photo_model.dart';
import 'package:snapfolio/app/features/main/view/main_view.dart';
import 'package:snapfolio/app/features/main/view/photo_details_page.dart';

///
/// for getting routers that are present in the app
GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
GlobalKey<NavigatorState> _shellNavigatorKey = GlobalKey<NavigatorState>();

///
final routerProvider = Provider<GoRouter>(
  (ref) {
    return GoRouter(
      // TODO: add your router here
      initialLocation: MainView.routeName,
      navigatorKey: navigatorKey,
      debugLogDiagnostics: true,
      routes: [
        /// for showing onboarding
        GoRoute(
          path: MainView.routeName,
          builder: (context, state) => const MainView(),
        ),
        GoRoute(
            path: PhotoDetailsPage.routeName,
            name: PhotoDetailsPage.routeName,
            builder: (context, state) {
              UnsplashPhotoModel photo = state.extra as UnsplashPhotoModel;
              return PhotoDetailsPage(
                photo: photo,
              );
            }),
      ],
      errorPageBuilder: (context, state) =>
          const MaterialPage(child: Text('Page not found')),
    );
  },
);
