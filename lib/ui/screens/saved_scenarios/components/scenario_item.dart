import 'package:flutter/material.dart';

class ScenarioItem extends StatefulWidget {
  const ScenarioItem({super.key});
  @override
  State<ScenarioItem> createState() => _ScenarioItemState();
}

class _ScenarioItemState extends State<ScenarioItem> {
  bool _isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    'Top 3 iPhone Hacks you needTop 3 iPhone Hacks you needTop 3 iPhone Hacks you need',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      _isExpanded = !_isExpanded;
                    });
                  },
                  icon: Icon(
                    _isExpanded ? Icons.expand_less : Icons.expand_more,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
            if (!_isExpanded)
              const Text(
                'datadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadata',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 14, color: Colors.black54),
              ),

            if (_isExpanded)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'datadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadata',
                    style: TextStyle(fontSize: 14, color: Colors.black54),
                  ),
                  const Divider(color: Colors.grey, thickness: 0.8),
                  SizedBox(height: 8),
                  _buildDetailRow('Platform:', 'YouTube'),
                  _buildDetailRow('Theme:', 'YouTube'),
                  _buildDetailRow('Target Audience:', 'YouTube'),
                  _buildDetailRow('Call to action:', 'YouTube'),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.share, color: Colors.blue),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.delete, color: Colors.red),
                      ),
                    ],
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Text(
            '$label',
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(fontSize: 14, color: Colors.black54),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
