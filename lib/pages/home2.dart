import 'package:flutter/material.dart';
import 'package:ejemplo_splash/styles/colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ejemplo_splash/Painters/BottomNavPaint.dart';
import 'package:ejemplo_splash/services/imagenesCarruselService.dart';
import 'package:ejemplo_splash/services/mascotasService.dart';
import 'package:ejemplo_splash/services/productosService.dart';
import 'dart:async';

class Home2 extends StatefulWidget {
  const Home2({Key? key}) : super(key: key);

  @override
  State<Home2> createState() => _Home2();
  
}

class _Home2 extends State<Home2> {
  late PageController _pageController;
  int activePage = 0;
  int _currentIndex = 0;
  String? textoInit1 = "Calle 10 9";
  String? textoInit2 = "Entrega a domicilio";

  List<String> images = [
    "assets/images/perro1.jpg",
    "assets/images/gato1.jpg",
    "assets/images/huron1.jpg",
  ];
  
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        // elevation: null,
        
        backgroundColor: ColorsSelect.txtBoMe,
        
        leading: TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Icon(
            FontAwesomeIcons.arrowLeft,
            color: ColorsSelect.paginatorNext,
          ),
        ),

        title: const Text(
          "Tienda",
        ),

        iconTheme: const IconThemeData(color: ColorsSelect.btnBackgroundBo1),
        actions: [

          IconButton(
            padding: const EdgeInsets.only(left: 60, right: 0),
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_bag_outlined
            ),
          ),

          IconButton(
            padding: const EdgeInsets.only(left: 15, right: 0),
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_none
            ),
          ),

          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.manage_accounts_outlined
            ),
          )
        ],
        
      ),
      
      // Cuerpo
      body: SingleChildScrollView(  
        child: Column(
          children: [
            Container(
              // margin: const EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Container(
                    width: 140,
                    height: 97,
                    child: Column(
                      children: [
                        // Texto "Hola Juan"
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 10, left: 10),
                              child: const Text(
                                'Hola',
                                style: TextStyle(
                                    fontSize: 23,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),

                            Container(
                              margin: const EdgeInsets.only(top: 10, left: 5),
                              child: const Text(
                                'Juan',
                                style: TextStyle(
                                    fontSize: 23,
                                    fontWeight: FontWeight.bold,
                                    color: ColorsSelect.btnBackgroundBo2),
                              ),
                            ),

                            Container(
                              margin: const EdgeInsets.only(top: 10),
                              child: const Text(
                                ',',
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),

                        // Fila de imagen con lista desplegable
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(left: 10, top: 10),
                              child: Row(
                                children: [
                                  Container(
                                    width: 35,
                                    height: 35,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('assets/images/B3.png'),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 5, top: 10),
                              child: Stack(
                                children: [
                                  const Text(
                                    'Entregar ahora',
                                    style: TextStyle(
                                      fontSize: 9,
                                      color: ColorsSelect.txtBoSubHe,
                                    ),
                                  ),                            
                                  Container(
                                    width: 80,
                                    child: DropdownButton<String>(
                                      icon: const Icon(Icons.keyboard_arrow_down),
                                      value: textoInit1,
                                      isExpanded: true,
                                      items: [
                                        'Calle 10 9',
                                        'Calle Luis Echeverria',
                                        'Calle Maria Jose',
                                        'Calle Barrio San Jacinto',
                                        'Calle Campamento CFE #1'
                                      ]
                                      .map<DropdownMenuItem<String>>(
                                        (value) => DropdownMenuItem(
                                          child: Text(
                                            value,
                                            style: const TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          value: value,
                                        )
                                      )
                                      .toList(),
                                      onChanged: (newValue) {
                                        setState(() {
                                          textoInit1 = newValue;
                                        });
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  
                  const SizedBox(width: 60),

                  Container(
                    width: 160,
                    height: 97,
                    child: Stack(
                      children: [
                         // Imagen hacia la derecha
                        Container(
                          margin: const EdgeInsets.only(left: 70),
                          child: const Image(
                            image: AssetImage('assets/images/B5.png'),
                            width: 80,
                            height: 50,
                          ),
                        ),
                         // lista desplegable
                        Container(
                          margin: const EdgeInsets.only(left: 5, top: 49),
                          width: 140,
                          child: DropdownButton<String>(
                            icon: const Icon(Icons.keyboard_arrow_down),
                            value: textoInit2,
                            isExpanded: true,
                            items: [
                              'Entrega a domicilio',
                              'Entrega presencial'
                            ]
                            .map<DropdownMenuItem<String>>((value) => DropdownMenuItem(
                              child: Text(
                                value,
                                style: const TextStyle(
                                  fontSize: 9,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              value: value,
                            ))
                            .toList(),
                            onChanged: (newValue) {
                              setState(() {
                                textoInit2 = newValue;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const Divider(
                height: 1,
                color: ColorsSelect.txtBoSubHe,
            ),

            Container(
              height: 615,
              width: size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 15, bottom: 5, top: 10),
                    child: const Text(
                      'Mis mascotas',
                      style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 15
                      ),
                    ),
                  ),
                  
                  // Fila de mascotas y boton de agregar
                  Container(
                    height: 75,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Stack(
                          children: [
                            Container(
                              width: 60,
                              height: 60,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage('assets/images/dog.jpg'),
                                  fit: BoxFit.fill
                                )
                              ),
                              margin: const EdgeInsets.only(left: 15, right: 10),
                            ),

                            Container(
                              padding: const EdgeInsets.only(left: 25, top: 62),
                              child: const Text(
                                'Mi perro',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 12
                                ),
                              ),
                            ),
                          ],
                        ),

                        Row(
                          children: [
                            IconButton(
                              padding: const EdgeInsets.only(bottom: 50),
                              onPressed: () {},
                              icon: const Icon(
                                Icons.add_circle,
                                size: 60,
                                color: ColorsSelect.btnTextBo1
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(bottom: 12.5, left: 15),
                              width: 65,
                              child: const Text(
                                'Agregar Mascota',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 12, color: ColorsSelect.btnTextBo1
                                ),
                              ),
                            ),
                          ],
                        )    
                      ],
                    ),
                  ),

                  // Dos cartas
                  Container(
                    margin: const EdgeInsets.only(bottom: 5, top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Card(
                          child: Column(
                            children: [
                              const Image(
                                width: 155,
                                height: 180,
                                image: AssetImage('assets/images/B5.png'),
                              ),
                              Container(
                                padding: const EdgeInsets.only(bottom: 15),
                                child: const Text(
                                  'PRODUCTOS',
                                  style: TextStyle(
                                    color: ColorsSelect.btnBackgroundBo2,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Card(
                          child: Column(
                            children: [
                              const Image(
                                width: 155,
                                height: 180,
                                image: AssetImage('assets/images/B1.png'),
                              ),
                              Container(
                                padding: const EdgeInsets.only(bottom: 15),
                                child: const Text(
                                  'SERVICIOS',
                                  style: TextStyle(
                                    color: ColorsSelect.btnBackgroundBo2,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),

                  // Barra de busqueda e icono
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 35,
                          width: 290,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(30)
                          ),
                          child: TextField(
                            textAlignVertical: TextAlignVertical.bottom,
                            onChanged: (text) {},
                            decoration: const InputDecoration(
                              focusColor: Colors.grey,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                                borderSide: BorderSide(
                                  color: Colors.black,
                                  width: 1
                                ),
                              ),
                              suffixIcon: Icon(
                                Icons.search,
                                size: 25,
                                color: Colors.grey,
                              ),
                              hintText: 'Buscar productos o servicios..',
                            ),
                          ),
                        ),

                        Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                            color: ColorsSelect.paginatorNext,
                            borderRadius: BorderRadius.circular(30)
                          ),
                          child: IconButton(
                            iconSize: 20,
                            color: Colors.white,
                            onPressed: () {},
                            icon: const Icon(Icons.tune),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Carrusel
                  Container(
                    padding: const EdgeInsets.only(left: 7.5),
                    height: 200.0,
                    width: 350.0,
                    child: FutureBuilder(
                      future: imagenesCarrusel(),
                      builder: (BuildContext context,AsyncSnapshot<List<String>> snapshot) {
                        if (snapshot.data != null) {
                          return Column(
                            children: [
                              CarouselSlider(
                                options: CarouselOptions(
                                  autoPlay: true,
                                  onPageChanged: (index, reason) {
                                    setState(() {
                                      _currentIndex = index;
                                    });
                                  },
                                ),
                                items: snapshot.data!.map((data) {
                                  return Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Card(
                                      margin: const EdgeInsets.only(
                                        top: 10.0,
                                        bottom: 10.0,
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),
                                      child: ClipRRect(
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(10.0),
                                        ),
                                        child: Stack(
                                          children: <Widget>[
                                            Image(
                                              image: NetworkImage(data),
                                              fit: BoxFit.cover,
                                              width: double.infinity,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                }).toList(),
                              ),
                            ],
                          );
                        }
                        else {
                          return Column(
                            children: [
                              CarouselSlider(
                                options: CarouselOptions(
                                  autoPlay: true,
                                  onPageChanged: (index, reason) {
                                    setState(() {
                                      _currentIndex = index;
                                    });
                                  },
                                ),
                                items: images.map(
                                  (item) => Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Card(
                                      margin: const EdgeInsets.only(
                                        top: 10.0,
                                        bottom: 10.0,
                                      ),
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
                                ).toList(),
                              ),
                            ],
                          );
                        }
                      }
                    )
                  ),
                ],
              ),
            ),

            const Divider(
                height: 1,
                color: ColorsSelect.txtBoSubHe,
            ),
          
            Container(
              height: 305,
              width: double.infinity,
              child: Column(
                children: [
                  // Fila de opciones 1
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const SizedBox(width: 20),
                      Container(
                        child: const Text(
                          'Productos cerca',
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                      const SizedBox(width: 10),

                      Container(
                        height: 50,
                        width: 195,
                        child: FutureBuilder(
                          builder: (context, AsyncSnapshot<List> snapshot) {
                            if (snapshot.data != null) {
                              return ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  Row(
                                    children:
                                      snapshot.data!
                                      .map(
                                        (data) => Container(
                                          height: 25,
                                          decoration: BoxDecoration(
                                            color: ColorsSelect.btnBackgroundBo2,
                                            borderRadius: BorderRadius.circular(5)
                                          ),
                                          padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
                                          child: Text(
                                            data,
                                            style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 11,
                                              color: Colors.white
                                            ),
                                          ),  
                                        )
                                      ).toList(),
                                    
                                  )    
                                ],
                              );
                            }
                            else {
                              return ListView(
                                scrollDirection: Axis.horizontal,
                                children: <Widget>[
                                  Row(
                                    children: [
                                      Container(
                                        height: 25,
                                        decoration: BoxDecoration(
                                          color: ColorsSelect.btnBackgroundBo2,
                                          borderRadius: BorderRadius.circular(5)
                                        ),
                                        padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
                                        child: const Text(
                                          'Alimento',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 11,
                                            color: Colors.white
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 5),
                                      Container(
                                        height: 25,
                                        padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
                                        child: const Text(
                                          'Accesorios',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 11,
                                            color: ColorsSelect.btnTextBo1
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 5),
                                      Container(
                                        height: 25,
                                        padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
                                        child: const Text(
                                          'Recompensas',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 11,
                                            color: ColorsSelect.btnTextBo1
                                          ),
                                        ),
                                      ),
                                    ],
                                  )    
                                ],
                              );
                            }
                          },
                          future: mascotas(),
                        ),
                      ),
                    ],
                  ),
                  
                  // Tres Productos
                  Container(
                    height: 250,
                    width: 320,
                    child: FutureBuilder(
                      future: productos(),
                      builder: (BuildContext context, AsyncSnapshot<List<Map<dynamic, dynamic>>> snapshot) {
                        if (snapshot.data != null) {
                          return ListView(
                            scrollDirection: Axis.horizontal,
                             children: <Widget>[
                              Row(
                                children: 
                                  snapshot.data!.map(
                                    (data) => _productosCards(
                                      data['urlImage'],
                                      data['description'],
                                      data['price'],
                                      data['name']
                                    )
                                  ).toList(),
                                 // SizedBox(width: 5),
                                    
                              )    
                            ],
                          );
                        }
                        return ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            Row(
                              children: [
                                Container(
                                  height: 240,
                                  width: 170,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5)
                                  ),
                                  padding: const EdgeInsets.only(left: 5, right: 5, top: 5),
                                  child: Stack(
                                    children: [
                                      Container(
                                        width: 155,
                                        height: 160,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                          image: const DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage('assets/images/comida1.jpg'),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.only(top: 170),
                                        child: const Text(
                                          'Tistabene',
                                          style: TextStyle(
                                            color: ColorsSelect.btnBackgroundBo2,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.only(top: 190),
                                        child: const Text(
                                          'Descripción',
                                          style: TextStyle(
                                            color: ColorsSelect.btnTextBo1,
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.only(top: 210),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: const [
                                            Text(
                                              '\$125',
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold
                                              )
                                            ),
                                            SizedBox(width: 30),
                                            Text(
                                              '10% Desc.',
                                              style: TextStyle(
                                                color: ColorsSelect.paginatorNext,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold
                                              )
                                            )
                                          ],
                                        ),
                                      ), 
                                    ],
                                  ),
                                ),

                                const SizedBox(width: 5),
                                Container(
                                  height: 240,
                                  width: 170,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5)
                                  ),
                                  padding: const EdgeInsets.only(left: 5, right: 5, top: 5),
                                  child: Stack(
                                    children: [
                                      Container(
                                        width: 155,
                                        height: 160,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                          image: const DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage('assets/images/comida2.jpg'),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.only(top: 170),
                                        child: const Text(
                                          'Van hesuem',
                                          style: TextStyle(
                                            color: ColorsSelect.btnBackgroundBo2,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.only(top: 190),
                                        child: const Text(
                                          'Descripción',
                                          style: TextStyle(
                                            color: ColorsSelect.btnTextBo1,
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.only(top: 210),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: const [
                                            Text(
                                              '\$140',
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold
                                              )
                                            ),
                                            SizedBox(width: 30),
                                            Text(
                                              '10% Desc.',
                                              style: TextStyle(
                                                color: ColorsSelect.paginatorNext,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold
                                              )
                                            )
                                          ],
                                        ),
                                      ), 
                                    ],
                                  ),
                                ),

                                const SizedBox(width: 5),
                                Container(
                                  height: 240,
                                  width: 170,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5)
                                  ),
                                  padding: const EdgeInsets.only(left: 5, right: 5, top: 5),
                                  child: Stack(
                                    children: [
                                      Container(
                                        width: 155,
                                        height: 160,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                          image: const DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage('assets/images/comida3.jpg'),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.only(top: 170),
                                        child: const Text(
                                          'Magnum opus',
                                          style: TextStyle(
                                            color: ColorsSelect.btnBackgroundBo2,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.only(top: 190),
                                        child: const Text(
                                          'Descripción',
                                          style: TextStyle(
                                            color: ColorsSelect.btnTextBo1,
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.only(top: 210),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: const [
                                            Text(
                                              '\$100',
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold
                                              )
                                            ),
                                            SizedBox(width: 30),
                                            Text(
                                              '10% Desc.',
                                              style: TextStyle(
                                                color: ColorsSelect.paginatorNext,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold
                                              )
                                            )
                                          ],
                                        ),
                                      ), 
                                    ],
                                  ),
                                ),
                              ],
                            )    
                          ],
                        );
                      }
                    ),
                  ),
                ],
              ),
            ),

            const Divider(
                height: 1,
                color: ColorsSelect.txtBoSubHe,
            ),

            Container(
              height: 305,
              width: double.infinity,
              child: Column(
                children: [
                  // Fila de opciones 2
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const SizedBox(width: 20),
                      Container(
                        child: const Text(
                          'Servicios cerca',
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                      const SizedBox(width: 10),

                      Container(
                        height: 50,
                        width: 195,
                        child: FutureBuilder(
                          builder: (context, AsyncSnapshot<List> snapshot) {
                            if (snapshot.data != null) {
                              return ListView(
                                scrollDirection: Axis.horizontal,
                                children: <Widget>[
                                  Row(
                                    children: 
                                      snapshot.data!.map(
                                        (data) => Container(
                                          height: 25,
                                          decoration: BoxDecoration(
                                            color: ColorsSelect.txtBoMe,
                                            borderRadius: BorderRadius.circular(5)
                                          ),
                                          padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
                                          child: Text(
                                            data,
                                            style:const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 11,
                                              color: Colors.white
                                            ),
                                          ),  
                                        )
                                      ).toList(),
                                  )    
                                ],
                              );
                            }
                            else {
                              return ListView(
                                scrollDirection: Axis.horizontal,
                                children: <Widget>[
                                  Row(
                                    children: [
                                      Container(
                                        height: 25,
                                        decoration: BoxDecoration(
                                          color: ColorsSelect.txtBoMe,
                                          borderRadius: BorderRadius.circular(5)
                                        ),
                                        padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
                                        child: const Text(
                                          'Alimento',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 11,
                                            color: Colors.white
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 5),
                                      Container(
                                        height: 25,
                                        padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
                                        child: const Text(
                                          'Accesorios',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 11,
                                            color: ColorsSelect.btnTextBo1
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 5),
                                      Container(
                                        height: 25,
                                        padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
                                        child: const Text(
                                          'Recompensas',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 11,
                                            color: ColorsSelect.btnTextBo1
                                          ),
                                        ),
                                      ),
                                    ],
                                  )    
                                ],
                              );
                            }
                          },
                          future: mascotas(),
                        ),
                      ),
                    ],
                  ),
                  
                  // Tres Servicios
                  Container(
                    height: 250,
                    width: 320,
                    child: FutureBuilder(
                      future: productos(),
                      builder: (BuildContext context, AsyncSnapshot<List<Map<dynamic, dynamic>>> snapshot) {
                        if (snapshot.data != null) {
                          return ListView(
                            scrollDirection: Axis.horizontal,
                             children: <Widget>[
                              Row(
                                children: 
                                  snapshot.data!.map(
                                    (data) => _productosCards(
                                      data['urlImage'],
                                      data['description'],
                                      data['price'],
                                      data['name']
                                    )
                                  ).toList(),
                                  //const SizedBox(width: 5),
                                  
                              )    
                            ],
                          );
                        }
                        return ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            Row(
                              children: [
                                Container(
                                  height: 240,
                                  width: 170,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5)
                                  ),
                                  padding: const EdgeInsets.only(left: 5, right: 5, top: 5),
                                  child: Stack(
                                    children: [
                                      Container(
                                        width: 155,
                                        height: 160,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                          image: const DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage('assets/images/servicio1.jpg'),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.only(top: 170),
                                        child: const Text(
                                          'Tistabene',
                                          style: TextStyle(
                                            color: ColorsSelect.btnBackgroundBo2,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.only(top: 190),
                                        child: const Text(
                                          'Descripción',
                                          style: TextStyle(
                                            color: ColorsSelect.btnTextBo1,
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.only(top: 210),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: const [
                                            Text(
                                              '\$125',
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold
                                              )
                                            ),
                                            SizedBox(width: 30),
                                            Text(
                                              '10% Desc.',
                                              style: TextStyle(
                                                color: ColorsSelect.paginatorNext,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold
                                              )
                                            )
                                          ],
                                        ),
                                      ), 
                                    ],
                                  ),
                                ),

                                const SizedBox(width: 5),
                                Container(
                                  height: 240,
                                  width: 170,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5)
                                  ),
                                  padding: const EdgeInsets.only(left: 5, right: 5, top: 5),
                                  child: Stack(
                                    children: [
                                      Container(
                                        width: 155,
                                        height: 160,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                          image: const DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage('assets/images/servicio2.jpg'),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.only(top: 170),
                                        child: const Text(
                                          'Van hesuem',
                                          style: TextStyle(
                                            color: ColorsSelect.btnBackgroundBo2,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.only(top: 190),
                                        child: const Text(
                                          'Descripción',
                                          style: TextStyle(
                                            color: ColorsSelect.btnTextBo1,
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.only(top: 210),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: const [
                                            Text(
                                              '\$140',
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold
                                              )
                                            ),
                                            SizedBox(width: 30),
                                            Text(
                                              '10% Desc.',
                                              style: TextStyle(
                                                color: ColorsSelect.paginatorNext,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold
                                              )
                                            )
                                          ],
                                        ),
                                      ), 
                                    ],
                                  ),
                                ),

                                const SizedBox(width: 5),
                                Container(
                                  height: 240,
                                  width: 170,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5)
                                  ),
                                  padding: const EdgeInsets.only(left: 5, right: 5, top: 5),
                                  child: Stack(
                                    children: [
                                      Container(
                                        width: 155,
                                        height: 160,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                          image: const DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage('assets/images/servicio3.jpg'),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.only(top: 170),
                                        child: const Text(
                                          'Magnum opus',
                                          style: TextStyle(
                                            color: ColorsSelect.btnBackgroundBo2,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.only(top: 190),
                                        child: const Text(
                                          'Descripción',
                                          style: TextStyle(
                                            color: ColorsSelect.btnTextBo1,
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.only(top: 210),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: const [
                                            Text(
                                              '\$100',
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold
                                              )
                                            ),
                                            SizedBox(width: 30),
                                            Text(
                                              '10% Desc.',
                                              style: TextStyle(
                                                color: ColorsSelect.paginatorNext,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold
                                              )
                                            )
                                          ],
                                        ),
                                      ), 
                                    ],
                                  ),
                                ),
                              ],
                            )    
                          ],
                        );
                      }
                    ),
                  ),       
                ],
              ),
            ),       
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 80,
        child: Stack(
          children: [
            CustomPaint(
              size: const Size.fromHeight(80),
              painter: BottomNavPainter(),
            ),
            Container(
              margin: const EdgeInsets.only(left: 10, right: 10),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      print("HOME");
                    },
                    icon: const Icon(
                      Icons.home,
                      size: 35,
                      color: Colors.white,
                    ),
                  ),

                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.assignment,
                        size: 35, color: Colors.white),
                  ),

                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.pets, size: 35, color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _productosCards(String imagen, String descripcion, double precio, String nombre) {
    return Container(
      height: 240,
      width: 170,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5)
      ),
      padding: const EdgeInsets.only(left: 5, right: 5, top: 5),
      child: Stack(
        children: [
          Container(
            width: 155,
            height: 160,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(imagen),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 170),
            child: Text(
              nombre,
              style: const TextStyle(
                color: ColorsSelect.btnBackgroundBo2,
                fontSize: 13,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 190),
            child: Text(
              descripcion,
              style: const TextStyle(
                color: ColorsSelect.btnTextBo1,
                fontSize: 10,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 210),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  '\$' + precio.toString(),
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                  )
                ),
                const SizedBox(width: 30),
                const Text(
                  '10% Desc.',
                  style: TextStyle(
                    color: ColorsSelect.paginatorNext,
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                  )
                )
              ],
            ),
          ), 
        ],
      ),
    );
  }
}