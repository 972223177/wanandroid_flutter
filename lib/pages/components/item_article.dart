import 'package:flutter/material.dart';
import 'package:wanandroid_flutter/models/article.dart';

class ItemArticle extends StatelessWidget {
  const ItemArticle({Key? key, required this.article}) : super(key: key);
  final Article article;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            _topInfo(),
            _middleInfo(),
            _bottomInfo(),
          ],
        ),
      ),
    );
  }

  Widget _topInfo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            article.fresh == true
                ? Text(
                    '新',
                    style: TextStyle(),
                  )
                : const SizedBox.shrink()
          ],
        )
      ],
    );
  }

  Widget _middleInfo() {
    return const SizedBox.shrink();
  }

  Widget _bottomInfo() {
    return const SizedBox.shrink();
  }
}
