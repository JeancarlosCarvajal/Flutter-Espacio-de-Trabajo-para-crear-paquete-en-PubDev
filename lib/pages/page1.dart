import 'package:flutter/material.dart';
import 'package:crear_paquetes/helpers/helpers.dart';
import 'package:crear_paquetes/pages/page2.dart';

class Page1 extends StatelessWidget {
   
  const Page1({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text( 'Page1' ),
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.blue,
      body: Center(
         child: MaterialButton(
          color: Colors.white,
          onPressed: (){
            // opcion 1. cambiar de pagina
            // Navigator.push(context, MaterialPageRoute(builder: (_) => Page2()));
            // opcion 2. cambiar de pagina, sin retroceso
            // Navigator.pushNamed(context, 'page2'); 

            // usando la clase creada para la transicion
            RouteTransition(
              context: context,
              child: const Page2(),
              animation: AnimationType.fadeIn,
              duration: const Duration(milliseconds: 500),
              // replacement: true
            );


          },
          child: const Text( 'Route to Page2' ) 
        ),
      ),
    );
  }
}