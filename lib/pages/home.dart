import 'package:flutter/material.dart';
import 'package:ejemplo_splash/styles/colors.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home> {
  late PageController _pageController;
  int activePage = 0;
  int _currentIndex = 0;

  List<String> images = [
    "assets/images/perro1.jpg",
    "assets/images/gato1.jpg",
    "assets/images/huron1.jpg",
  ];

  List<String> images2 = [
    "assets/images/cotorro1.jpg",
    "assets/images/gallina1.jpg",
    "assets/images/gato1.jpg",
    "assets/images/huron1.jpg",
    "assets/images/perro1.jpg",
    "assets/images/tortuga1.jpg",
    "assets/images/pez1.jpg",
    "assets/images/hamster1.jpg",
    "assets/images/tarantula1.jpg",
  ];

  List<String> listaDes = [
    "Atendemos a toda ave que requiera de nuestra ayuda.",
    "Tener sano a todo tu gallinero es nuestra prioridad.",
    "Todo felino es bienvenido.",
    "Todo huron debe ser tratado con respeto.",
    "El mejor amigo del hombre, es siempre nuestra clientela mas popular.",
    "Nos encargaremos de que tus tortugas vivan por mucho tiempo.",
    "Ofrecemos todo recurso para tener de mascota algun pez, o criarlos para el consumo.",
    "Tus hamsters viviran todo un paraiso si nos lo dejas a nuestra manos.",
    "¡Somos expertos en el cuidado de tarantulas!",
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: null,
        backgroundColor: ColorsSelect.txtBoMe,
        automaticallyImplyLeading: false,

        title: Container(
          child: Row(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal:6.5)
              ),
              const Text('Home'),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal:110.5)
              ),
              Image.asset(
                'assets/images/splash.png',
                height: 40,
              ),
            ],
          )
        ),
      ),
      
      // Cuerpo
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                height: 200.0,
                width: 300.0,
                child: Column(
                  children: [
                    CarouselSlider(
                      options: CarouselOptions(
                        autoPlay: true,
                        // enlargeCenterPage: true,
                        //scrollDirection: Axis.vertical,
                        onPageChanged: (index, reason) {
                          setState(
                            () {
                              _currentIndex = index;
                            },
                          );
                        },
                      ),
                      items: images
                          .map(
                            (item) => Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Card(
                                margin: const EdgeInsets.only(
                                  top: 10.0,
                                  bottom: 10.0,
                                ),
                                elevation: 3.0,
                                shadowColor: Colors.redAccent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                  child: Stack(
                                    children: <Widget>[
                                      Image.asset(
                                        item,
                                        fit: BoxFit.cover,
                                        width: double.infinity,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          )
                          .toList(),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: images.map((urlOfItem) {
                        int index = images.indexOf(urlOfItem);
                        return Container(
                          width: 10.0,
                          height: 10.0,
                          margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: _currentIndex == index
                                ? const Color.fromRGBO(0, 0, 0, 0.8)
                                : const Color.fromRGBO(0, 0, 0, 0.3),
                          ),
                        );
                      }).toList(),
                    )
                  ],
                ),
              ),

              Container(
                // decoration: const BoxDecoration(color: ColorsSelect.txtBoMe),
                margin: const EdgeInsets.only(left: 30, right: 30, top: 20, bottom: 20),
                height: 65,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      width: 50,
                      height: 50,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/images/dog.jpg'),
                          fit: BoxFit.fill
                        )
                      ),
                      margin: const EdgeInsets.only(left: 10, right: 10),
                    ),

                    Container(
                      width: 50,
                      height: 50,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/images/dog.jpg'),
                          fit: BoxFit.fill
                        )
                      ),
                      margin: const EdgeInsets.only(left: 10, right: 10),
                    ),

                    Container(
                      width: 50,
                      height: 50,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/images/dog.jpg'),
                          fit: BoxFit.fill
                        )
                      ),
                      margin: const EdgeInsets.only(left: 10, right: 10),
                    ),

                    Container(
                      width: 50,
                      height: 50,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/images/dog.jpg'),
                          fit: BoxFit.fill
                        )
                      ),
                      margin: const EdgeInsets.only(left: 10, right: 10),
                    ),

                    Container(
                      width: 50,
                      height: 50,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/images/dog.jpg'),
                          fit: BoxFit.fill
                        )
                      ),
                      margin: const EdgeInsets.only(left: 10, right: 10),
                    ),

                    Container(
                      width: 50,
                      height: 50,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/images/dog.jpg'),
                          fit: BoxFit.fill
                        )
                      ),
                      margin: const EdgeInsets.only(left: 10, right: 10),
                    ),
                  ],
                ),
              ),

              // GridView
              Container(
                  margin: const EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 10),
                  // decoration: const BoxDecoration(color: ColorsSelect.txtBoMe),
                  child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                    mainAxisExtent: 100,
                    // childAspectRatio: MediaQuery.of(context).size.width / (MediaQuery.of(context).size.height / 2),
                  ),
                  itemCount: images2.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap:() {
                        showDialog<String>(
                          context: context,
                          builder: (BuildContext context) =>  AlertDialog(
                            insetPadding: const EdgeInsets.only(left: 30, right: 30, top: 150, bottom: 150),
                            content: Container(
                              child: Column(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.symmetric(vertical:5)
                                  ),
                                  Image.asset(
                                    images2[index],
                                    height: 100,
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.symmetric(vertical:20)
                                  ),
                                  Text(listaDes[index]),
                                ],
                              )
                            ), 
                          ),
                        );
                      },
                      child: Image.asset(
                        images2[index],
                        fit: BoxFit.cover,
                      )
                    );
                  },
                ) 
              ),

            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Tareas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Casa',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Configuraciones',
          ),
        ],
      ),
    );
  }
}