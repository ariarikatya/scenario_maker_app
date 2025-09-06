import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GenerateScenarioTile extends StatefulWidget {
  const GenerateScenarioTile({
    required this.backgroundColor,
    required this.iconBackgroundColor,
    required this.assetPath,
    required this.title,
    required this.description,
    this.onTap,
    super.key,
  });

  final Color? backgroundColor;
  final Color? iconBackgroundColor;
  final String assetPath;
  final String title;
  final String description;
  final VoidCallback? onTap;

  @override
  State<GenerateScenarioTile> createState() => _GenerateScenarioTileState();
}

class _GenerateScenarioTileState extends State<GenerateScenarioTile> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      onTapDown: (_) => setState(() {
        isPressed = true;
      }),
      onTapUp: (_) => setState(() {
        isPressed = false;
      }),
      onTapCancel: () => setState(() {
        isPressed = false;
      }),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: isPressed
              ? widget.backgroundColor?.withOpacity(0.7)
              : widget.backgroundColor,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 3,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Row(
            children: [
              DecoratedBox(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: widget.iconBackgroundColor,
                ),
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: SvgPicture.asset(
                    widget.assetPath,
                    width: 32,
                    height: 32,
                  ),
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.title,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    Text(
                      widget.description,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
