import 'package:flutter/material.dart';
import 'package:test_tom/app/model/data.dart';
import 'package:test_tom/l10n/l10n.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key, required this.teachOnMarsData});

  final TeachOnMarsData teachOnMarsData;

  Widget pictureDetail(
    String author,
    String url,
    String title,
    ThemeData theme,
    String appBarTitle,
    BuildContext context,
  ) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(242, 242, 242, 1),
      appBar: AppBar(
        title: Text(
          appBarTitle,
          style: theme.textTheme.titleLarge,
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(Icons.arrow_back),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: 16),
        child: Column(
          children: [
            Image.network(
              url,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 16,
                    ),
                    child: Text(
                      title,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                  Text(
                    author,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget articleDetail(
    String title,
    String text,
    ThemeData theme,
    String appBarTitle,
    BuildContext context,
  ) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(242, 242, 242, 1),
      appBar: AppBar(
        title: Text(
          appBarTitle,
          style: theme.textTheme.titleLarge,
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(Icons.arrow_back),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text(
                title,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            Text(
              text,
              style: Theme.of(context).textTheme.bodyMedium,
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final theme = Theme.of(context);
    if (teachOnMarsData.type == 1) {
      return articleDetail(
        teachOnMarsData.title,
        teachOnMarsData.text ?? '',
        theme,
        l10n.detailArticleAppBarTitle,
        context,
      );
    }
    return pictureDetail(
      teachOnMarsData.author ?? '',
      teachOnMarsData.picture?.url ?? '',
      teachOnMarsData.title,
      theme,
      l10n.detailPictureAppBarTitle,
      context,
    );
  }
}
