import 'package:flutter/material.dart';
import 'package:scenario_maker_app/ui/screens/saved_scenarios/components/scenario_item.dart';

class  SavedScenariosScreen extends StatelessWidget {
 const  SavedScenariosScreen({super.key}) ;

 @override
 Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      title: const Text('Saved scenarios'),
      actions: [
        IconButton(
          onPressed: () {}, 
          icon: const Icon(Icons.logout),
          ),
      ],
    ),
     body: const Center(
      child: ScenarioItem(),
     ),
     );
 }
}