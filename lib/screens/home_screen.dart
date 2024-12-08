import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/app_state.dart';
import '../widgets/featured_games_carousel.dart';
import '../widgets/special_offers_grid.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Row(
          children: [
            Image.network(
              'https://store.steampowered.com/favicon.ico',
              height: 32,
            ),
            const SizedBox(width: 12),
            const Text('STORE'),
            const Spacer(),
            _buildNavItem('COMMUNITY'),
            _buildNavItem('ABOUT'),
            _buildNavItem('SUPPORT'),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildCategoryBar(),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'FEATURED & RECOMMENDED',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const FeaturedGamesCarousel(),
                  const SizedBox(height: 32),
                  const Text(
                    'SPECIAL OFFERS',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const SpecialOffersGrid(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white70,
        ),
      ),
    );
  }

  Widget _buildCategoryBar() {
    return Container(
      color: const Color(0xFF2a475e),
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        children: [
          _buildCategoryItem('Your Store'),
          _buildCategoryItem('New & Noteworthy'),
          _buildCategoryItem('Categories'),
          _buildCategoryItem('Points Shop'),
          _buildCategoryItem('News'),
          _buildCategoryItem('Labs'),
        ],
      ),
    );
  }

  Widget _buildCategoryItem(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white70,
          fontSize: 14,
        ),
      ),
    );
  }
}
