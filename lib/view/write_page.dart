import 'package:flutter/material.dart';
import 'package:week9/const/colors.dart';
import 'package:week9/const/text.dart';

class WritePage extends StatefulWidget {
  const WritePage({super.key});

  @override
  State<WritePage> createState() => _WritePageState();
}

class _WritePageState extends State<WritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _AppBar(),
      body: _Body(),
    );
  }
}

class _AppBar extends StatelessWidget implements PreferredSizeWidget {
  const _AppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      backgroundColor: WHITE,
      iconTheme: const IconThemeData(color: GREY900),
      title: Text(
        "익명 보내기",
        style: const TextStyle(
          fontSize: 17,
          fontWeight: W900,
          color: GREY900,
        ),
      ),
      centerTitle: true,
      leading: IconButton(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.arrow_back_ios_rounded, size: 18),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _Body extends StatelessWidget {
  _Body({super.key});

  final TextEditingController _contentCtrl = TextEditingController();
  final FocusNode _contentFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 32),
      children: [
        TextFormField(
          controller: _contentCtrl,
          focusNode: _contentFocusNode,
          maxLines: 10,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(24),
              borderSide: const BorderSide(color: GREY900),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(24),
              borderSide: const BorderSide(color: GREY900),
            ),
          ),
          cursorColor: GREY900,
        ),
        const SizedBox(height: 12),
        GestureDetector(
          onTap: () {},
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(
              vertical: 20,
            ),
            decoration: BoxDecoration(
              color: GREY900,
              borderRadius: BorderRadius.circular(28),
            ),
            child: const Text(
              "전송하기",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: WHITE,
                fontSize: 16,
                fontWeight: W900,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
