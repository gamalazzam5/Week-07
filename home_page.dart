import 'package:flutter/material.dart';

import 'custom_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back,
          size: 30,
        ),
        title: const Text(
          "Details",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Icon(
              Icons.favorite,
              color: Colors.red,
              size: 30,
            ),
          )
        ],
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            Image.asset(
              "assets/chair.png",
              height: 300,
              width: double.infinity,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Chair",
                  style: TextStyle(
                      color: Colors.black26,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "\$200",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                )
              ],
            ),
            const Text(
              "Minimalist Style with pillow",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
            ),
            const Text(
              "hallo wie geht's hier konnen sie sich wohlfuhlen vergessen sie nicht die wochentlichen Angebote und Rabatte mit freundlichen Grussen , die Geschaftsleitung hallo wie geht's hier konnen sie sich wohlfuhlen vergessen sie nicht die wochentlichen Angebote und Rabatte mit freundlichen Grussen , die Geschaftsleitung",
              style: TextStyle(color: Colors.black, fontSize: 17),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Row(
                  children: [
                    CustomContainer(
                      color: Colors.blue,
                    ),
                    CustomContainer(
                      color: Colors.red,
                    ),
                    CustomContainer(
                      color: Colors.lightGreen,
                    ),
                    CustomContainer(
                      color: Colors.orangeAccent,
                    )
                  ],
                ),
                SizedBox(
                  width: 190,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(width: 1.5)),
                    child: const ListTile(
                      leading: Icon(Icons.remove, size: 30),
                      title: Center(
                        child: Text(
                          "2",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24),
                        ),
                      ),
                      trailing: Icon(
                        Icons.add,
                        size: 30,
                      ),
                    ),
                  ),
                ),
              ],
            ),const SizedBox(height: 10,),
            Row(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size(80, 60),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      elevation: 5,
                      backgroundColor: Colors.white),
                  onPressed: () {},
                  child: const Icon(
                    Icons.favorite_border,
                    color: Colors.redAccent,
                    size: 35,
                  ),
                ),
                const SizedBox(width: 5,),
                SizedBox(
                  height: 60,width: 310,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),),
                      onPressed: (){}, child: const Text("Add to cart",style: TextStyle(color: Colors.white,fontSize: 25),)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

