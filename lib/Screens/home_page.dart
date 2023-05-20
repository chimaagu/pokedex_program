import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe8e8e8),
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "images/logo.png",
              height: 30,
            ),
            const SizedBox(width: 16),
            Text(
              "POKEDEX",
              style: GoogleFonts.notoSans(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: const Color(0xff161A33),
              ),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          DefaultTabController(
            length: 2,
            child: Container(
              color: Colors.white,
              child: TabBar(
                labelStyle: GoogleFonts.notoSans(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
                labelColor: const Color(0xff161A33),
                tabs: const [
                  Tab(text: "All Pokemons"),
                  Tab(text: "Favourites")
                ],
              ),
            ),
          ),
          Expanded(
            child: GridView(
              padding: const EdgeInsets.all(15),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 14,
                  mainAxisSpacing: 14,
                  mainAxisExtent: 186),
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 5),
                  // height: 186,
                  width: 110,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: double.maxFinite,
                        color: const Color(0xfff3f9ef),
                        child: Image.asset("images/bulb.png"),
                      ),
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          "#001",
                          style: GoogleFonts.notoSans(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff6B6B6B),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          "Bulbasaur",
                          style: GoogleFonts.notoSans(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          "Grass, Poison",
                          style: GoogleFonts.notoSans(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff6B6B6B),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 186,
                  width: 110,
                  color: Colors.white,
                ),
                Container(
                  height: 186,
                  width: 110,
                  color: Colors.white,
                ),
                Container(
                  height: 186,
                  width: 110,
                  color: Colors.white,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
