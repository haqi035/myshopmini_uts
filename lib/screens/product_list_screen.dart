import 'package:flutter/material.dart';
import '../models/category.dart';
import '../models/product.dart';
import 'product_detail_screen.dart';

class ProductListScreen extends StatelessWidget {
  final Category category;
  final List<Product> allProducts;

  const ProductListScreen({
    super.key,
    required this.category,
    required this.allProducts,
  });

  @override
  Widget build(BuildContext context) {
    final items =
        allProducts.where((p) => p.categoryId == category.id).toList();

    return Scaffold(
      backgroundColor: const Color(0xfff5f7fb),
      appBar: AppBar(
        backgroundColor: const Color(0xff4e73df),
        centerTitle: true,
        title: Text(
          category.name,
          style: const TextStyle(color: Colors.white),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: GridView.builder(
          itemCount: items.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.75,
            mainAxisSpacing: 14,
            crossAxisSpacing: 14,
          ),
          itemBuilder: (_, i) {
            final p = items[i];

            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  _slideRoute(ProductDetailScreen(product: p)),
                );
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12.withOpacity(0.06),
                      blurRadius: 10,
                      offset: const Offset(0, 3),
                    )
                  ],
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: Image.asset(p.image),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      p.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Color(0xff4e5d78),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "Rp ${p.price.toStringAsFixed(0)}",
                      style: const TextStyle(
                        fontSize: 14,
                        color: Color(0xff6c7b95),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  PageRouteBuilder _slideRoute(Widget page) {
    return PageRouteBuilder(
      transitionDuration: const Duration(milliseconds: 350),
      pageBuilder: (_, __, ___) => page,
      transitionsBuilder: (_, anim, __, child) {
        const begin = Offset(0.1, 0);
        const end = Offset.zero;

        return SlideTransition(
          position: Tween(begin: begin, end: end).animate(anim),
          child: FadeTransition(opacity: anim, child: child),
        );
      },
    );
  }
}
