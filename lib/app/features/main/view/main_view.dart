import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:snapfolio/app/features/main/view/photo_grid_page.dart';

class MainView extends ConsumerWidget {
  const MainView({super.key});

  static const routeName = '/main';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PhotoGridPage();
  }
}
