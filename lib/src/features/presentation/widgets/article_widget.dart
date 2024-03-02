import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hello_world_advanced/consts.dart';
import 'package:hello_world_advanced/helpers.dart';
import 'package:hello_world_advanced/src/features/domain/article.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ArticleWidget extends StatelessWidget {
  const ArticleWidget({
    required this.article,
    super.key,
  });

  final Article article;

  @override
  Widget build(BuildContext context) {
    final result = needleFromHaystack(targetValue, article.extract);
    final success = result == targetValue;
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {
            showDialog<Widget>(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: const Text('Article Extract'),
                  content: Text(article.extract),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('Close'),
                    ),
                  ],
                );
              },
            );
          },
          child: Text(
            result,
            style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  color: success ? Colors.green : Colors.red,
                ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: RichText(
            text: TextSpan(
              style: const TextStyle(
                color: Colors.black87,
                fontSize: 16,
              ),
              children: [
                const TextSpan(text: 'From '),
                TextSpan(
                  text: article.title,
                  style: const TextStyle(
                    decoration: TextDecoration.underline,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      launchUrlString(article.url);
                    },
                ),
              ],
            ),
          ),
        ),
        if (article.thumbnail != null)
          CachedNetworkImage(
            imageUrl: article.thumbnail!,
            width: 200,
            height: 200,
            fit: BoxFit.contain,
          ),
      ],
    );
  }
}
