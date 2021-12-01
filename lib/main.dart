import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: const TextTheme(
            bodyText2: TextStyle(
                color: Color.fromRGBO(26, 30, 64, 1),
                fontSize: 26,
                fontFamily: 'Poppins')),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const Color mainColor = Color.fromRGBO(73, 105, 255, 1);
  static const Color secondaryColor = Color.fromRGBO(95, 205, 241, 1);
  late double w;
  late double h;
  @override
  void initState() {
    super.initState();
  }

  Widget _buildCon(String img, Color imgColor, String name, String dd) {
    return Container(
      height: 180,
      width: 270,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(26),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(
                  0.1,
                ),
                spreadRadius: 4,
                blurRadius: 20)
          ]),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18), color: imgColor),
                  child: Image.asset('assets/' + img + '.png')),
              SizedBox(width: 12),
              Text(name, style: const TextStyle(fontWeight: FontWeight.w600)),
              Text("/" + dd, style: TextStyle(color: Colors.grey[600])),
            ]),
            SizedBox(height: 10),
            Text(
              "Portofolio",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[600]),
            ),
            Row(
              children: const [
                Text("\$145,250",
                    style: TextStyle(fontWeight: FontWeight.w600)),
                Spacer(),
                Text("+20%",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: mainColor)),
                SizedBox(width: 14)
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(left: 30),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40),
            Row(
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    "Welcome",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[600]),
                  ),
                  const Text("Khalil Kt",
                      style: TextStyle(fontWeight: FontWeight.w600)),
                ]),
                Spacer(),
                Container(
                  height: 62,
                  width: 62,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: Color.fromARGB(255, 91, 203, 239),
                  ),
                  child: Icon(Icons.account_circle_sharp),
                ),
                SizedBox(
                  width: 30,
                )
              ],
            ),
            SizedBox(height: 20),
            Container(
              width: 360,
              decoration: BoxDecoration(
                  color: mainColor, borderRadius: BorderRadius.circular(42)),
              height: 240,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('Balance',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            color: Colors.white)),
                    Text('\$450,933',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 40,
                            color: Colors.white)),
                    Text('Monthly profit',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            color: Colors.white)),
                    Text('\$12,484',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 30,
                            color: Colors.white)),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            const Text(
              'My Portofolio',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
                child: Row(
                  children: [
                    _buildCon('bitC', Color.fromARGB(255, 87, 203, 239), 'BTC',
                        'BIDR'),
                    SizedBox(width: 24),
                    _buildCon('ethC', Color.fromARGB(255, 72, 104, 255), 'ETH',
                        'BIDR')
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            const Text(
              'Ranking List',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 20),
            Container(
                height: 250,
                margin: const EdgeInsets.symmetric(horizontal: 12),
                width: 350,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 14, vertical: 14),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            color: const Color.fromARGB(255, 95, 90, 251)),
                        child: Image.asset('assets/dodgeC.png')),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "DODGE",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "today",
                          style:
                              TextStyle(fontSize: 20, color: Colors.grey[600]),
                        ),
                        SizedBox(
                          height: 12,
                        )
                      ],
                    ),
                    Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "\$0,89",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "\$0,4(47%)",
                          style:
                              TextStyle(fontSize: 14, color: Colors.grey[600]),
                        ),
                        SizedBox(
                          height: 12,
                        )
                      ],
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(36),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(
                          0.1,
                        ),
                        spreadRadius: 4,
                        blurRadius: 20)
                  ],
                ))
          ],
        ),
      ),
    ));
  }
}
