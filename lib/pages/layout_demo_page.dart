import 'package:flutter/material.dart';

class LayoutDemoPage extends StatelessWidget {
  const LayoutDemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDesktop = MediaQuery.of(context).size.width > 600;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Layout Demo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: isDesktop ? _buildDesktopLayout() : _buildMobileLayout(),
      ),
    );
  }

  Widget _buildDesktopLayout() {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.blue.shade100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildSquareContainer(Colors.red, 'Box 1'),
                _buildSquareContainer(Colors.green, 'Box 2'),
                _buildSquareContainer(Colors.blue, 'Box 3'),
              ],
            ),
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          flex: 3,
          child: Container(
            color: Colors.amber.shade100,
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'Desktop Layout',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildCircleContainer(Colors.purple, 'Circle 1'),
                      _buildCircleContainer(Colors.orange, 'Circle 2'),
                      _buildCircleContainer(Colors.teal, 'Circle 3'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildMobileLayout() {
    return Column(
      children: [
        Container(
          height: 200,
          color: Colors.blue.shade100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildSquareContainer(Colors.red, 'Box 1'),
              _buildSquareContainer(Colors.green, 'Box 2'),
              _buildSquareContainer(Colors.blue, 'Box 3'),
            ],
          ),
        ),
        const SizedBox(height: 16),
        Expanded(
          child: Container(
            color: Colors.amber.shade100,
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                const Text(
                  'Mobile Layout',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildCircleContainer(Colors.purple, 'Circle 1'),
                    _buildCircleContainer(Colors.orange, 'Circle 2'),
                    _buildCircleContainer(Colors.teal, 'Circle 3'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSquareContainer(Color color, String text) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _buildCircleContainer(Color color, String text) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
} 