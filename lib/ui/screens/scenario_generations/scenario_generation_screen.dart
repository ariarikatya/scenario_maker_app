import 'package:flutter/material.dart';
import 'package:scenario_maker_app/services/helpers.dart';
import 'package:scenario_maker_app/ui/screens/scenario_generations/components/scenario_description_textfield.dart';

class ScenarioGenerationScreen extends StatefulWidget {
  const ScenarioGenerationScreen({required this.socialPlatform, super.key});

  final SocialPlatform socialPlatform;

  @override
  State<ScenarioGenerationScreen> createState() =>
      _ScenarioGenerationScreenState();
}

class _ScenarioGenerationScreenState extends State<ScenarioGenerationScreen> {
  final videoThemeController = TextEditingController();
  final targetAudienceController = TextEditingController();
  final videoLengthController = TextEditingController();
  final contentStyleController = TextEditingController();
  final callToActionController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    super.dispose();
    videoThemeController.dispose();
    targetAudienceController.dispose();
    videoLengthController.dispose();
    contentStyleController.dispose();
    callToActionController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Generate new video scenario')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                ScenarioDescriptionTextField(
                  title:
                      'Enter the theme of the video \\\\n(e.g., Travel, Food)',
                  hintText: 'Video theme',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a video theme';
                    }
                    return null;
                  },
                  controller: videoThemeController,
                ),
                const SizedBox(height: 16),

                ScenarioDescriptionTextField(
                  title:
                      'Enter the target audience \\\\n(e.g., Teenagers, Professionals)',
                  hintText: 'Target audience',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the target audience';
                    }
                    return null;
                  },
                  controller: targetAudienceController,
                ),
                const SizedBox(height: 16),

                ScenarioDescriptionTextField(
                  title:
                      'Enter the length of the video in seconds \\\\n(e.g., 15, 30, 60)',
                  hintText: 'Video length',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a video length';
                    }
                    if (int.tryParse(value) == null) {
                      return 'Please enter a valid number';
                    }
                    return null;
                  },
                  controller: videoLengthController,
                ),
                const SizedBox(height: 16),

                ScenarioDescriptionTextField(
                  title:
                      'Enter the style of content \\\\n(e.g., Informative, Humorous)',
                  hintText: 'Content style',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a content style';
                    }
                    return null;
                  },
                  controller: contentStyleController,
                ),
                const SizedBox(height: 16),

                ScenarioDescriptionTextField(
                  title:
                      'Enter a call to action \\\\n(e.g., Subscribe, Comment)',
                  hintText: 'Call to action',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a call to action';
                    }
                    return null;
                  },
                  controller: callToActionController,
                ),
                const SizedBox(height: 24),
                ElevatedButton(
                  onPressed: () {
                    formKey.currentState!.validate();
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      vertical: 12,
                      horizontal: 60,
                    ),
                  ),
                  child: const Text('Submit', style: TextStyle(fontSize: 18)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
