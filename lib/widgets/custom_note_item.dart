import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 24, bottom: 24, left: 16),
      decoration: BoxDecoration(
        color: const Color(0xffFFCC80),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Text(
              'Flutter tips',
              style: TextStyle(color: Colors.black, fontSize: 26),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 18, bottom: 18),
              child: Text(
                'Build your career with Flutter',
                style: TextStyle(
                  color: Colors.black.withAlpha(130),
                  fontSize: 18,
                ),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.delete, color: Colors.black, size: 40),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Text(
              'May21,2025',
              style: TextStyle(
                color: Colors.black.withAlpha(130),
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
