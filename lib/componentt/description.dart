import 'package:flutter/material.dart';

class Description extends StatefulWidget {
  const Description({super.key});

  @override
  State<Description> createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(70),
                  child: Image.asset(
                    'assets/kidimage.jpeg',
                    fit: BoxFit.cover,
                  ),
                ),
                const Text(
                  '  Ariya Pratap,9',
                  style: TextStyle(color: Colors.red),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 80),
              child: ClipRRect(
                  child: Image.asset(
                'assets/drawing.jpeg',
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              )),
            ),
            const Text(
              'Witness The unforgetteble:Behind the mesmerising dance that stole and= ',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: Colors.white),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  'House-Pegasus                                             ',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                IconButton(
                  icon: Icon(
                    Icons.favorite,
                    color: colors,
                  ),
                  onPressed: () {
                    counter++;
                    if (colors == Colors.black) {
                      colors = Colors.red;
                    }
                    setState(() {});
                  },
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'School-Mountain high                                      ',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                Text(counter.toString() + 'update',
                    style: TextStyle(color: Colors.white, fontSize: 16))
              ],
            )
          ],
        ),
      ),
    );
  }
}

int counter = 0;
Color colors = Colors.black;
