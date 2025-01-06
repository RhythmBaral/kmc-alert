import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Container(
            margin: const EdgeInsets.all(0),
            child: Flex(
              direction: Axis.horizontal,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "assets/images/nepal_gov.png",
                  width: 50,
                ),
                const Text(
                  "Kathmandu Metropolitian City",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.red,
                    fontFamily: "f1",
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Image.asset(
                  "assets/images/kmc_logo.png",
                  width: 50,
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                _buildPoliceModule(),
                GridView.count(
                  shrinkWrap: true,
                  primary: false,
                  padding: const EdgeInsets.all(10),
                  crossAxisSpacing: 10,
                  crossAxisCount: 3,
                  children: [
                    _buildbutton("assets/images/ambulance.png", "ambulance"),
                    _buildbutton(
                        "assets/images/firefighter.png", "firefighter"),
                    _buildbutton("assets/images/policeman.png", "policeman"),
                    _buildbutton("assets/images/sewage.png", "sewage"),
                    _buildbutton("assets/images/garbage.png", "garbage"),
                    _buildbutton("assets/images/noparking.png", "noparking"),
                  ],
                ),
              ],
            ),
          ),
        ));
  }

  Widget _buildbutton(String imagepath, String label) {
    return GestureDetector(
      onTap: () {
        print("print");
      },
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black26,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                imagepath,
                width: 200,
                height: 100,
                fit: BoxFit.contain,
                errorBuilder: (context, error, stackTrace) {
                  return const Icon(Icons.error, color: Colors.red, size: 50);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPoliceModule() {
    return Container(
      padding: const EdgeInsets.all(10),
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black26,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Image.asset("assets/images/policeman.png"),
          const SizedBox(width: 10),
          Column(
            children: [
              Text(
                "Incase of any inquiry and any needs \nHotline number 1144, KMC Police",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
                overflow: TextOverflow.ellipsis,
              ),
              new SizedBox(
                width: 100,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    padding: const EdgeInsets.symmetric(vertical: 10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/callicon.png",
                        width: 20,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "CALL",
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
