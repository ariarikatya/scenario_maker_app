import 'package:flutter/material.dart';
import 'package:scenario_maker_app/services/helpers.dart';
import 'package:scenario_maker_app/ui/screens/scenario_generations/components/generate_scenario_tile.dart';
import 'package:scenario_maker_app/ui/screens/scenario_generations/scenario_generation_screen.dart';

class PlatformSelectionScreen extends StatelessWidget {
  const PlatformSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Choose platform')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            GenerateScenarioTile(
              backgroundColor: Colors.blue[300],
              iconBackgroundColor: Colors.blue[100],
              assetPath: 'assets/icons/icons8-youtube.svg',
              title: 'YouTube',
              description: 'Generate a scenario for YouTube shorts video',
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ScenarioGenerationScreen(
                    socialPlatform: SocialPlatform.youtube,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            GenerateScenarioTile(
              backgroundColor: Colors.green[200],
              iconBackgroundColor: Colors.blue[100],
              assetPath: 'assets/icons/icons8-vk.svg',
              title: 'VK',
              description: 'Generate a scenario for VK clips video',
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ScenarioGenerationScreen(
                    socialPlatform: SocialPlatform.vk,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
