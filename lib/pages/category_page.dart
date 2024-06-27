import 'package:flutter/material.dart';
class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          title: const Text(
            'Our Cources',
            style: TextStyle(color: Colors.white),
          ),
          //backgroundColor: kBlue,//
        ),
        body: Column(
          children: [
            CourceContainer(
                image: 'assets/images/ai.png',
                courcename: 'Artificial intelligence',
                authorname: 'Moses Adongo'),
            CourceContainer(
                image: 'assets/images/web.png',
                courcename: 'Web development ',
                authorname: 'Moses '),
            CourceContainer(
                image: 'assets/images/cyber.png',
                courcename: 'Cybersecurity',
                authorname: 'Muneer Hasan'),
            CourceContainer(
                image: 'assets/images/app.png',
                courcename: 'App development ',
                authorname: 'Muneer Hasan'),
            CourceContainer(
                image: 'assets/images/st.png',
                courcename: 'Software testing ',
                authorname: 'Muneer Hasan'),
            CourceContainer(
                image: 'assets/images/ml.png',
                courcename: 'Machine learning  ',
                authorname: 'Muneer Hasan'),
          ],
        ));
  }
}

class CourceContainer extends StatefulWidget {
  String image, courcename, authorname;
  CourceContainer(
      {required this.image,
      required this.courcename,
      required this.authorname});

  @override
  State<CourceContainer> createState() => _CourceContainerState();
}

class _CourceContainerState extends State<CourceContainer> {
  double _currentSliderValue = 30.0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 2),
      child: Card(
        elevation: 10,
        child: Row(
          children: [
            Image(
              image: AssetImage(widget.image),
              width: MediaQuery.sizeOf(context).width * 0.4,
            ),
            Column(
              children: [
                Text(
                  widget.courcename,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Row(
                  children: [const Icon(Icons.person), Text(widget.authorname)],
                ),
                Row(
                  children: [
                    Slider(
                      activeColor: Colors.yellow,
                      min: 0,
                      max: 100,
                      value: _currentSliderValue,
                      onChanged: (value) {
                        setState(() {
                          _currentSliderValue = value;
                        });
                      },
                    ),
                    const Text('1/25')
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
