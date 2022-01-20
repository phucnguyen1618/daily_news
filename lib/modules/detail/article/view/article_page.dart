import 'package:daily_news/modules/detail/article/controller/article_controller.dart';
import 'package:daily_news/shared/widgets/category_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

part 'article_page_children.dart';

class ArticlePage extends GetView<ArticleController> {
  const ArticlePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: 460.0,
              foregroundDecoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color:
                    Color.fromARGB(Color.getAlphaFromOpacity(0.5), 15, 23, 42),
              ),
              child: Image.network(
                controller.detailArticle.urlImage,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 56.0,
              left: 24.0,
              child: GestureDetector(
                onTap: () {
                  controller.onBack();
                },
                child: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              bottom: 0.0,
              left: 0.0,
              right: 0.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  buildHeaderArticle(),
                  buildContentArticle(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}