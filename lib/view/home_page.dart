import 'package:flutter/material.dart';
import 'package:week9/const/colors.dart';
import 'package:week9/const/text.dart';
import 'package:week9/view/write_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _AppBar(),
      body: _Body(),
      floatingActionButton: _FloatingButton(),
    );
  }
}

class _FloatingButton extends StatelessWidget {
  const _FloatingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: GREY900,
      child: const Icon(Icons.add),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => WritePage(),
          ),
        );
      },
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
        "익명 리스트",
        style: const TextStyle(
          fontSize: 17,
          fontWeight: W900,
          color: GREY900,
        ),
      ),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _Body extends StatelessWidget {
  const _Body({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 32),
      itemBuilder: (context, index) {
        return _AskCard();
      },
    );
  }
}

class _AskCard extends StatelessWidget {
  const _AskCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 172,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFFDBDBDB),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: const Color(0x0F000000).withOpacity(0.15),
            blurRadius: 6,
            spreadRadius: 2,
            offset: const Offset(2, 6),
          ),
        ],
        color: WHITE,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 24,
      ),
      margin: const EdgeInsets.only(
        bottom: 20,
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "안녕하세요",
              style: TextStyle(
                fontSize: 16,
                fontWeight: W600,
                color: GREY900,
              ),
            ),
          ),
          Spacer(),
          Align(
            alignment: Alignment.bottomRight,
            child: Text(
              "2023년 5월 31일",
              style: TextStyle(
                fontSize: 14,
                fontWeight: W500,
                color: Color(0xFF818181),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
