import 'package:flutter/material.dart';
import 'package:kelas_flutter/model/book_model.dart';

class DetailBook extends StatelessWidget {
  const DetailBook({super.key, required this.data});
  final BookModel data;
  @override
  Widget build(BuildContext context) {
    final sizeHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: sizeHeight * 0.3,
            decoration: const BoxDecoration(
                color: Color(
                  0xff171B36,
                ),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10))),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: const Icon(Icons.arrow_back,
                              color: Colors.white)),
                      const Icon(Icons.menu, color: Colors.white),
                    ],
                  ),
                  SizedBox(
                    height: 120,
                    child: Row(
                      children: [
                        Expanded(
                          child: Image.asset(
                            data.gambarBuku,
                            height: 120,
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                      child: Text(
                                    data.namaBuku,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  )),
                                ],
                              ),
                              const Row(
                                children: [
                                  Expanded(
                                      child: Text(
                                    "The psychology of money is the study of our behavior with money. Success with money isn't about knowledge, IQ or how good you are at math. It's about behavior, and everyone is prone to certain behaviors over others.",
                                    style: TextStyle(
                                        fontSize: 8, color: Colors.white),
                                  )),
                                ],
                              ),
                              Row(
                                children: [
                                  starWidget(),
                                  starWidget(),
                                  starWidget(),
                                  starWidget(),
                                  starWidget(),
                                  const Text(
                                    "(5.0)",
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Icon starWidget() {
    return const Icon(
      Icons.star,
      color: Colors.yellow,
    );
  }
}
