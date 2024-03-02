import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hello_world_advanced/src/features/application/article_notifier.dart';
import 'package:hello_world_advanced/src/features/presentation/widgets/article_widget.dart';
import 'package:url_launcher/url_launcher_string.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final article = ref.watch(articleServiceProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome!'),
        actions: [
          IconButton(
            onPressed: () {
              ref.invalidate(articleServiceProvider);
            },
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: Center(
        child: article.when(
          data: (data) => data.fold(
            (article) => ArticleWidget(article: article),
            (r) => Text(r),
          ),
          error: (error, stackTrace) => Text(error.toString()),
          loading: () => const CircularProgressIndicator(),
        ),
      ),
    );
  }
}
