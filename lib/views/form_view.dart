import 'package:flutter/material.dart';
import 'package:sufree/views/home_view.dart';

class FormView extends StatefulWidget {
  const FormView({super.key});

  @override
  State<FormView> createState() => _FormViewState();
}

class _FormViewState extends State<FormView> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    _controller.selection = TextSelection.fromPosition(
      const TextPosition(offset: 0), //カーソルの位置を0にすることでカーソルの位置を頭に設定
    );

    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('心の底からはきだしてみよう', style: TextStyle(fontSize: 16)),
            SizedBox(height: 8),
            Container(
              height: 500,
              child: TextField(
                controller: _controller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
                // 親Widgetに合わせて高さを変える
                expands: true,
                minLines: null,
                maxLines: null,
                textAlignVertical: TextAlignVertical.top,
              ),
            ),
            SizedBox(height: 8),
            ElevatedButton(
                onPressed: () => Navigator.pop(context), child: Text('成仏する'))
          ],
        ),
      ),
    );
  }
}
