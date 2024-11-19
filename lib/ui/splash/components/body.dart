import 'package:floapp/consts.dart';
import 'package:floapp/ui/home/catalogue_screen.dart';
import 'package:floapp/ui/splash/components/splash_content.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({super.key});

//builder untuk komponen" yang diteruskan

  @override
  //untuk nyimpen semua state/perubahan dalam widget
  State<Body> createState() => _BodyState();
}
  

class _BodyState extends State<Body> {
  int currentPage = 0;
  final PageController _pageController = PageController();
  // List<String> product = List.generate(
  // //   // for inline function in dart 
  //   10, (index) => "Product ${index + 1}"
  // );

  List<Map<String, String>> splashData  = [
    {
      "text": "Welcome to Clothlon, Let's Shop!",
      "image": "assets/images/splash_screen1 (2).png"
    },
    {
      "text": "Find all the types of clothing you need",
      "image": "assets/images/splash_screen1 (2).png"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded( 
              flex: 8,
              child: SizedBox(
                width: double.infinity,
                // tampilan halaman untk menangani slide
                child: PageView.builder(
                  controller: _pageController,
                  //buat ngitung index, muncul berapa slide: atur disini
                  onPageChanged: (value) {
                    // metode keadaan awal untuk perilaku statefulWidget
                    setState(() {
                      currentPage = value;
                    });
                  },
                  itemCount: splashData.length,
                  itemBuilder: (context, index)=> SplashContent(
                    text: splashData[index]["text"]!,
                    image: splashData[index]["image"]!)
                  ) 
                ),
              ),
              Expanded( // membuat widget melebar/memanjang agar memenuhi ruang yg kosong
                child: 
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:
                    List.generate(
                      splashData.length,
                      (index) => _dotsIndicator(index: index))
              )
              ),
              const Padding(
                padding: EdgeInsets.all(10.0)
                ),
              const SizedBox(
                width: double.infinity,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: primaryColor,
                ),
                onPressed: () {
                    if(currentPage == splashData.length - 1 ){
                      //length panjangnya atau banyaknya data
                      // kode yang digunakan untuk berpindah antar halaman
                      Navigator.push(
                        context, 
                        MaterialPageRoute(
                        builder: (context) => const CatalogueScreen())
                      );
                      //context halaman skrg
                    } else{
                      currentPage + 1;
                      _pageController.animateToPage(
                        currentPage + 1,
                        duration:animationDuration,
                        curve: Curves.ease);
                    }
                  },
                  child: Text(
                    currentPage == splashData.length - 1 ? "Start" : "Next",
                    style: const TextStyle(
                      color: Colors.white
                    ),
                  )   
                )
          ],
        ), 
    //biar ga ketutupan sama sistem diatas hp, kaya batre, SafeArea
    ));
  }

 // kode untuk logika dots indicator
  AnimatedContainer _dotsIndicator({required int index}) {
    return AnimatedContainer(
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: currentPage == index ? primaryColor : secondaryColor,
      ),
      width: currentPage == index ? 20 : 10,
      height: 10,
      duration: animationDuration,
    );
  }
}